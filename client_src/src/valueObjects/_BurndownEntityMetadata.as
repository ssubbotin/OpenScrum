
/**
 * This is a generated class and is not intended for modification.  
 */
package valueObjects
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.styles.StyleValidator;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _BurndownEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("date", "above", "below");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("date", "above", "below");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("date", "above", "below");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("date", "above", "below");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("date", "above", "below");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Burndown";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _dateIsValid:Boolean;
    model_internal var _dateValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _dateIsValidCacheInitialized:Boolean = false;
    model_internal var _dateValidationFailureMessages:Array;
    
    model_internal var _aboveIsValid:Boolean;
    model_internal var _aboveValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _aboveIsValidCacheInitialized:Boolean = false;
    model_internal var _aboveValidationFailureMessages:Array;
    
    model_internal var _belowIsValid:Boolean;
    model_internal var _belowValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _belowIsValidCacheInitialized:Boolean = false;
    model_internal var _belowValidationFailureMessages:Array;

    model_internal var _instance:_Super_Burndown;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _BurndownEntityMetadata(value : _Super_Burndown)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["date"] = new Array();
            model_internal::dependentsOnMap["above"] = new Array();
            model_internal::dependentsOnMap["below"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["date"] = "String";
        model_internal::propertyTypeMap["above"] = "String";
        model_internal::propertyTypeMap["below"] = "String";

        model_internal::_instance = value;
        model_internal::_dateValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDate);
        model_internal::_dateValidator.required = true;
        model_internal::_dateValidator.requiredFieldError = "date is required";
        //model_internal::_dateValidator.source = model_internal::_instance;
        //model_internal::_dateValidator.property = "date";
        model_internal::_aboveValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAbove);
        model_internal::_aboveValidator.required = true;
        model_internal::_aboveValidator.requiredFieldError = "above is required";
        //model_internal::_aboveValidator.source = model_internal::_instance;
        //model_internal::_aboveValidator.property = "above";
        model_internal::_belowValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForBelow);
        model_internal::_belowValidator.required = true;
        model_internal::_belowValidator.requiredFieldError = "below is required";
        //model_internal::_belowValidator.source = model_internal::_instance;
        //model_internal::_belowValidator.property = "below";
    }

    override public function getEntityName():String
    {
        return model_internal::entityName;
    }

    override public function getProperties():Array
    {
        return model_internal::allProperties;
    }

    override public function getAssociationProperties():Array
    {
        return model_internal::allAssociationProperties;
    }

    override public function getRequiredProperties():Array
    {
         return model_internal::allRequiredProperties;   
    }

    override public function getDataProperties():Array
    {
        return model_internal::dataProperties;
    }

    public function getSourceProperties():Array
    {
        return model_internal::sourceProperties;
    }

    public function getNonDerivedProperties():Array
    {
        return model_internal::nonDerivedProperties;
    }

    override public function getGuardedProperties():Array
    {
        return model_internal::guardedProperties;
    }

    override public function getUnguardedProperties():Array
    {
        return model_internal::allAlwaysAvailableProperties;
    }

    override public function getDependants(propertyName:String):Array
    {
       if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity Burndown");
            
       return model_internal::dependentsOnMap[propertyName] as Array;  
    }

    override public function getDependedOnServices():Array
    {
        return model_internal::dependedOnServices;
    }

    override public function getCollectionProperties():Array
    {
        return model_internal::collectionProperties;
    }

    override public function getCollectionBase(propertyName:String):String
    {
        if (model_internal::collectionProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a collection property of entity Burndown");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of Burndown");

        return model_internal::propertyTypeMap[propertyName];
    }

    override public function getAvailableProperties():com.adobe.fiber.valueobjects.IPropertyIterator
    {
        return new com.adobe.fiber.valueobjects.AvailablePropertyIterator(this);
    }

    override public function getValue(propertyName:String):*
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity Burndown");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity Burndown");
        }

        model_internal::_instance[propertyName] = value;
    }

    override public function getMappedByProperty(associationProperty:String):String
    {
        switch(associationProperty)
        {
            default:
            {
                return null;
            }
        }
    }

    override public function getPropertyLength(propertyName:String):int
    {
        switch(propertyName)
        {
            default:
            {
                return 0;
            }
        }
    }

    override public function isAvailable(propertyName:String):Boolean
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity Burndown");
        }

        if (model_internal::allAlwaysAvailableProperties.indexOf(propertyName) != -1)
        {
            return true;
        }

        switch(propertyName)
        {
            default:
            {
                return true;
            }
        }
    }

    override public function getIdentityMap():Object
    {
        var returnMap:Object = new Object();

        return returnMap;
    }

    [Bindable(event="propertyChange")]
    override public function get invalidConstraints():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_invalidConstraints;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_invalidConstraints;        
        }
    }

    [Bindable(event="propertyChange")]
    override public function get validationFailureMessages():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
    }

    override public function getDependantInvalidConstraints(propertyName:String):Array
    {
        var dependants:Array = getDependants(propertyName);
        if (dependants.length == 0)
        {
            return emptyArray;
        }

        var currentlyInvalid:Array = invalidConstraints;
        if (currentlyInvalid.length == 0)
        {
            return emptyArray;
        }

        var filterFunc:Function = function(element:*, index:int, arr:Array):Boolean
        {
            return dependants.indexOf(element) > -1;
        }

        return currentlyInvalid.filter(filterFunc);
    }

    /**
     * isValid
     */
    [Bindable(event="propertyChange")] 
    public function get isValid() : Boolean
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_isValid;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_isValid;
        }
    }

    [Bindable(event="propertyChange")]
    public function get isDateAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAboveAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isBelowAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnDate():void
    {
        if (model_internal::_dateIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDate = null;
            model_internal::calculateDateIsValid();
        }
    }
    public function invalidateDependentOnAbove():void
    {
        if (model_internal::_aboveIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAbove = null;
            model_internal::calculateAboveIsValid();
        }
    }
    public function invalidateDependentOnBelow():void
    {
        if (model_internal::_belowIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfBelow = null;
            model_internal::calculateBelowIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get dateStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get dateValidator() : StyleValidator
    {
        return model_internal::_dateValidator;
    }

    model_internal function set _dateIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_dateIsValid;         
        if (oldValue !== value)
        {
            model_internal::_dateIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dateIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get dateIsValid():Boolean
    {
        if (!model_internal::_dateIsValidCacheInitialized)
        {
            model_internal::calculateDateIsValid();
        }

        return model_internal::_dateIsValid;
    }

    model_internal function calculateDateIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_dateValidator.validate(model_internal::_instance.date)
        model_internal::_dateIsValid_der = (valRes.results == null);
        model_internal::_dateIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::dateValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::dateValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get dateValidationFailureMessages():Array
    {
        if (model_internal::_dateValidationFailureMessages == null)
            model_internal::calculateDateIsValid();

        return _dateValidationFailureMessages;
    }

    model_internal function set dateValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_dateValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_dateValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dateValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get aboveStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get aboveValidator() : StyleValidator
    {
        return model_internal::_aboveValidator;
    }

    model_internal function set _aboveIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_aboveIsValid;         
        if (oldValue !== value)
        {
            model_internal::_aboveIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "aboveIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get aboveIsValid():Boolean
    {
        if (!model_internal::_aboveIsValidCacheInitialized)
        {
            model_internal::calculateAboveIsValid();
        }

        return model_internal::_aboveIsValid;
    }

    model_internal function calculateAboveIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_aboveValidator.validate(model_internal::_instance.above)
        model_internal::_aboveIsValid_der = (valRes.results == null);
        model_internal::_aboveIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::aboveValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::aboveValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get aboveValidationFailureMessages():Array
    {
        if (model_internal::_aboveValidationFailureMessages == null)
            model_internal::calculateAboveIsValid();

        return _aboveValidationFailureMessages;
    }

    model_internal function set aboveValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_aboveValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_aboveValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "aboveValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get belowStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get belowValidator() : StyleValidator
    {
        return model_internal::_belowValidator;
    }

    model_internal function set _belowIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_belowIsValid;         
        if (oldValue !== value)
        {
            model_internal::_belowIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "belowIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get belowIsValid():Boolean
    {
        if (!model_internal::_belowIsValidCacheInitialized)
        {
            model_internal::calculateBelowIsValid();
        }

        return model_internal::_belowIsValid;
    }

    model_internal function calculateBelowIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_belowValidator.validate(model_internal::_instance.below)
        model_internal::_belowIsValid_der = (valRes.results == null);
        model_internal::_belowIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::belowValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::belowValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get belowValidationFailureMessages():Array
    {
        if (model_internal::_belowValidationFailureMessages == null)
            model_internal::calculateBelowIsValid();

        return _belowValidationFailureMessages;
    }

    model_internal function set belowValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_belowValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_belowValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "belowValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }


     /**
     * 
     * @inheritDoc 
     */ 
     override public function getStyle(propertyName:String):com.adobe.fiber.styles.IStyle
     {
         switch(propertyName)
         {
            default:
            {
                return null;
            }
         }
     }
     
     /**
     * 
     * @inheritDoc 
     *  
     */  
     override public function getPropertyValidationFailureMessages(propertyName:String):Array
     {
         switch(propertyName)
         {
            case("date"):
            {
                return dateValidationFailureMessages;
            }
            case("above"):
            {
                return aboveValidationFailureMessages;
            }
            case("below"):
            {
                return belowValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
