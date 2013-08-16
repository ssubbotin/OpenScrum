import os
import datetime
import webapp2
import logging

from google.appengine.api import users
from google.appengine.api import memcache
from google.appengine.ext import db
from google.appengine.ext.webapp import template
from google.appengine.api import taskqueue

class Sprint(db.Model):
  name = db.StringProperty(required=True)
  description = db.StringProperty(required=False)
  active = db.BooleanProperty(default=True)
  created = db.DateTimeProperty(auto_now_add=True)
  updated = db.DateTimeProperty(auto_now=True)
  start_date = db.DateTimeProperty(required=False)
  end_date = db.DateTimeProperty(required=False)
  published = db.BooleanProperty(default=False)
  version=db.IntegerProperty(required=True, default=0)

  def get_version(self):
    key = str(self.key())
    v = memcache.get(key)
    if v is None:
        v = self.version
        memcache.add(key, v)
    return v
    
  def increment_version(self):
    key = str(self.key())
    v = self.get_version()
    memcache.set(key, v + 1)
    self.version = v + 1
    self.put()
    return v + 1 

  @staticmethod
  def get_current_user_sprints():
    return Sprint.get_user_sprints(users.GetCurrentUser())

  @staticmethod
  def get_user_sprints(user):
    if not user: return []
    memberships = db.Query(SprintTeamMember).filter('user =', user)
    return [m.sprint for m in memberships]

  @staticmethod
  def get_published():
    published = db.Query(Sprint).filter('published =', True)
    return list(published)

  @staticmethod
  def get_all_sprints():
    all_sprints = db.Query(Sprint)
    return list(all_sprints)

  def current_user_has_access(self):
    return self.user_has_access(users.GetCurrentUser())

  def user_has_access(self, user):
    if not user: return False
    query = db.Query(SprintTeamMember)
    query.filter('sprint =', self)
    query.filter('user =', user)
    return query.get()
  

class SprintTeamMember(db.Model):
  sprint = db.Reference(Sprint, required=True)
  user = db.UserProperty(required=True)
  sprint_admin = db.BooleanProperty(required=False, default=False)
  scrum_master = db.BooleanProperty(default=False)
  product_owner = db.BooleanProperty(default=False)
  active = db.BooleanProperty(default=True)
  pref_name = db.TextProperty(required=True, default='NoName')
  pref_color = db.IntegerProperty(required=True, default=0)


