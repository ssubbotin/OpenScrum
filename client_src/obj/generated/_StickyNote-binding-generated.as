

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import flash.profiler.*;
import flash.external.*;
import flash.display.*;
import flash.net.*;
import flash.debugger.*;
import mx.controls.Image;
import flash.utils.*;
import flash.printing.*;
import flash.text.*;
import spark.components.BorderContainer;
import mx.rpc.http.mxml.HTTPService;
import flash.geom.*;
import flash.events.*;
import flash.accessibility.*;
import mx.binding.*;
import flash.ui.*;
import flash.media.*;
import flash.xml.*;
import spark.components.VGroup;
import mx.styles.*;
import mx.filters.*;
import flash.system.*;
import flash.errors.*;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property addtask (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'addtask' moved to '_1147636314addtask'
	 */

    [Bindable(event="propertyChange")]
    public function get addtask():mx.rpc.http.mxml.HTTPService
    {
        return this._1147636314addtask;
    }

    public function set addtask(value:mx.rpc.http.mxml.HTTPService):void
    {
    	var oldValue:Object = this._1147636314addtask;
        if (oldValue !== value)
        {
            this._1147636314addtask = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "addtask", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property changetask (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'changetask' moved to '_2130972363changetask'
	 */

    [Bindable(event="propertyChange")]
    public function get changetask():mx.rpc.http.mxml.HTTPService
    {
        return this._2130972363changetask;
    }

    public function set changetask(value:mx.rpc.http.mxml.HTTPService):void
    {
    	var oldValue:Object = this._2130972363changetask;
        if (oldValue !== value)
        {
            this._2130972363changetask = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "changetask", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property color (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'color' moved to '_94842723color'
	 */

    [Bindable(event="propertyChange")]
    public function get color():uint
    {
        return this._94842723color;
    }

    public function set color(value:uint):void
    {
    	var oldValue:Object = this._94842723color;
        if (oldValue !== value)
        {
            this._94842723color = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "color", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property deleteperson (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'deleteperson' moved to '_56358080deleteperson'
	 */

    [Bindable(event="propertyChange")]
    public function get deleteperson():mx.rpc.http.mxml.HTTPService
    {
        return this._56358080deleteperson;
    }

    public function set deleteperson(value:mx.rpc.http.mxml.HTTPService):void
    {
    	var oldValue:Object = this._56358080deleteperson;
        if (oldValue !== value)
        {
            this._56358080deleteperson = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "deleteperson", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property draggable (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'draggable' moved to '_304480883draggable'
	 */

    [Bindable(event="propertyChange")]
    public function get draggable():spark.components.BorderContainer
    {
        return this._304480883draggable;
    }

    public function set draggable(value:spark.components.BorderContainer):void
    {
    	var oldValue:Object = this._304480883draggable;
        if (oldValue !== value)
        {
            this._304480883draggable = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "draggable", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property imgExpired (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'imgExpired' moved to '_873133538imgExpired'
	 */

    [Bindable(event="propertyChange")]
    public function get imgExpired():mx.controls.Image
    {
        return this._873133538imgExpired;
    }

    public function set imgExpired(value:mx.controls.Image):void
    {
    	var oldValue:Object = this._873133538imgExpired;
        if (oldValue !== value)
        {
            this._873133538imgExpired = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "imgExpired", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property inWorkDays (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'inWorkDays' moved to '_311576755inWorkDays'
	 */

    [Bindable(event="propertyChange")]
    public function get inWorkDays():String
    {
        return this._311576755inWorkDays;
    }

    public function set inWorkDays(value:String):void
    {
    	var oldValue:Object = this._311576755inWorkDays;
        if (oldValue !== value)
        {
            this._311576755inWorkDays = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "inWorkDays", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property isDocked (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'isDocked' moved to '_652451876isDocked'
	 */

    [Bindable(event="propertyChange")]
    public function get isDocked():Boolean
    {
        return this._652451876isDocked;
    }

    public function set isDocked(value:Boolean):void
    {
    	var oldValue:Object = this._652451876isDocked;
        if (oldValue !== value)
        {
            this._652451876isDocked = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "isDocked", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property movetask (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'movetask' moved to '_103472938movetask'
	 */

    [Bindable(event="propertyChange")]
    public function get movetask():mx.rpc.http.mxml.HTTPService
    {
        return this._103472938movetask;
    }

    public function set movetask(value:mx.rpc.http.mxml.HTTPService):void
    {
    	var oldValue:Object = this._103472938movetask;
        if (oldValue !== value)
        {
            this._103472938movetask = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "movetask", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property newX (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'newX' moved to '_3377848newX'
	 */

    [Bindable(event="propertyChange")]
    public function get newX():uint
    {
        return this._3377848newX;
    }

    public function set newX(value:uint):void
    {
    	var oldValue:Object = this._3377848newX;
        if (oldValue !== value)
        {
            this._3377848newX = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "newX", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property newY (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'newY' moved to '_3377849newY'
	 */

    [Bindable(event="propertyChange")]
    public function get newY():uint
    {
        return this._3377849newY;
    }

    public function set newY(value:uint):void
    {
    	var oldValue:Object = this._3377849newY;
        if (oldValue !== value)
        {
            this._3377849newY = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "newY", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property noteID (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'noteID' moved to '_1039694707noteID'
	 */

    [Bindable(event="propertyChange")]
    public function get noteID():String
    {
        return this._1039694707noteID;
    }

    public function set noteID(value:String):void
    {
    	var oldValue:Object = this._1039694707noteID;
        if (oldValue !== value)
        {
            this._1039694707noteID = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "noteID", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property personColor (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'personColor' moved to '_451579634personColor'
	 */

    [Bindable(event="propertyChange")]
    public function get personColor():int
    {
        return this._451579634personColor;
    }

    public function set personColor(value:int):void
    {
    	var oldValue:Object = this._451579634personColor;
        if (oldValue !== value)
        {
            this._451579634personColor = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "personColor", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property personDock (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'personDock' moved to '_678199080personDock'
	 */

    [Bindable(event="propertyChange")]
    public function get personDock():spark.components.VGroup
    {
        return this._678199080personDock;
    }

    public function set personDock(value:spark.components.VGroup):void
    {
    	var oldValue:Object = this._678199080personDock;
        if (oldValue !== value)
        {
            this._678199080personDock = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "personDock", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property personName (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'personName' moved to '_678483840personName'
	 */

    [Bindable(event="propertyChange")]
    public function get personName():String
    {
        return this._678483840personName;
    }

    public function set personName(value:String):void
    {
    	var oldValue:Object = this._678483840personName;
        if (oldValue !== value)
        {
            this._678483840personName = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "personName", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property personNoteID (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'personNoteID' moved to '_798918590personNoteID'
	 */

    [Bindable(event="propertyChange")]
    public function get personNoteID():String
    {
        return this._798918590personNoteID;
    }

    public function set personNoteID(value:String):void
    {
    	var oldValue:Object = this._798918590personNoteID;
        if (oldValue !== value)
        {
            this._798918590personNoteID = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "personNoteID", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property quadId (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'quadId' moved to '_948833086quadId'
	 */

    [Bindable(event="propertyChange")]
    public function get quadId():uint
    {
        return this._948833086quadId;
    }

    public function set quadId(value:uint):void
    {
    	var oldValue:Object = this._948833086quadId;
        if (oldValue !== value)
        {
            this._948833086quadId = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "quadId", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property serverURL (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'serverURL' moved to '_197447892serverURL'
	 */

    [Bindable(event="propertyChange")]
    public function get serverURL():String
    {
        return this._197447892serverURL;
    }

    public function set serverURL(value:String):void
    {
    	var oldValue:Object = this._197447892serverURL;
        if (oldValue !== value)
        {
            this._197447892serverURL = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "serverURL", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property sprintID (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'sprintID' moved to '_1754993483sprintID'
	 */

    [Bindable(event="propertyChange")]
    public function get sprintID():String
    {
        return this._1754993483sprintID;
    }

    public function set sprintID(value:String):void
    {
    	var oldValue:Object = this._1754993483sprintID;
        if (oldValue !== value)
        {
            this._1754993483sprintID = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sprintID", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property text (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'text' moved to '_3556653text'
	 */

    [Bindable(event="propertyChange")]
    public function get text():String
    {
        return this._3556653text;
    }

    public function set text(value:String):void
    {
    	var oldValue:Object = this._3556653text;
        if (oldValue !== value)
        {
            this._3556653text = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "text", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property usDays (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'usDays' moved to '_837028843usDays'
	 */

    [Bindable(event="propertyChange")]
    public function get usDays():String
    {
        return this._837028843usDays;
    }

    public function set usDays(value:String):void
    {
    	var oldValue:Object = this._837028843usDays;
        if (oldValue !== value)
        {
            this._837028843usDays = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usDays", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property usNumber (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'usNumber' moved to '_921442425usNumber'
	 */

    [Bindable(event="propertyChange")]
    public function get usNumber():String
    {
        return this._921442425usNumber;
    }

    public function set usNumber(value:String):void
    {
    	var oldValue:Object = this._921442425usNumber;
        if (oldValue !== value)
        {
            this._921442425usNumber = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usNumber", oldValue, value));
        }
    }



}
