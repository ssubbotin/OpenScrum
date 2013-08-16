
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
import mx.controls.AdvancedDataGrid;
import mx.controls.Button;
import mx.controls.Label;
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
import mx.rpc.CallResponder;
import mx.styles.*;
import services.appspotserver.AppspotServer;
import spark.components.RichEditableText;
import spark.components.TitleWindow;
import mx.controls.advancedDataGridClasses.AdvancedDataGridColumn;
import spark.components.HGroup;
import spark.components.TitleWindow;
import mx.controls.Label;
import spark.layouts.VerticalLayout;
import mx.controls.Spacer;

public class NotePropertiesDialog extends spark.components.TitleWindow
{
	public function NotePropertiesDialog() {}

	[Bindable]
	public var getTaskHistoryResult : mx.rpc.CallResponder;
	[Bindable]
	public var appspotServer : services.appspotserver.AppspotServer;
	[Bindable]
	public var usNumber : mx.controls.TextInput;
	[Bindable]
	public var usDays : mx.controls.TextInput;
	[Bindable]
	public var inWorkDays : mx.controls.Label;
	[Bindable]
	public var usText : spark.components.RichEditableText;
	[Bindable]
	public var history : mx.controls.AdvancedDataGrid;
	[Bindable]
	public var okbutton : mx.controls.Button;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "C:/plush2/OpenScrum/client_src/src/NotePropertiesDialog.mxml:18,49";

}}