class Task(db.Model):
  sprint = db.Reference(Sprint, required=True)
  us_num = db.TextProperty(required=False, default='#0')
  us_text = db.TextProperty(required=False, default='double click to change text')
  us_time = db.TextProperty(required=True, default='0')
  us_priority = db.IntegerProperty(required=True, default=0)
  created = db.DateTimeProperty(auto_now_add=True)
  updated = db.DateTimeProperty(auto_now=True)
  completed = db.DateTimeProperty(required=False)
  pos_quad = db.IntegerProperty(required=True, default=1)
  pos_x = db.IntegerProperty(required=True, default=0)
  pos_y = db.IntegerProperty(required=True, default=0)
  color = db.IntegerProperty(required=True, default=0xFFF58A)
  deleted = db.BooleanProperty(required=False, default=False)
  inwork_moved_time = db.DateTimeProperty(required=False)
  inwork_worked_days = db.FloatProperty(required=False, default = 0.)

  @staticmethod
  def create_task(sprint, pos_quad, color, pos_x, pos_y, us_num, us_time, us_text):
    task = Task(sprint=sprint, pos_quad=pos_quad, color=color, pos_x=pos_x, pos_y=pos_y, us_num=us_num, us_time=us_time, us_text=us_text)

    # if task created in in work state
    if pos_quad in [2,5,8]:
        task.inwork_moved_time = datetime.datetime.now()  
    
    task.put()
    task.add_creation_history()
    return task

  @staticmethod
  def create_task_short(sprint, us_text):
    task = Task(us_text=us_text, sprint=sprint)
    task.put()
    task.add_creation_history()
    return task
    
  def add_creation_history(self):
    SprintHistory.add(self, 'add_task',       "")
    SprintHistory.add(self, 'change_color',   str(self.color))
    SprintHistory.add(self, 'move_quad',      str(self.pos_quad))
    SprintHistory.add(self, 'change_us_num',  self.us_num)
    SprintHistory.add(self, 'change_us_text', self.us_text)
    SprintHistory.add(self, 'change_us_time', self.us_time)
    SprintHistory.add(self, 'move_xy',        str(self.pos_x) + "," + str(self.pos_y))
    self.sprint.increment_version()
    
  def set_us_num(self, num):
    if self.us_num != num:
      self.us_num = num
      SprintHistory.add(self, 'change_us_num', num)

  def set_us_text(self, text):
    if self.us_text != text:
      self.us_text = text
      SprintHistory.add(self, 'change_us_text', text)
  
  def set_us_time(self, time):
    if self.us_time != time:
      self.us_time = time
      SprintHistory.add(self, 'change_us_time', time)
      
  def mark_deleted(self):
    self.deleted = True;
    SprintHistory.add(self, 'del_task', "")
  
  def set_xy(self, x, y):
    if self.pos_x != x or self.pos_y != y:
      self.pos_x = x
      self.pos_y = y
      SprintHistory.add(self, 'move_xy', str(x) + "," + str(y))

  def set_quad(self, quad):
    if self.pos_quad != quad:
      
      # if task moved to in work
      if quad in [2,5,8] and not (self.pos_quad in [2,5,8]):
        self.inwork_moved_time = datetime.datetime.now()  
        
      # if task moved from in work
      if self.pos_quad in [2,5,8] and not (quad in [2,5,8]):
        self.inwork_worked_days = self.calculate_worked_days() 
        
      self.pos_quad = quad
      SprintHistory.add(self, 'move_quad', str(quad))
    
  def add_assignee(self, name, color, reviewer):
    TaskAssignedTeamMember(task=self, pref_name=name, pref_color=color, reviewer=reviewer).put()
    if reviewer:
      SprintHistory.add(self, 'add_reviewer', name)
    else:
      SprintHistory.add(self, 'add_assignee', name)

  def del_assignee(self, name, color):
    for person in self.taskassignedteammember_set:
      if person.pref_name==name and person.pref_color==color:
        reviewer = person.reviewer
        person.delete()
        if reviewer:
          SprintHistory.add(self, 'del_reviewer', name)
        else:
          SprintHistory.add(self, 'del_assignee', name)

  def calculate_worked_days(self):
    result = self.inwork_worked_days
    if self.pos_quad in [2,5,8] and self.inwork_moved_time:
      delta = datetime.datetime.now() - self.inwork_moved_time
      delta_hrs = delta.days*24. + delta.seconds/3600. 
      
      mod = int(delta_hrs) % 24
      result += int(delta_hrs) / 24
      if mod>=8:
        result += 1.
      else:
        result += mod / 8.  
    
    return result


class TaskAssignedTeamMember(db.Model):
  task = db.Reference(Task, required=True)
  user = db.Reference(SprintTeamMember, required=False)
  pref_name = db.TextProperty(required=True, default='NoName')
  pref_color = db.IntegerProperty(required=True, default=0)
  reviewer = db.BooleanProperty(default=False);


class SprintHistory(db.Model):
  sprint = db.Reference(Sprint, required=True)
  user = db.UserProperty(required=True)
  time = db.DateTimeProperty(auto_now=True)
  action = db.StringProperty(choices=('move_xy', 'move_quad', \
                                      'del_task', 'del_assignee', 'del_reviewer', \
                                      'add_task', 'add_assignee', 'add_reviewer', \
                                      'change_us_num', 'change_us_text', 'change_us_time', 'change_us_priority', \
                                      'change_color'), \
                             required=True)
  task = db.Reference(Task)
  value = db.TextProperty(required=False)
  version = db.IntegerProperty(required=True, default=0)

  @staticmethod
  def add(task, action, value):
    sprint = task.sprint
    user = users.GetCurrentUser()
    version = sprint.get_version()
    return SprintHistory(sprint=sprint, user=user, action=action, task=task, value=value, version=version).put()


class Burndown(db.Model):
  sprint = db.Reference(Sprint, required=True)
  version = db.IntegerProperty(required=True, default=0)
  calculated = db.DateTimeProperty(auto_now=True)
  initial_value = db.TextProperty(required=True, default='0')
  valid = db.BooleanProperty(required=True, default=False)

  @staticmethod
  def find(sprint):
    query = db.Query(Burndown)
    query.filter('sprint =', sprint)
    return query.get()

