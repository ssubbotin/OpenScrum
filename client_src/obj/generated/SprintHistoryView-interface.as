
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
import spark.components.TitleWindow;
import mx.controls.advancedDataGridClasses.AdvancedDataGridColumn;
import spark.components.TitleWindow;

public class SprintHistoryView extends spark.components.TitleWindow
{
	public function SprintHistoryView() {}

	[Bindable]
	public var getSprintHistoryResult : mx.rpc.CallResponder;
	[Bindable]
	public var appspotServer : services.appspotserver.AppspotServer;
	[Bindable]
	public var datagrid : mx.controls.AdvancedDataGrid;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "C:/plush2/OpenScrum/client_src/src/SprintHistoryView.mxml:9,20";

}}
