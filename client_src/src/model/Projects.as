package model
{
	public class Projects
	{
		private var projects:Array; 
		
		public function Projects() {
			projects = new Array();
			load();
		}
		
		public function load() {
			
		}
		
		public function refresh() {
			for(var project:Project in projects) {
				project.refresh();
			}
		}
	
	}
}