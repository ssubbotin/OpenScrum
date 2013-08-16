
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
import mx.styles.*;
import spark.components.BorderContainer;
import spark.components.Group;
import spark.components.Label;
import spark.components.Label;
import mx.controls.VRule;
import spark.components.HGroup;
import spark.components.Group;
import mx.controls.HRule;
import mx.states.State;
import spark.layouts.VerticalLayout;
import spark.components.BorderContainer;
import mx.controls.Spacer;

public class DeskQuadrant extends spark.components.Group
{
	public function DeskQuadrant() {}

	[Bindable]
	public var topCategory : String;
	[Bindable]
	public var leftCategory : String;
	[Bindable]
	public var showTop : Boolean;
	[Bindable]
	public var showLeft : Boolean;
	[Bindable]
	public var quadId : int;
	[Bindable]
	public var notesDock : spark.components.BorderContainer;
	[Bindable]
	public var sum : spark.components.Label;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "C:/plush2/OpenScrum/client_src/src/DeskQuadrant.mxml:12,121";

}}