class BurndownData(db.Model):
  burndown = db.Reference(Burndown, required=True)
  date = db.DateTimeProperty(required=True)
  worked_value = db.TextProperty(required=True, default='0')
  added_value = db.TextProperty(required=True, default='0')
  left_value = db.TextProperty(required=True, default='0')
  

class BaseRequestHandler(webapp2.RequestHandler):
  """Supplies a common template generation function.

  When you call generate(), we augment the template variables supplied with
  the current user in the 'user' variable and the current webapp request
  in the 'request' variable.
  """
  def generate(self, template_name, template_values={}):
    values = {
      'request': self.request,
      'user': users.GetCurrentUser(),
      'login_url': users.CreateLoginURL(self.request.uri),
      'logout_url': users.CreateLogoutURL(self.request.uri),
      'debug': self.request.get('deb'),
      'application_name': 'OpenScrum',
    }
    values.update(template_values)
    directory = os.path.dirname(__file__)
    path = os.path.join(directory, os.path.join('templates', template_name))
    self.response.out.write(template.render(path, values, debug=True))


class InboxPage(BaseRequestHandler):
  """Lists the sprints "inbox" for the current user."""
  def get(self):
    show_archive = self.request.get('archive')

    pub_sprints = Sprint.get_published()
    if not show_archive:
      non_archived = []
      for sprint in pub_sprints:
        if sprint.active:
          non_archived.append(sprint)
      pub_sprints = non_archived

    user = users.get_current_user()
    if not user:
      self.generate('nouser_index.html', {
        'pub_lists': pub_sprints,
        'archive': show_archive,
      })
      return

    sprints = Sprint.get_current_user_sprints()
    if not show_archive:
      non_archived = []
      for sprint in sprints:
        if sprint.active:
          non_archived.append(sprint)
      sprints = non_archived
    
    self.generate('index.html', {
      'lists': sprints,
      'pub_lists': pub_sprints,
      'archive': show_archive,
    })


class TryAuthAction(BaseRequestHandler):
  def get(self):
    p_url = self.request.get('openid_identifier')
    self.redirect(users.create_login_url(federated_identity=p_url, dest_url=self.request.get('next')))


class UserProfileAction(BaseRequestHandler):
  def get(self):
    self.generate('user_profile.html', {
      'user': users.get_current_user()
    })


class GetSprintHistory(BaseRequestHandler):
  def get(self):
    sprint = Sprint.get(self.request.get('sprint_id'))
    user_dont_have_access = not sprint.current_user_has_access()
    if not sprint or (user_dont_have_access and sprint.published==False):
      self.error(403)
      return

    history = db.Query(SprintHistory).filter('sprint =', sprint).filter('action !=', 'move_xy')
    histList = list(history)
    histList.sort(key=lambda item:item.time)

    self.generate('history.xml', {
      'history': histList
    })

class GetAssigneeHistory(BaseRequestHandler):
  def get(self):
    sprint = Sprint.get(self.request.get('sprint_id'))
    user_dont_have_access = not sprint.current_user_has_access()
    if not sprint or (user_dont_have_access and sprint.published==False):
      self.error(403)
      return

    history = db.Query(SprintHistory).filter('sprint =', sprint).filter('action =', 'move_quad')
    histList = list(history)
    histList.sort(key=lambda item:item.time)

    self.generate('assignee_history.xml', {
      'history': histList
    })

class GetTaskHistory(BaseRequestHandler):
  def get(self):
    task = Task.get(self.request.get('task_id'))
    if not task:
      self.error(403)
      return    
    
    sprint = task.sprint
    user_dont_have_access = not sprint.current_user_has_access()
    if not sprint or (user_dont_have_access and sprint.published==False):
      self.error(403)
      return

    history = db.Query(SprintHistory).filter('task =', task).filter('action !=', 'move_xy')
    histList = list(history)
    histList.sort(key=lambda item:item.time)

    self.generate('history.xml', {
      'history': histList
    })


