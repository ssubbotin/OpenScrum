

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
import spark.components.BorderContainer;
import flash.geom.*;
import spark.components.Label;
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
	 * generated bindable wrapper for property leftCategory (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'leftCategory' moved to '_2008102363leftCategory'
	 */

    [Bindable(event="propertyChange")]
    public function get leftCategory():String
    {
        return this._2008102363leftCategory;
    }

    public function set leftCategory(value:String):void
    {
    	var oldValue:Object = this._2008102363leftCategory;
        if (oldValue !== value)
        {
            this._2008102363leftCategory = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "leftCategory", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property notesDock (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'notesDock' moved to '_1798020244notesDock'
	 */

    [Bindable(event="propertyChange")]
    public function get notesDock():spark.components.BorderContainer
    {
        return this._1798020244notesDock;
    }

    public function set notesDock(value:spark.components.BorderContainer):void
    {
    	var oldValue:Object = this._1798020244notesDock;
        if (oldValue !== value)
        {
            this._1798020244notesDock = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "notesDock", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property quadId (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'quadId' moved to '_948833086quadId'
	 */

    [Bindable(event="propertyChange")]
    public function get quadId():int
    {
        return this._948833086quadId;
    }

    public function set quadId(value:int):void
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
	 * generated bindable wrapper for property showLeft (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'showLeft' moved to '_339072860showLeft'
	 */

    [Bindable(event="propertyChange")]
    public function get showLeft():Boolean
    {
        return this._339072860showLeft;
    }

    public function set showLeft(value:Boolean):void
    {
    	var oldValue:Object = this._339072860showLeft;
        if (oldValue !== value)
        {
            this._339072860showLeft = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "showLeft", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property showTop (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'showTop' moved to '_2067280152showTop'
	 */

    [Bindable(event="propertyChange")]
    public function get showTop():Boolean
    {
        return this._2067280152showTop;
    }

    public function set showTop(value:Boolean):void
    {
    	var oldValue:Object = this._2067280152showTop;
        if (oldValue !== value)
        {
            this._2067280152showTop = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "showTop", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property sum (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'sum' moved to '_114251sum'
	 */

    [Bindable(event="propertyChange")]
    public function get sum():spark.components.Label
    {
        return this._114251sum;
    }

    public function set sum(value:spark.components.Label):void
    {
    	var oldValue:Object = this._114251sum;
        if (oldValue !== value)
        {
            this._114251sum = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sum", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property topCategory (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'topCategory' moved to '_1212595571topCategory'
	 */

    [Bindable(event="propertyChange")]
    public function get topCategory():String
    {
        return this._1212595571topCategory;
    }

    public function set topCategory(value:String):void
    {
    	var oldValue:Object = this._1212595571topCategory;
        if (oldValue !== value)
        {
            this._1212595571topCategory = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "topCategory", oldValue, value));
        }
    }



}
