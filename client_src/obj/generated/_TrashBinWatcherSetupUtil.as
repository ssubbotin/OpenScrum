






package
{
import mx.core.IFlexModuleFactory;
import mx.binding.ArrayElementWatcher;
import mx.binding.FunctionReturnWatcher;
import mx.binding.IWatcherSetupUtil2;
import mx.binding.PropertyWatcher;
import mx.binding.RepeaterComponentWatcher;
import mx.binding.RepeaterItemWatcher;
import mx.binding.StaticPropertyWatcher;
import mx.binding.XMLWatcher;
import mx.binding.Watcher;

[ExcludeClass]
public class _TrashBinWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _TrashBinWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import TrashBin;
        (TrashBin).watcherSetupUtil = new _TrashBinWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          staticPropertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import mx.core.DeferredInstanceFromClass;
        import __AS3__.vec.Vector;
        import mx.events.CloseEvent;
        import mx.binding.IBindingClient;
        import mx.rpc.events.ResultEvent;
        import mx.core.ClassFactory;
        import mx.core.IFactory;
        import mx.events.DragEvent;
        import mx.core.DeferredInstanceFromFunction;
        import flash.events.EventDispatcher;
        import mx.controls.Alert;
        import mx.core.IFlexModuleFactory;
        import mx.binding.BindingManager;
        import mx.managers.DragManager;
        import mx.core.IUIComponent;
        import spark.components.Group;
        import mx.core.IDeferredInstance;
        import mx.controls.Image;
        import mx.rpc.http.mxml.HTTPService;
        import mx.core.IPropertyChangeNotifier;
        import flash.events.IEventDispatcher;
        import mx.core.DragSource;
        import mx.core.FlexGlobals;
        import mx.core.mx_internal;
        import mx.events.FlexEvent;
        import spark.layouts.HorizontalLayout;
        import flash.events.Event;

        // writeWatcher id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[3] = new mx.binding.PropertyWatcher("personColor",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=3 size=1
        [
        bindings[5]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[0] = new mx.binding.PropertyWatcher("serverURL",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=0 size=2
        [
        bindings[0],
        bindings[2]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[1] = new mx.binding.PropertyWatcher("noteID",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=1 size=2
        [
        bindings[1],
        bindings[3]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[2] = new mx.binding.PropertyWatcher("personName",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=2 size=1
        [
        bindings[4]
        ]
,
                                                                 propertyGetter
);


        // writeWatcherBottom id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].updateParent(target);

 





        // writeWatcherBottom id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[0].updateParent(target);

 





        // writeWatcherBottom id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[1].updateParent(target);

 





        // writeWatcherBottom id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[2].updateParent(target);

 





    }
}

}