class SprintPage(BaseRequestHandler):
  """Displays a single sprint based on ID.

  If the task list is not published, we give a 403 unless the user is a
  collaborator on the list. If it is published, but the user is not a
  collaborator, we show the more limited HTML view of the task list rather
  than the interactive AJAXy edit page.
  """

  # The different task list output types we support: content types and
  # template file extensions
  _OUTPUT_TYPES = {
    'default': ['text/html', 'html'],
    'html': ['text/html', 'html'],
    'atom': ['application/atom+xml', 'xml'],
  }

  def get(self):
    sprint = Sprint.get(self.request.get('id'))
    if not sprint:
      self.error(403)
      return

    # Choose a template based on the output type
    output_name = self.request.get('output')
    output_name_list = SprintPage._OUTPUT_TYPES.keys()
    if output_name not in output_name_list:
      output_name = output_name_list[0]
    output_type = SprintPage._OUTPUT_TYPES[output_name]

    # Validate this user has access to this task list. If not, they can
    # access the html view of this list only if it is published.
    if not sprint.current_user_has_access():
      if sprint.published:
        if output_name == 'default':
          output_name = 'html'
          output_type = SprintPage._OUTPUT_TYPES[output_name]
      else:
        user = users.GetCurrentUser()
        if not user:
          self.redirect(users.CreateLoginURL(self.request.uri))
        else:
          self.error(403)
        return

    tasks = sprint.task_set.order('-us_priority').order('created')
    tasks = list(tasks) 

    # Get the last updated date from the list of tasks
    if len(tasks) > 0:
      updated = max([task.updated for task in tasks])
    else:
      updated = None

    self.response.headers['Content-Type'] = output_type[0]
    self.generate('sprint_' + output_name + '.' + output_type[1], {
      'sprint': sprint,
      'tasks': tasks,
      'updated': updated,
    })


class CreateSprintAction(BaseRequestHandler):
  """Creates a new sprint for the current user."""
  def post(self):
    user = users.GetCurrentUser()
    name = self.request.get('name')
    if not user or not name:
      self.error(403)
      return

    sprint = Sprint(name=name)
    sprint.put()
    sprint_member = SprintTeamMember(sprint=sprint, user=user, scrum_master=True, product_owner=True)
    sprint_member.put()

    if self.request.get('next'):
      self.redirect(self.request.get('next'))
    else:
      self.redirect('/sprint?id=' + str(sprint.key()))


class EditTaskAction(BaseRequestHandler):
  """Edits a specific task, changing its text.

  We also updated the last modified date of the task list so that the
  task list inbox shows the correct last modified date for the list.

  This can be used in an AJAX way or in a form. In a form, you should
  supply a "next" argument that denotes the URL we should redirect to
  after the edit is complete.
  """
  def post(self):
    us_text = self.request.get('us_text')
    if not us_text:
      self.error(403)
      return

    # Get the existing task that we are editing
    task_key = self.request.get('task')
    if task_key:
      task = Task.get(task_key)
      if not task:
        self.error(403)
        return
      sprint = task.sprint
    else:
      task = None
      sprint = Sprint.get(self.request.get('list'))

    # Validate this user has access to this task list
    if not sprint or not sprint.current_user_has_access():
      self.error(403)
      return

    # Create the task
    if task:
      task.set_us_text(db.Text(us_text))
      task.put()
      sprint.increment_version()
    else:
      task = Task.create_task_short(us_text=db.Text(us_text), sprint=sprint)

    # Update the task list so it's updated date is updated. Saving it is all
    # we need to do since that field has auto_now=True
    sprint.put()

    # Only redirect if "next" is given
    next_url = self.request.get('next')
    if next_url:
      self.redirect(next)
    else:
      self.response.headers['Content-Type'] = 'text/plain'
      self.response.out.write(str(task.key()))


class AddMemberAction(BaseRequestHandler):
  """Adds a new User to a Sprint ACL."""
  def post(self):
    sprint = Sprint.get(self.request.get('sprint'))
    email = self.request.get('email')
    federated = self.request.get('federated')
    if not sprint or not email:
      self.error(403)
      return

    # Validate this user has access to this task list
    if not sprint.current_user_has_access():
      self.error(403)
      return

    # Don't duplicate entries in the permissions datastore
    if(federated):
      user = users.User(email=email, federated_provider=self.request.get('fed_prov'), federated_identity=self.request.get('fed_id'))
    else:
      user = users.User(email)
        
    if not sprint.user_has_access(user):
      member = SprintTeamMember(user=user, sprint=sprint)
      member.put()
    aUrl = self.request.get('next')
    self.redirect(aUrl)
    self.response.headers[ 'Location' ] = str(aUrl)

  def get(self):
    sprint = Sprint.get(self.request.get('sprint'))
    email = self.request.get('email')
    federated = self.request.get('federated')
    if not sprint or not email:
      self.error(403)
      return

    # Validate this user has access to this task list
    if not sprint.current_user_has_access():
      self.error(403)
      return

    # Don't duplicate entries in the permissions datastore
    if(federated):
      user = users.User(email=email, federated_provider=self.request.get('fed_prov'), federated_identity=self.request.get('fed_id'))
    else:
      user = users.User(email)
        
    if not sprint.user_has_access(user):
      member = SprintTeamMember(user=user, sprint=sprint)
      member.put()
    aUrl = self.request.get('next')
    self.redirect(aUrl)
    self.response.headers[ 'Location' ] = str(aUrl)

