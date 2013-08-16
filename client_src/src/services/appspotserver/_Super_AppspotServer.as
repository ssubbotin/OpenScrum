/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - AppspotServer.as.
 */
package services.appspotserver
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.HTTPServiceWrapper;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.http.HTTPMultiService;
import mx.rpc.http.Operation;
import valueObjects.Burndown;
import valueObjects.SprintHistory;
import mx.core.FlexGlobals;

import com.adobe.serializers.xml.XMLSerializationFilter;

[ExcludeClass]
internal class _Super_AppspotServer extends com.adobe.fiber.services.wrapper.HTTPServiceWrapper
{
    private static var serializer0:XMLSerializationFilter = new XMLSerializationFilter();

    // Constructor
    public function _Super_AppspotServer()
    {
        // initialize service control
        _serviceControl = new mx.rpc.http.HTTPMultiService("");
         var operations:Array = new Array();
         var operation:mx.rpc.http.Operation;
         var argsArray:Array;

		 var serverURL:String = FlexGlobals.topLevelApplication.parameters["serverURL"] as String;
         operation = new mx.rpc.http.Operation(null, "getSprintHistory");
         operation.url = serverURL + "/getsprinthistory";
         operation.method = "GET";
         argsArray = new Array("sprint_id");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/::history";
         operation.resultElementType = valueObjects.SprintHistory;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "getTaskHistory");
         operation.url = serverURL + "/gettaskhistory";
         operation.method = "GET";
         argsArray = new Array("task_id");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/::history";
         operation.resultElementType = valueObjects.SprintHistory;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "getBurnDown");
         operation.url = serverURL + "/getburndown";
         operation.method = "GET";
         argsArray = new Array("sprint_id");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/::burndown";
         operation.resultElementType = valueObjects.Burndown;
         operations.push(operation);

         _serviceControl.operationList = operations;  


         preInitializeService();
         model_internal::initialize();
    }
    
    //init initialization routine here, child class to override
    protected function preInitializeService():void
    {
      
    }
    

    /**
      * This method is a generated wrapper used to call the 'getSprintHistory' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getSprintHistory(sprint_id:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getSprintHistory");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(sprint_id) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getTaskHistory' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTaskHistory(task_id:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTaskHistory");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(task_id) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getBurnDown' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getBurnDown(sprint_id:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getBurnDown");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(sprint_id) ;
        return _internal_token;
    }
     
}

}
