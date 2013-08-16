






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
public class _DeskQuadrantWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _DeskQuadrantWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import DeskQuadrant;
        (DeskQuadrant).watcherSetupUtil = new _DeskQuadrantWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          staticPropertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import mx.core.DeferredInstanceFromClass;
        import __AS3__.vec.Vector;
        import flash.events.MouseEvent;
        import mx.binding.IBindingClient;
        import spark.components.BorderContainer;
        import mx.controls.Spacer;
        import mx.containers.TitleWindow;
        import mx.rpc.events.ResultEvent;
        import mx.core.ClassFactory;
        import mx.core.IFactory;
        import mx.events.DragEvent;
        import mx.core.DeferredInstanceFromFunction;
        import spark.components.HGroup;
        import flash.events.EventDispatcher;
        import mx.states.State;
        import flashx.textLayout.formats.Float;
        import mx.controls.HRule;
        import spark.layouts.VerticalLayout;
        import flash.geom.Point;
        import mx.core.IFlexModuleFactory;
        import mx.controls.VRule;
        import mx.binding.BindingManager;
        import mx.managers.PopUpManager;
        import mx.managers.DragManager;
        import mx.core.IUIComponent;
        import mx.controls.Image;
        import spark.components.Group;
        import mx.core.IDeferredInstance;
        import mx.core.IPropertyChangeNotifier;
        import flash.events.IEventDispatcher;
        import spark.components.Label;
        import mx.core.IStateClient2;
        import mx.core.DragSource;
        import mx.core.FlexGlobals;
        import mx.core.mx_internal;
        import mx.events.FlexEvent;
        import flash.profiler.showRedrawRegions;
        import flash.events.Event;

        // writeWatcher id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[1] = new mx.binding.PropertyWatcher("showTop",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=1 size=6
        [
        bindings[1],
        bindings[2],
        bindings[3],
        bindings[4],
        bindings[6],
        bindings[8]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[0] = new mx.binding.PropertyWatcher("showLeft",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=0 size=5
        [
        bindings[0],
        bindings[5],
        bindings[9],
        bindings[10],
        bindings[12]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[3] = new mx.binding.PropertyWatcher("leftCategory",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=3 size=1
        [
        bindings[11]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[4] = new mx.binding.PropertyWatcher("notesDock",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=4 size=2
        [
        bindings[13],
        bindings[14]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[5] = new mx.binding.PropertyWatcher("width",
                                                                             {
                widthChanged: true
            }
,
                                                                         // writeWatcherListeners id=5 size=2
        [
        bindings[13],
        bindings[14]
        ]
,
                                                                 null
);

        // writeWatcher id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[2] = new mx.binding.PropertyWatcher("topCategory",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=2 size=1
        [
        bindings[7]
        ]
,
                                                                 propertyGetter
);


        // writeWatcherBottom id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[1].updateParent(target);

 





        // writeWatcherBottom id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[0].updateParent(target);

 





        // writeWatcherBottom id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].updateParent(target);

 





        // writeWatcherBottom id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[4].updateParent(target);

 





        // writeWatcherBottom id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[4].addChild(watchers[5]);

 





        // writeWatcherBottom id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[2].updateParent(target);

 





    }
}

}
