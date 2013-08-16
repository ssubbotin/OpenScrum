/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Burndown.as.
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
public class _Super_Burndown extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _BurndownEntityMetadata;
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
    private var _internal_date : String;
    private var _internal_above : String;
    private var _internal_below : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Burndown()
    {
        _model = new _BurndownEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "date", model_internal::setterListenerDate));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "above", model_internal::setterListenerAbove));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "below", model_internal::setterListenerBelow));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get date() : String
    {
        return _internal_date;
    }

    [Bindable(event="propertyChange")]
    public function get above() : String
    {
        return _internal_above;
    }

    [Bindable(event="propertyChange")]
    public function get below() : String
    {
        return _internal_below;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set date(value:String) : void
    {
        var oldValue:String = _internal_date;
        if (oldValue !== value)
        {
            _internal_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "date", oldValue, _internal_date));
        }
    }

    public function set above(value:String) : void
    {
        var oldValue:String = _internal_above;
        if (oldValue !== value)
        {
            _internal_above = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "above", oldValue, _internal_above));
        }
    }

    public function set below(value:String) : void
    {
        var oldValue:String = _internal_below;
        if (oldValue !== value)
        {
            _internal_below = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "below", oldValue, _internal_below));
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

    model_internal function setterListenerDate(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDate();
    }

    model_internal function setterListenerAbove(value:flash.events.Event):void
    {
        _model.invalidateDependentOnAbove();
    }

    model_internal function setterListenerBelow(value:flash.events.Event):void
    {
        _model.invalidateDependentOnBelow();
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
        if (!_model.dateIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_dateValidationFailureMessages);
        }
        if (!_model.aboveIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_aboveValidationFailureMessages);
        }
        if (!_model.belowIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_belowValidationFailureMessages);
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
    public function get _model() : _BurndownEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _BurndownEntityMetadata) : void
    {
        var oldValue : _BurndownEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfDate : Array = null;
    model_internal var _doValidationLastValOfDate : String;

    model_internal function _doValidationForDate(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDate != null && model_internal::_doValidationLastValOfDate == value)
           return model_internal::_doValidationCacheOfDate ;

        _model.model_internal::_dateIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDateAvailable && _internal_date == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "date is required"));
        }

        model_internal::_doValidationCacheOfDate = validationFailures;
        model_internal::_doValidationLastValOfDate = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfAbove : Array = null;
    model_internal var _doValidationLastValOfAbove : String;

    model_internal function _doValidationForAbove(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfAbove != null && model_internal::_doValidationLastValOfAbove == value)
           return model_internal::_doValidationCacheOfAbove ;

        _model.model_internal::_aboveIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isAboveAvailable && _internal_above == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "above is required"));
        }

        model_internal::_doValidationCacheOfAbove = validationFailures;
        model_internal::_doValidationLastValOfAbove = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfBelow : Array = null;
    model_internal var _doValidationLastValOfBelow : String;

    model_internal function _doValidationForBelow(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfBelow != null && model_internal::_doValidationLastValOfBelow == value)
           return model_internal::_doValidationCacheOfBelow ;

        _model.model_internal::_belowIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isBelowAvailable && _internal_below == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "below is required"));
        }

        model_internal::_doValidationCacheOfBelow = validationFailures;
        model_internal::_doValidationLastValOfBelow = value;

        return validationFailures;
    }
    

}

}
