

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import flash.display.*;
import flash.debugger.*;
import DeskQuadrant;
import flash.printing.*;
import flash.geom.*;
import flash.events.*;
import flash.accessibility.*;
import PersonsPalette;
import spark.components.HGroup;
import flash.xml.*;
import mx.effects.Glow;
import mx.filters.*;
import flash.system.*;
import flash.profiler.*;
import flash.external.*;
import flash.net.*;
import spark.components.Scroller;
import flash.utils.*;
import flash.text.*;
import mx.rpc.http.mxml.HTTPService;
import spark.components.Label;
import mx.binding.*;
import flash.media.*;
import flash.ui.*;
import mx.styles.*;
import flash.errors.*;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property fullDesk (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'fullDesk' moved to '_1330558408fullDesk'
	 */

    [Bindable(event="propertyChange")]
    public function get fullDesk():spark.components.HGroup
    {
        return this._1330558408fullDesk;
    }

    public function set fullDesk(value:spark.components.HGroup):void
    {
    	var oldValue:Object = this._1330558408fullDesk;
        if (oldValue !== value)
        {
            this._1330558408fullDesk = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fullDesk", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property getincremental (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'getincremental' moved to '_1222764860getincremental'
	 */

    [Bindable(event="propertyChange")]
    public function get getincremental():mx.rpc.http.mxml.HTTPService
    {
        return this._1222764860getincremental;
    }

    public function set getincremental(value:mx.rpc.http.mxml.HTTPService):void
    {
    	var oldValue:Object = this._1222764860getincremental;
        if (oldValue !== value)
        {
            this._1222764860getincremental = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "getincremental", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property gettasks (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'gettasks' moved to '_1995510264gettasks'
	 */

    [Bindable(event="propertyChange")]
    public function get gettasks():mx.rpc.http.mxml.HTTPService
    {
        return this._1995510264gettasks;
    }

    public function set gettasks(value:mx.rpc.http.mxml.HTTPService):void
    {
    	var oldValue:Object = this._1995510264gettasks;
        if (oldValue !== value)
        {
            this._1995510264gettasks = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "gettasks", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property getversion (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'getversion' moved to '_276184894getversion'
	 */

    [Bindable(event="propertyChange")]
    public function get getversion():mx.rpc.http.mxml.HTTPService
    {
        return this._276184894getversion;
    }

    public function set getversion(value:mx.rpc.http.mxml.HTTPService):void
    {
    	var oldValue:Object = this._276184894getversion;
        if (oldValue !== value)
        {
            this._276184894getversion = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "getversion", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property glowImage (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'glowImage' moved to '_967029710glowImage'
	 */

    [Bindable(event="propertyChange")]
    public function get glowImage():mx.effects.Glow
    {
        return this._967029710glowImage;
    }

    public function set glowImage(value:mx.effects.Glow):void
    {
    	var oldValue:Object = this._967029710glowImage;
        if (oldValue !== value)
        {
            this._967029710glowImage = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "glowImage", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property palette (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'palette' moved to '_798910853palette'
	 */

    [Bindable(event="propertyChange")]
    public function get palette():PersonsPalette
    {
        return this._798910853palette;
    }

    public function set palette(value:PersonsPalette):void
    {
    	var oldValue:Object = this._798910853palette;
        if (oldValue !== value)
        {
            this._798910853palette = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "palette", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property q_checkbot (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'q_checkbot' moved to '_896220109q_checkbot'
	 */

    [Bindable(event="propertyChange")]
    public function get q_checkbot():DeskQuadrant
    {
        return this._896220109q_checkbot;
    }

    public function set q_checkbot(value:DeskQuadrant):void
    {
    	var oldValue:Object = this._896220109q_checkbot;
        if (oldValue !== value)
        {
            this._896220109q_checkbot = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "q_checkbot", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property q_checkmid (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'q_checkmid' moved to '_896230478q_checkmid'
	 */

    [Bindable(event="propertyChange")]
    public function get q_checkmid():DeskQuadrant
    {
        return this._896230478q_checkmid;
    }

    public function set q_checkmid(value:DeskQuadrant):void
    {
    	var oldValue:Object = this._896230478q_checkmid;
        if (oldValue !== value)
        {
            this._896230478q_checkmid = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "q_checkmid", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property q_checktop (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'q_checktop' moved to '_896237403q_checktop'
	 */

    [Bindable(event="propertyChange")]
    public function get q_checktop():DeskQuadrant
    {
        return this._896237403q_checktop;
    }

    public function set q_checktop(value:DeskQuadrant):void
    {
    	var oldValue:Object = this._896237403q_checktop;
        if (oldValue !== value)
        {
            this._896237403q_checktop = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "q_checktop", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property q_leftbot (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'q_leftbot' moved to '_34779794q_leftbot'
	 */

    [Bindable(event="propertyChange")]
    public function get q_leftbot():DeskQuadrant
    {
        return this._34779794q_leftbot;
    }

    public function set q_leftbot(value:DeskQuadrant):void
    {
    	var oldValue:Object = this._34779794q_leftbot;
        if (oldValue !== value)
        {
            this._34779794q_leftbot = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "q_leftbot", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property q_leftmid (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'q_leftmid' moved to '_34790163q_leftmid'
	 */

    [Bindable(event="propertyChange")]
    public function get q_leftmid():DeskQuadrant
    {
        return this._34790163q_leftmid;
    }

    public function set q_leftmid(value:DeskQuadrant):void
    {
    	var oldValue:Object = this._34790163q_leftmid;
        if (oldValue !== value)
        {
            this._34790163q_leftmid = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "q_leftmid", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property q_lefttop (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'q_lefttop' moved to '_34797088q_lefttop'
	 */

    [Bindable(event="propertyChange")]
    public function get q_lefttop():DeskQuadrant
    {
        return this._34797088q_lefttop;
    }

    public function set q_lefttop(value:DeskQuadrant):void
    {
    	var oldValue:Object = this._34797088q_lefttop;
        if (oldValue !== value)
        {
            this._34797088q_lefttop = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "q_lefttop", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property q_midbot (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'q_midbot' moved to '_1003200013q_midbot'
	 */

    [Bindable(event="propertyChange")]
    public function get q_midbot():DeskQuadrant
    {
        return this._1003200013q_midbot;
    }

    public function set q_midbot(value:DeskQuadrant):void
    {
    	var oldValue:Object = this._1003200013q_midbot;
        if (oldValue !== value)
        {
            this._1003200013q_midbot = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "q_midbot", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property q_midmid (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'q_midmid' moved to '_1003210382q_midmid'
	 */

    [Bindable(event="propertyChange")]
    public function get q_midmid():DeskQuadrant
    {
        return this._1003210382q_midmid;
    }

    public function set q_midmid(value:DeskQuadrant):void
    {
    	var oldValue:Object = this._1003210382q_midmid;
        if (oldValue !== value)
        {
            this._1003210382q_midmid = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "q_midmid", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property q_midtop (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'q_midtop' moved to '_1003217307q_midtop'
	 */

    [Bindable(event="propertyChange")]
    public function get q_midtop():DeskQuadrant
    {
        return this._1003217307q_midtop;
    }

    public function set q_midtop(value:DeskQuadrant):void
    {
    	var oldValue:Object = this._1003217307q_midtop;
        if (oldValue !== value)
        {
            this._1003217307q_midtop = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "q_midtop", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property q_rightbot (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'q_rightbot' moved to '_2076748231q_rightbot'
	 */

    [Bindable(event="propertyChange")]
    public function get q_rightbot():DeskQuadrant
    {
        return this._2076748231q_rightbot;
    }

    public function set q_rightbot(value:DeskQuadrant):void
    {
    	var oldValue:Object = this._2076748231q_rightbot;
        if (oldValue !== value)
        {
            this._2076748231q_rightbot = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "q_rightbot", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property q_rightmid (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'q_rightmid' moved to '_2076737862q_rightmid'
	 */

    [Bindable(event="propertyChange")]
    public function get q_rightmid():DeskQuadrant
    {
        return this._2076737862q_rightmid;
    }

    public function set q_rightmid(value:DeskQuadrant):void
    {
    	var oldValue:Object = this._2076737862q_rightmid;
        if (oldValue !== value)
        {
            this._2076737862q_rightmid = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "q_rightmid", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property q_righttop (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'q_righttop' moved to '_2076730937q_righttop'
	 */

    [Bindable(event="propertyChange")]
    public function get q_righttop():DeskQuadrant
    {
        return this._2076730937q_righttop;
    }

    public function set q_righttop(value:DeskQuadrant):void
    {
    	var oldValue:Object = this._2076730937q_righttop;
        if (oldValue !== value)
        {
            this._2076730937q_righttop = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "q_righttop", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property read_only (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'read_only' moved to '_1113584459read_only'
	 */

    [Bindable(event="propertyChange")]
    public function get read_only():Boolean
    {
        return this._1113584459read_only;
    }

    public function set read_only(value:Boolean):void
    {
    	var oldValue:Object = this._1113584459read_only;
        if (oldValue !== value)
        {
            this._1113584459read_only = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "read_only", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property scroller (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'scroller' moved to '_402164678scroller'
	 */

    [Bindable(event="propertyChange")]
    public function get scroller():spark.components.Scroller
    {
        return this._402164678scroller;
    }

    public function set scroller(value:spark.components.Scroller):void
    {
    	var oldValue:Object = this._402164678scroller;
        if (oldValue !== value)
        {
            this._402164678scroller = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "scroller", oldValue, value));
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
	 * generated bindable wrapper for property sprint_name (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'sprint_name' moved to '_352292464sprint_name'
	 */

    [Bindable(event="propertyChange")]
    public function get sprint_name():String
    {
        return this._352292464sprint_name;
    }

    public function set sprint_name(value:String):void
    {
    	var oldValue:Object = this._352292464sprint_name;
        if (oldValue !== value)
        {
            this._352292464sprint_name = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sprint_name", oldValue, value));
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
	 * generated bindable wrapper for property unglowImage (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'unglowImage' moved to '_1035469141unglowImage'
	 */

    [Bindable(event="propertyChange")]
    public function get unglowImage():mx.effects.Glow
    {
        return this._1035469141unglowImage;
    }

    public function set unglowImage(value:mx.effects.Glow):void
    {
    	var oldValue:Object = this._1035469141unglowImage;
        if (oldValue !== value)
        {
            this._1035469141unglowImage = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "unglowImage", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property version (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'version' moved to '_351608024version'
	 */

    [Bindable(event="propertyChange")]
    public function get version():int
    {
        return this._351608024version;
    }

    public function set version(value:int):void
    {
    	var oldValue:Object = this._351608024version;
        if (oldValue !== value)
        {
            this._351608024version = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "version", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property zoomFactor (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'zoomFactor' moved to '_1035034878zoomFactor'
	 */

    [Bindable(event="propertyChange")]
    public function get zoomFactor():Number
    {
        return this._1035034878zoomFactor;
    }

    public function set zoomFactor(value:Number):void
    {
    	var oldValue:Object = this._1035034878zoomFactor;
        if (oldValue !== value)
        {
            this._1035034878zoomFactor = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "zoomFactor", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property zoomFactorStep (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'zoomFactorStep' moved to '_1406482194zoomFactorStep'
	 */

    [Bindable(event="propertyChange")]
    public function get zoomFactorStep():Number
    {
        return this._1406482194zoomFactorStep;
    }

    public function set zoomFactorStep(value:Number):void
    {
    	var oldValue:Object = this._1406482194zoomFactorStep;
        if (oldValue !== value)
        {
            this._1406482194zoomFactorStep = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "zoomFactorStep", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property zoomX (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'zoomX' moved to '_116086501zoomX'
	 */

    [Bindable(event="propertyChange")]
    public function get zoomX():Number
    {
        return this._116086501zoomX;
    }

    public function set zoomX(value:Number):void
    {
    	var oldValue:Object = this._116086501zoomX;
        if (oldValue !== value)
        {
            this._116086501zoomX = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "zoomX", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property zoomY (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'zoomY' moved to '_116086502zoomY'
	 */

    [Bindable(event="propertyChange")]
    public function get zoomY():Number
    {
        return this._116086502zoomY;
    }

    public function set zoomY(value:Number):void
    {
    	var oldValue:Object = this._116086502zoomY;
        if (oldValue !== value)
        {
            this._116086502zoomY = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "zoomY", oldValue, value));
        }
    }



}
