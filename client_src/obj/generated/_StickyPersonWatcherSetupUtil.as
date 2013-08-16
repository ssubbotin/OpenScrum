






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
public class _StickyPersonWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _StickyPersonWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import StickyPerson;
        (StickyPerson).watcherSetupUtil = new _StickyPersonWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          staticPropertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import mx.core.IFlexModuleFactory;
        import mx.binding.BindingManager;
        import mx.core.DeferredInstanceFromClass;
        import mx.managers.DragManager;
        import __AS3__.vec.Vector;
        import mx.core.IDeferredInstance;
        import spark.components.Group;
        import flash.events.MouseEvent;
        import mx.binding.IBindingClient;
        import mx.core.IPropertyChangeNotifier;
        import mx.rpc.http.mxml.HTTPService;
        import flash.events.IEventDispatcher;
        import mx.rpc.events.ResultEvent;
        import spark.components.Label;
        import mx.core.ClassFactory;
        import mx.core.IFactory;
        import mx.core.DragSource;
        import mx.core.FlexGlobals;
        import mx.core.mx_internal;
        import mx.core.DeferredInstanceFromFunction;
        import mx.events.FlexEvent;
        import spark.layouts.BasicLayout;
        import flash.events.EventDispatcher;
        import flash.events.Event;

        // writeWatcher id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[2] = new mx.binding.PropertyWatcher("person",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=2 size=2
        [
        bindings[2],
        bindings[4]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[3] = new mx.binding.PropertyWatcher("background",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=3 size=2
        [
        bindings[3],
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
                                                                         // writeWatcherListeners id=0 size=1
        [
        bindings[0]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[1] = new mx.binding.PropertyWatcher("parentNoteID",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=1 size=1
        [
        bindings[1]
        ]
,
                                                                 propertyGetter
);


        // writeWatcherBottom id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[2].updateParent(target);

 





        // writeWatcherBottom id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].updateParent(target);

 





        // writeWatcherBottom id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[0].updateParent(target);

 





        // writeWatcherBottom id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[1].updateParent(target);

 





    }
}

}