class InboxAction(BaseRequestHandler):
  """Performs an action in the user's TaskList inbox.

  We support Archive, Unarchive, and Delete actions. The action is specified
  by the "action" argument in the POST. The names are capitalized because
  they correspond to the text in the buttons in the form, which all have the
  name "action".
  """
  def post(self):
    action = self.request.get('action')
    lists = self.request.get_all('list')
    if not action in ['Archive', 'Unarchive']:
      self.error(403)
      return

    for key in lists:
      sprint = Sprint.get(key)

      # Validate this user has access to this task list
      if not sprint or not sprint.current_user_has_access():
        self.error(403)
        return

      if action == 'Archive':
        sprint.active = False
        sprint.put()
      elif action == 'Unarchive':
        sprint.active = True
        sprint.put()

    self.redirect(self.request.get('next'))


class TaskListAction(BaseRequestHandler):
  """Performs an action on a specific task list.

  The actions we support are "Archive Completed" and "Delete", as specified
  by the "action" argument in the POST.
  """
  def post(self):
    action = self.request.get('action')
    tasks = self.request.get('task', allow_multiple=True)
    if not action in ['Archive Completed', 'Delete']:
      self.error(403)
      return

    for key in tasks:
      task = Task.get(key)

      # Validate this user has access to this task list
      if not task or not task.sprint.current_user_has_access():
        self.error(403)
        return

      if action == 'Delete':
        task.mark_deleted()
        task.put()
      else:
        if task.completed:
          task.priority = 0
          task.put()

    self.redirect(self.request.get('next'))


class SetTaskCompletedAction(BaseRequestHandler):
  """Sets a given task to be completed at the current time."""
  def post(self):
    task = Task.get(self.request.get('id'))
    if not task or not task.sprint.current_user_has_access():
      self.error(403)
      return

    completed = self.request.get('completed')
    if completed:
      task.completed = datetime.datetime.now()
    else:
      task.completed = None
    task.put()


class SetTaskPositionsAction(BaseRequestHandler):
  """Orders the tasks in a task lists.

  The input to this handler is a comma-separated list of task keys in the
  "tasks" argument to the post. We assign priorities to the given tasks
  based on that order (e.g., 1 through N for N tasks).
  """
  def post(self):
    keys = self.request.get("tasks").split(",")
    if not keys:
      self.error(403)
      return
    num_keys = len(keys)
    for i, key in enumerate(keys):
      key = keys[i]
      task = Task.get(key)
      if not task or not task.sprint.current_user_has_access():
        self.error(403)
        return
      task.us_priority = num_keys - i - 1
      task.put()


class PublishTaskListAction(BaseRequestHandler):
  """Publishes a given sprint, which makes it viewable by everybody."""
  def post(self):
    sprint = Sprint.get(self.request.get('id'))
    if not sprint or not sprint.current_user_has_access():
      self.error(403)
      return

    sprint.published = bool(self.request.get('publish'))
    sprint.put()


class GetTasksPHPAction(BaseRequestHandler):
  def get(self):
    sprint = Sprint.get(self.request.get('sprint_id'))
    user_dont_have_access = not sprint.current_user_has_access()
    
    if not sprint or (user_dont_have_access and sprint.published==False):
      self.error(403)
      return
    
    self.generate('gettasks.xml', {
      'tasks': sprint.task_set,
      'sprint': sprint.name,
      'read_only': user_dont_have_access,
      'version': sprint.get_version(),
    })
    
    
class GetTasksIncremental(BaseRequestHandler):
  def get(self):
    sprint = Sprint.get(self.request.get('sprint_id'))
    user_dont_have_access = not sprint.current_user_has_access()
    
    if not sprint or (user_dont_have_access and sprint.published==False):
      self.error(403)
      return
    
    ver = int(self.request.get('ver'))
    history = sprint.sprinthistory_set.filter('version >=', ver).order('version')
    self.generate('incremental.xml', {
      'history': history
    })
    

