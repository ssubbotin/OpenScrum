
package 
{
import DeskQuadrant;
import PersonsPalette;
import flash.accessibility.*;
import flash.debugger.*;
import flash.display.*;
import flash.errors.*;
import flash.events.*;
import flash.external.*;
import flash.geom.*;
import flash.media.*;
import flash.net.*;
import flash.printing.*;
import flash.profiler.*;
import flash.system.*;
import flash.text.*;
import flash.ui.*;
import flash.utils.*;
import flash.xml.*;
import mx.binding.*;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IFlexModuleFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.mx_internal;
import mx.effects.Glow;
import mx.filters.*;
import mx.rpc.http.mxml.HTTPService;
import mx.styles.*;
import spark.components.Application;
import spark.components.HGroup;
import spark.components.Label;
import spark.components.Scroller;
import NotesPalette;
import mx.containers.ApplicationControlBar;
import TrashBin;
import spark.components.HGroup;
import spark.layouts.BasicLayout;
import spark.components.Application;
import mx.controls.Label;
import spark.components.VGroup;
import mx.controls.Image;
import spark.components.BorderContainer;
import mx.controls.Spacer;

public class ScrumDesk extends spark.components.Application
{
	public function ScrumDesk() {}

	[Bindable]
	public var serverURL : String;
	[Bindable]
	public var sprintID : String;
	[Bindable]
	public var sprint_name : String;
	[Bindable]
	public var read_only : Boolean;
	[Bindable]
	public var zoomFactor : Number;
	[Bindable]
	public var zoomFactorStep : Number;
	[Bindable]
	public var zoomX : Number;
	[Bindable]
	public var zoomY : Number;
	[Bindable]
	public var version : int;
	[Bindable]
	public var gettasks : mx.rpc.http.mxml.HTTPService;
	[Bindable]
	public var getversion : mx.rpc.http.mxml.HTTPService;
	[Bindable]
	public var getincremental : mx.rpc.http.mxml.HTTPService;
	[Bindable]
	public var glowImage : mx.effects.Glow;
	[Bindable]
	public var unglowImage : mx.effects.Glow;
	[Bindable]
	public var palette : PersonsPalette;
	[Bindable]
	public var scroller : spark.components.Scroller;
	[Bindable]
	public var fullDesk : spark.components.HGroup;
	[Bindable]
	public var q_lefttop : DeskQuadrant;
	[Bindable]
	public var q_leftmid : DeskQuadrant;
	[Bindable]
	public var q_leftbot : DeskQuadrant;
	[Bindable]
	public var q_midtop : DeskQuadrant;
	[Bindable]
	public var q_midmid : DeskQuadrant;
	[Bindable]
	public var q_midbot : DeskQuadrant;
	[Bindable]
	public var q_righttop : DeskQuadrant;
	[Bindable]
	public var q_rightmid : DeskQuadrant;
	[Bindable]
	public var q_rightbot : DeskQuadrant;
	[Bindable]
	public var q_checktop : DeskQuadrant;
	[Bindable]
	public var q_checkmid : DeskQuadrant;
	[Bindable]
	public var q_checkbot : DeskQuadrant;
	[Bindable]
	public var sum : spark.components.Label;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "C:/plush2/OpenScrum/client_src/src/ScrumDesk.mxml:16,475";

}}
