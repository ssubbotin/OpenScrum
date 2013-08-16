
package 
{
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
import mx.controls.Image;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IFlexModuleFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.mx_internal;
import mx.filters.*;
import mx.rpc.http.mxml.HTTPService;
import mx.styles.*;
import spark.components.BorderContainer;
import spark.components.Group;
import spark.components.VGroup;
import spark.components.Label;
import spark.components.RichText;
import spark.components.HGroup;
import spark.components.VGroup;
import spark.components.Group;
import spark.layouts.VerticalLayout;

public class StickyNote extends spark.components.Group
{
	public function StickyNote() {}

	[Bindable]
	public var text : String;
	[Bindable]
	public var usNumber : String;
	[Bindable]
	public var usDays : String;
	[Bindable]
	public var inWorkDays : String;
	[Bindable]
	public var color : uint;
	[Bindable]
	public var quadId : uint;
	[Bindable]
	public var noteID : String;
	[Bindable]
	public var newX : uint;
	[Bindable]
	public var newY : uint;
	[Bindable]
	public var isDocked : Boolean;
	[Bindable]
	public var serverURL : String;
	[Bindable]
	public var sprintID : String;
	[Bindable]
	public var personNoteID : String;
	[Bindable]
	public var personName : String;
	[Bindable]
	public var personColor : int;
	[Bindable]
	public var addtask : mx.rpc.http.mxml.HTTPService;
	[Bindable]
	public var movetask : mx.rpc.http.mxml.HTTPService;
	[Bindable]
	public var changetask : mx.rpc.http.mxml.HTTPService;
	[Bindable]
	public var deleteperson : mx.rpc.http.mxml.HTTPService;
	[Bindable]
	public var draggable : spark.components.BorderContainer;
	[Bindable]
	public var imgExpired : mx.controls.Image;
	[Bindable]
	public var personDock : spark.components.VGroup;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "C:/plush2/OpenScrum/client_src/src/StickyNote.mxml:12,187";

}}