class GetVersion(BaseRequestHandler):
  def get(self):
    sprint = Sprint.get(self.request.get('sprint_id'))
    user_dont_have_access = not sprint.current_user_has_access()
    
    if not sprint or (user_dont_have_access and sprint.published==False):
      self.error(403)
      return
    
    self.response.out.write(str(sprint.get_version()))


class MoveTaskPHPAction(BaseRequestHandler):
  def post(self):
    task = Task.get(self.request.get('id'))
    if not task or not task.sprint.current_user_has_access():
      self.error(403)
      return
    
    task.set_xy(int(self.request.get('x')), int(self.request.get('y')))
    task.set_quad(int(self.request.get('quad')))
    task.put()
    task.sprint.increment_version()


class AddTaskPHPAction(BaseRequestHandler):
  def post(self):
    sprint = Sprint.get(self.request.get('sprint_id'))
    if not sprint or not sprint.current_user_has_access():
      self.error(403)
      return

    pos_quad = int(self.request.get('quad'))
    color    = int(self.request.get('color'))
    pos_x    = int(float(self.request.get('x')))
    pos_y    = int(float(self.request.get('y')))
    us_num   = self.request.get('us_num')
    us_time  = self.request.get('us_time')
    us_text  = self.request.get('us_text')
    
    task = Task.create_task(sprint=sprint, pos_quad=pos_quad, color=color, pos_x=pos_x, pos_y=pos_y, us_num=us_num, us_time=us_time, us_text=us_text)

    self.response.out.write(str(task.key()))


class ChangeTaskPHPAction(BaseRequestHandler):
  def post(self):
    task = Task.get(self.request.get('id'))
    if not task or not task.sprint.current_user_has_access():
      self.error(403)
      return

    task.set_us_num(self.request.get('us_num'))
    task.set_us_time(self.request.get('us_time'))
    task.set_us_text(self.request.get('us_text'))
    task.put()
    task.sprint.increment_version()


class DeleteTaskPHPAction(BaseRequestHandler):
  def post(self):
    task = Task.get(self.request.get('id'))
    if not task or not task.sprint.current_user_has_access():
      self.error(403)
      return

    for person in task.taskassignedteammember_set:
      person.delete()
    
    task.mark_deleted()
    task.put()
    task.sprint.increment_version()


class AddPersonPHPAction(BaseRequestHandler):
  def post(self):
    task = Task.get(self.request.get('id'))
    if not task or not task.sprint.current_user_has_access():
      self.error(403)
      return

    name  = self.request.get('name')
    color = int(self.request.get('color'))
    # logging.info('reviewer is %s', self.request.get('reviewer'))
    reviewer = (self.request.get('reviewer') == 'true')
    # logging.info(reviewer)

    task.add_assignee(name=name, color=color, reviewer=reviewer)
    task.sprint.increment_version()

    
class DeletePersonPHPAction(BaseRequestHandler):
  def post(self):
    task = Task.get(self.request.get('id'))
    if not task or not task.sprint.current_user_has_access():
      self.error(403)
      return

    name  = self.request.get('name')
    color = int(self.request.get('color'))

    task.del_assignee(name=name, color=color)
    task.sprint.increment_version()


class GetBurndown(BaseRequestHandler):
  def get(self):
    sprint = Sprint.get(self.request.get('sprint_id'))
    user_dont_have_access = not sprint.current_user_has_access()
    if not sprint or (user_dont_have_access and sprint.published==False):
      self.error(403)
      return
    
    burndown = Burndown.find(sprint)
    data = burndown.burndowndata_set.order('date')
    
    self.generate('burndown.xml', {
      'data': data
    })   

     
class BurndownDataItem():
  def copy(self):
    bdi = BurndownDataItem()
    bdi.date = self.date
    bdi.above = self.above
    bdi.below = self.below
    return bdi

def safeFloatOrZero(string):
  result = 0.
  try:
    result = float(string) 
  except:
    return 0.
  return result

