
/**
 *  Generated by mxmlc 4.0
 *
 *  Package:    
 *  Class:      NotesPalette
 *  Source:     C:\plush2\OpenScrum\client_src\src\NotesPalette.mxml
 *  Template:   flex2/compiler/mxml/gen/ClassDef.vm
 *  Time:       2013.02.10 19:09:37 MSK
 */

package 
{

import StickyNote;
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
import spark.components.Group;
import spark.components.HGroup;
import spark.components.Label;
import spark.layouts.HorizontalLayout;



//  begin class def
public class NotesPalette
    extends spark.components.Group
{

    //  instance variables

    //  type-import dummies



    //  constructor (Flex display object)
    /**
     * @private
     **/
    public function NotesPalette()
    {
        super();

        mx_internal::_document = this;




        // layer initializers

       
        // properties
        this.width = 220;
        this.height = 20;
        this.layout = _NotesPalette_HorizontalLayout1_c();
        this.mxmlContent = [_NotesPalette_Label1_c(), _NotesPalette_HGroup1_c()];


        // events












    }

    /**
     * @private
     **/ 
    private var __moduleFactoryInitialized:Boolean = false;

    /**
     * @private
     * Override the module factory so we can defer setting style declarations
     * until a module factory is set. Without the correct module factory set
     * the style declaration will end up in the wrong style manager.
     **/ 
    override public function set moduleFactory(factory:IFlexModuleFactory):void
    {
        super.moduleFactory = factory;
        
        if (__moduleFactoryInitialized)
            return;

        __moduleFactoryInitialized = true;


        // our style settings



                         
    }
 
    //  initialize()
    /**
     * @private
     **/
    override public function initialize():void
    {


        super.initialize();
    }


    //  scripts
    //  end scripts


    //  supporting function definitions for properties, events, styles, effects
private function _NotesPalette_HorizontalLayout1_c() : spark.layouts.HorizontalLayout
{
	var temp : spark.layouts.HorizontalLayout = new spark.layouts.HorizontalLayout();
	return temp;
}

private function _NotesPalette_Label1_c() : spark.components.Label
{
	var temp : spark.components.Label = new spark.components.Label();
	temp.text = "новые задачи: ";
	temp.percentHeight = 100.0;
	temp.setStyle("verticalAlign", "middle");
	if (!temp.document) temp.document = this;
	return temp;
}

private function _NotesPalette_HGroup1_c() : spark.components.HGroup
{
	var temp : spark.components.HGroup = new spark.components.HGroup();
	temp.gap = -20;
	temp.mxmlContent = [_NotesPalette_StickyNote1_c(), _NotesPalette_StickyNote2_c(), _NotesPalette_StickyNote3_c(), _NotesPalette_StickyNote4_c(), _NotesPalette_StickyNote5_c(), _NotesPalette_StickyNote6_c()];
	if (!temp.document) temp.document = this;
	return temp;
}

private function _NotesPalette_StickyNote1_c() : StickyNote
{
	var temp : StickyNote = new StickyNote();
	temp.rotation = -45;
	temp.scaleX = 0.2;
	temp.scaleY = 0.2;
	temp.color = 12057175;
	temp.isDocked = true;
	if (!temp.document) temp.document = this;
	return temp;
}

private function _NotesPalette_StickyNote2_c() : StickyNote
{
	var temp : StickyNote = new StickyNote();
	temp.rotation = -45;
	temp.scaleX = 0.2;
	temp.scaleY = 0.2;
	temp.isDocked = true;
	if (!temp.document) temp.document = this;
	return temp;
}

private function _NotesPalette_StickyNote3_c() : StickyNote
{
	var temp : StickyNote = new StickyNote();
	temp.rotation = -45;
	temp.scaleX = 0.2;
	temp.scaleY = 0.2;
	temp.color = 8568319;
	temp.isDocked = true;
	if (!temp.document) temp.document = this;
	return temp;
}

private function _NotesPalette_StickyNote4_c() : StickyNote
{
	var temp : StickyNote = new StickyNote();
	temp.rotation = -45;
	temp.scaleX = 0.2;
	temp.scaleY = 0.2;
	temp.color = 15612217;
	temp.isDocked = true;
	if (!temp.document) temp.document = this;
	return temp;
}

private function _NotesPalette_StickyNote5_c() : StickyNote
{
	var temp : StickyNote = new StickyNote();
	temp.rotation = -45;
	temp.scaleX = 0.2;
	temp.scaleY = 0.2;
	temp.color = 16100681;
	temp.isDocked = true;
	if (!temp.document) temp.document = this;
	return temp;
}

private function _NotesPalette_StickyNote6_c() : StickyNote
{
	var temp : StickyNote = new StickyNote();
	temp.rotation = -45;
	temp.scaleX = 0.2;
	temp.scaleY = 0.2;
	temp.color = 4847093;
	temp.isDocked = true;
	if (!temp.document) temp.document = this;
	return temp;
}





    //  embed carrier vars
    //  end embed carrier vars


//  end class def
}

//  end package def
}
