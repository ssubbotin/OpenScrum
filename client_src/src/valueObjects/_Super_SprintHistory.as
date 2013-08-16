/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - SprintHistory.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.binding.utils.ChangeWatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_SprintHistory extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _SprintHistoryEntityMetadata;
    model_internal var _changedObjects:mx.collections.ArrayCollection = new ArrayCollection();

    public function getChangedObjects() : Array
    {
        _changedObjects.addItemAt(this,0);
        return _changedObjects.source;
    }

    public function clearChangedObjects() : void
    {
        _changedObjects.removeAll();
    }

    /**
     * properties
     */
    private var _internal_time : String;
    private var _internal_task_us_num : String;
    private var _internal_task_us_text : String;
    private var _internal_action : String;
    private var _internal_value : String;
    private var _internal_user : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_SprintHistory()
    {
        _model = new _SprintHistoryEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "time", model_internal::setterListenerTime));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "task_us_num", model_internal::setterListenerTask_us_num));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "task_us_text", model_internal::setterListenerTask_us_text));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "action", model_internal::setterListenerAction));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "value", model_internal::setterListenerValue));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "user", model_internal::setterListenerUser));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get time() : String
    {
        return _internal_time;
    }

    [Bindable(event="propertyChange")]
    public function get task_us_num() : String
    {
        return _internal_task_us_num;
    }

    [Bindable(event="propertyChange")]
    public function get task_us_text() : String
    {
        return _internal_task_us_text;
    }

    [Bindable(event="propertyChange")]
    public function get action() : String
    {
        return _internal_action;
    }

    [Bindable(event="propertyChange")]
    public function get value() : String
    {
        return _internal_value;
    }

    [Bindable(event="propertyChange")]
    public function get user() : String
    {
        return _internal_user;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set time(value:String) : void
    {
        var oldValue:String = _internal_time;
        if (oldValue !== value)
        {
            _internal_time = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "time", oldValue, _internal_time));
        }
    }

    public function set task_us_num(value:String) : void
    {
        var oldValue:String = _internal_task_us_num;
        if (oldValue !== value)
        {
            _internal_task_us_num = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "task_us_num", oldValue, _internal_task_us_num));
        }
    }

    public function set task_us_text(value:String) : void
    {
        var oldValue:String = _internal_task_us_text;
        if (oldValue !== value)
        {
            _internal_task_us_text = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "task_us_text", oldValue, _internal_task_us_text));
        }
    }

    public function set action(value:String) : void
    {
        var oldValue:String = _internal_action;
        if (oldValue !== value)
        {
            _internal_action = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "action", oldValue, _internal_action));
        }
    }

    public function set value(value:String) : void
    {
        var oldValue:String = _internal_value;
        if (oldValue !== value)
        {
            _internal_value = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "value", oldValue, _internal_value));
        }
    }

    public function set user(value:String) : void
    {
        var oldValue:String = _internal_user;
        if (oldValue !== value)
        {
            _internal_user = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "user", oldValue, _internal_user));
        }
    }

    /**
     * Data/source property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */

    model_internal function setterListenerTime(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTime();
    }

    model_internal function setterListenerTask_us_num(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTask_us_num();
    }

    model_internal function setterListenerTask_us_text(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTask_us_text();
    }

    model_internal function setterListenerAction(value:flash.events.Event):void
    {
        _model.invalidateDependentOnAction();
    }

    model_internal function setterListenerValue(value:flash.events.Event):void
    {
        _model.invalidateDependentOnValue();
    }

    model_internal function setterListenerUser(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUser();
    }


    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();
        var validationFailureMessages:Array = new Array();

        var propertyValidity:Boolean = true;
        if (!_model.timeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_timeValidationFailureMessages);
        }
        if (!_model.task_us_numIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_task_us_numValidationFailureMessages);
        }
        if (!_model.task_us_textIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_task_us_textValidationFailureMessages);
        }
        if (!_model.actionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_actionValidationFailureMessages);
        }
        if (!_model.valueIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_valueValidationFailureMessages);
        }
        if (!_model.userIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_userValidationFailureMessages);
        }

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
    }

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
        var oldValue:Boolean = model_internal::_isValid;
        if (oldValue !== value)
        {
            model_internal::_isValid = value;
            _model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }
    }

    /**
     * derived property getters
     */

    [Transient]
    [Bindable(event="propertyChange")]
    public function get _model() : _SprintHistoryEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _SprintHistoryEntityMetadata) : void
    {
        var oldValue : _SprintHistoryEntityMetadata = model_internal::_dminternal_model;
        if (oldValue !== value)
        {
            model_internal::_dminternal_model = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }
    }

    /**
     * methods
     */


    /**
     *  services
     */
    private var _managingService:com.adobe.fiber.services.IFiberManagingService;

    public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
    {
        _managingService = managingService;
    }

    model_internal function set invalidConstraints_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_invalidConstraints;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;
            _model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);
        }
    }

    model_internal function set validationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_validationFailureMessages;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;
            _model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);
        }
    }

    model_internal var _doValidationCacheOfTime : Array = null;
    model_internal var _doValidationLastValOfTime : String;

    model_internal function _doValidationForTime(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTime != null && model_internal::_doValidationLastValOfTime == value)
           return model_internal::_doValidationCacheOfTime ;

        _model.model_internal::_timeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTimeAvailable && _internal_time == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "time is required"));
        }

        model_internal::_doValidationCacheOfTime = validationFailures;
        model_internal::_doValidationLastValOfTime = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTask_us_num : Array = null;
    model_internal var _doValidationLastValOfTask_us_num : String;

    model_internal function _doValidationForTask_us_num(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTask_us_num != null && model_internal::_doValidationLastValOfTask_us_num == value)
           return model_internal::_doValidationCacheOfTask_us_num ;

        _model.model_internal::_task_us_numIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTask_us_numAvailable && _internal_task_us_num == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "task_us_num is required"));
        }

        model_internal::_doValidationCacheOfTask_us_num = validationFailures;
        model_internal::_doValidationLastValOfTask_us_num = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTask_us_text : Array = null;
    model_internal var _doValidationLastValOfTask_us_text : String;

    model_internal function _doValidationForTask_us_text(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTask_us_text != null && model_internal::_doValidationLastValOfTask_us_text == value)
           return model_internal::_doValidationCacheOfTask_us_text ;

        _model.model_internal::_task_us_textIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTask_us_textAvailable && _internal_task_us_text == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "task_us_text is required"));
        }

        model_internal::_doValidationCacheOfTask_us_text = validationFailures;
        model_internal::_doValidationLastValOfTask_us_text = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfAction : Array = null;
    model_internal var _doValidationLastValOfAction : String;

    model_internal function _doValidationForAction(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfAction != null && model_internal::_doValidationLastValOfAction == value)
           return model_internal::_doValidationCacheOfAction ;

        _model.model_internal::_actionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isActionAvailable && _internal_action == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "action is required"));
        }

        model_internal::_doValidationCacheOfAction = validationFailures;
        model_internal::_doValidationLastValOfAction = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfValue : Array = null;
    model_internal var _doValidationLastValOfValue : String;

    model_internal function _doValidationForValue(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfValue != null && model_internal::_doValidationLastValOfValue == value)
           return model_internal::_doValidationCacheOfValue ;

        _model.model_internal::_valueIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isValueAvailable && _internal_value == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "value is required"));
        }

        model_internal::_doValidationCacheOfValue = validationFailures;
        model_internal::_doValidationLastValOfValue = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfUser : Array = null;
    model_internal var _doValidationLastValOfUser : String;

    model_internal function _doValidationForUser(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfUser != null && model_internal::_doValidationLastValOfUser == value)
           return model_internal::_doValidationCacheOfUser ;

        _model.model_internal::_userIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isUserAvailable && _internal_user == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "user is required"));
        }

        model_internal::_doValidationCacheOfUser = validationFailures;
        model_internal::_doValidationLastValOfUser = value;

        return validationFailures;
    }
    

}

}
