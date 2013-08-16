
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
import mx.controls.DateField;
import mx.controls.TextInput;
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
import spark.components.HSlider;
import spark.components.NumericStepper;
import spark.components.TitleWindow;
import spark.components.CheckBox;
import spark.components.TileGroup;
import spark.components.Label;
import spark.components.HGroup;
import spark.components.TitleWindow;
import mx.controls.Label;
import spark.components.VGroup;
import spark.layouts.VerticalLayout;
import mx.controls.Spacer;

public class SettingsView extends spark.components.TitleWindow
{
	public function SettingsView() {}

	[Bindable]
	public var spName : mx.controls.TextInput;
	[Bindable]
	public var spTarget : mx.controls.TextInput;
	[Bindable]
	public var spStart : mx.controls.DateField;
	[Bindable]
	public var spEnd : mx.controls.DateField;
	[Bindable]
	public var spLen : spark.components.NumericStepper;
	[Bindable]
	public var delayValue : spark.components.HSlider;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "C:/plush2/OpenScrum/client_src/src/SettingsView.mxml:13,45";

}}
