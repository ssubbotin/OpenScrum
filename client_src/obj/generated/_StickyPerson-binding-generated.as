

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
import flash.utils.*;
import flash.printing.*;
import flash.text.*;
import mx.rpc.http.mxml.HTTPService;
import flash.geom.*;
import flash.events.*;
import flash.accessibility.*;
import mx.binding.*;
import flash.ui.*;
import flash.media.*;
import flash.xml.*;
import mx.styles.*;
import mx.filters.*;
import flash.system.*;
import flash.errors.*;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property addperson (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'addperson' moved to '_817256246addperson'
	 */

    [Bindable(event="propertyChange")]
    public function get addperson():mx.rpc.http.mxml.HTTPService
    {
        return this._817256246addperson;
    }

    public function set addperson(value:mx.rpc.http.mxml.HTTPService):void
    {
    	var oldValue:Object = this._817256246addperson;
        if (oldValue !== value)
        {
            this._817256246addperson = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "addperson", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property background (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'background' moved to '_1332194002background'
	 */

    [Bindable(event="propertyChange")]
    public function get background():uint
    {
        return this._1332194002background;
    }

    public function set background(value:uint):void
    {
    	var oldValue:Object = this._1332194002background;
        if (oldValue !== value)
        {
            this._1332194002background = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "background", oldValue, value));
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
	 * generated bindable wrapper for property parentNoteID (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'parentNoteID' moved to '_915722711parentNoteID'
	 */

    [Bindable(event="propertyChange")]
    public function get parentNoteID():String
    {
        return this._915722711parentNoteID;
    }

    public function set parentNoteID(value:String):void
    {
    	var oldValue:Object = this._915722711parentNoteID;
        if (oldValue !== value)
        {
            this._915722711parentNoteID = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "parentNoteID", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property person (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'person' moved to '_991716523person'
	 */

    [Bindable(event="propertyChange")]
    public function get person():String
    {
        return this._991716523person;
    }

    public function set person(value:String):void
    {
    	var oldValue:Object = this._991716523person;
        if (oldValue !== value)
        {
            this._991716523person = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "person", oldValue, value));
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



}
