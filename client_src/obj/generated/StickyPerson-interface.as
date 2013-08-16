
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
import spark.components.Group;
import spark.components.Label;
import spark.layouts.BasicLayout;
import spark.components.Group;

public class StickyPerson extends spark.components.Group
{
	public function StickyPerson() {}

	[Bindable]
	public var person : String;
	[Bindable]
	public var background : uint;
	[Bindable]
	public var isDocked : Boolean;
	[Bindable]
	public var parentNoteID : String;
	[Bindable]
	public var serverURL : String;
	[Bindable]
	public var addperson : mx.rpc.http.mxml.HTTPService;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "C:/plush2/OpenScrum/client_src/src/StickyPerson.mxml:10,44";

}}
