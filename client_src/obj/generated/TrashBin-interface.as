
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
import mx.controls.Image;
import spark.layouts.HorizontalLayout;
import spark.components.Group;

public class TrashBin extends spark.components.Group
{
	public function TrashBin() {}

	[Bindable]
	public var noteID : String;
	[Bindable]
	public var personName : String;
	[Bindable]
	public var personColor : int;
	[Bindable]
	public var serverURL : String;
	[Bindable]
	public var deletetask : mx.rpc.http.mxml.HTTPService;
	[Bindable]
	public var deleteperson : mx.rpc.http.mxml.HTTPService;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "C:/plush2/OpenScrum/client_src/src/TrashBin.mxml:10,83";

}}