def updateForSprint(burndown, sprint):
    data = []
    taskHelper = {}
    lastBelow = 0

    #calc initial values
    bdi = BurndownDataItem()
    bdi.date = datetime.datetime.now()
    bdi.above = 0
    bdi.below = 0
    for task in sprint.task_set:
      if task.color != 0xb7fa57:  
        taskHelper[task.key()] = task.us_time;
        if not task.deleted and task.pos_quad in [1,4,7,2,5,8]:
          bdi.above += safeFloatOrZero(task.us_time)
    data.append(bdi)
    bdi = bdi.copy()

    # do the trace back analysis
    hist = db.Query(SprintHistory).filter('sprint =', sprint).filter('action !=', 'move_xy')
    histList = list(hist)
    histList.sort(key=lambda item:item.time, reverse=True)
    
    for item in histList:
      delta = bdi.date - item.time
      if delta.days>0:
        bdi.date = item.time
        data.insert(0, bdi)
        bdi = bdi.copy()
        lastBelow = bdi.below
      if item.task.color == 0xb7fa57:
        continue  
      if item.action == 'change_us_time':
        x = taskHelper[item.task.key()] 
        y = item.value
        y = y.replace(',','.')
        if x != y:
          taskHelper[item.task.key()] = y
          if safeFloatOrZero(y)>safeFloatOrZero(x):
            bdi.above += safeFloatOrZero(y)-safeFloatOrZero(x)
          else:
            bdi.below += safeFloatOrZero(x)-safeFloatOrZero(y)
      if item.action == 'move_quad':
        if int(item.value) in [3,6,9,10,11,12]:
          bdi.above += safeFloatOrZero(taskHelper[item.task.key()])
      if item.action == 'del_task':
        bdi.above += safeFloatOrZero(taskHelper[item.task.key()])
    
    # normalize data
    for bdi in data:
      bdi.above -= lastBelow
      bdi.below -= lastBelow
      
    # remove old burndown data
    for bdData in burndown.burndowndata_set:
      bdData.delete();
      
    # fill new burndown data 
    for bdi in data:
      worked = lastBelow-bdi.above
      #added = -bdi.below
      #left = bdi.above-bdi.below
      added = bdi.below
      left = bdi.above
      bdData = BurndownData(burndown=burndown, date=bdi.date, worked_value=str(worked), added_value=str(added), left_value=str(left))
      bdData.put()
      
    burndown.initial_value = str(lastBelow)
    burndown.version = sprint.get_version()
    burndown.valid = True
    burndown.put()


class UpdateBurndownsWorker(BaseRequestHandler):
  def post(self):
    sprint = Sprint.get(self.request.get('sprint'))
    bd = Burndown.find(sprint)
    updateForSprint(bd, sprint)

     
class UpdateBurndowns(BaseRequestHandler):
  def get(self):
    for s in Sprint.get_all_sprints():
      # find Burndown for sprint 
      found = Burndown.find(s)
      if(found):
        # compare version
        vS = s.get_version()
        vBd = found.version
        if((vBd < vS) or (not found.valid)):
          found.valid = False
          found.put()
          taskqueue.add(url='/cron/burndownworker', params={'sprint': str(s.key())})
      else:
        bd = Burndown(sprint=s, valid=False)
        bd.put()
        taskqueue.add(url='/cron/burndownworker', params={'sprint': str(s.key())})


app = webapp2.WSGIApplication([
    ('/', InboxPage),
    ('/sprint', SprintPage),
    ('/edittask.do', EditTaskAction),
    ('/createsprint.do', CreateSprintAction),
    ('/addmember.do', AddMemberAction),
    ('/inboxaction.do', InboxAction),
    ('/tasklist.do', TaskListAction),
    ('/publishtasklist.do', PublishTaskListAction),
    ('/settaskcompleted.do', SetTaskCompletedAction),
    ('/settaskpositions.do', SetTaskPositionsAction),
    ('/gettasks.php', GetTasksPHPAction),
    ('/movetask.php', MoveTaskPHPAction),
    ('/addtask.php', AddTaskPHPAction),
    ('/changetask.php', ChangeTaskPHPAction),
    ('/deletetask.php', DeleteTaskPHPAction),
    ('/addperson.php', AddPersonPHPAction),
    ('/deleteperson.php', DeletePersonPHPAction),
    ('/auth.do', TryAuthAction),
    ('/profile.do', UserProfileAction),
    ('/getsprinthistory', GetSprintHistory),
    ('/gettaskhistory', GetTaskHistory),
    ('/getassigneehistory', GetAssigneeHistory),
    ('/getburndown', GetBurndown),
    ('/getversion', GetVersion),
    ('/gettasksinc', GetTasksIncremental),
    ('/cron/burndown', UpdateBurndowns),
    ('/cron/burndownworker', UpdateBurndownsWorker),
  ], debug=True)
