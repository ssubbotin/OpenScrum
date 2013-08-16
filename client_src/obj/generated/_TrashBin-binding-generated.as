

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
	 * generated bindable wrapper for property deletetask (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'deletetask' moved to '_1765535152deletetask'
	 */

    [Bindable(event="propertyChange")]
    public function get deletetask():mx.rpc.http.mxml.HTTPService
    {
        return this._1765535152deletetask;
    }

    public function set deletetask(value:mx.rpc.http.mxml.HTTPService):void
    {
    	var oldValue:Object = this._1765535152deletetask;
        if (oldValue !== value)
        {
            this._1765535152deletetask = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "deletetask", oldValue, value));
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
