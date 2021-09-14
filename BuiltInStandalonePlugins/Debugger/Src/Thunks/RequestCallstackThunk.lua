local Plugin = script.Parent.Parent.Parent
local Models = Plugin.Src.Models
local CallstackRow = require(Models.CallstackRow)
local AddCallstack = require(Plugin.Src.Actions.Callstack.AddCallstack)
local StackFrame = require(Plugin.Src.Mocks.StackFrame)

return function(threadState, dataModel, debuggerStateToken)
	return function(store, contextItems)
		threadState:requestCallstack()
		:andThen(function (callstack : { StackFrame.StackFrame })
			local callstackRows = {}
			for stackFrameId, stackFrame in ipairs(callstack) do
				local arrowColumnValue = {}
				if (stackFrameId == 1) then
					arrowColumnValue = {
						Value = "",
						LeftIcon = CallstackRow.ICON_FRAME_TOP,
					}
				end

				local scriptInstance = stackFrame:getScriptRef():find(dataModel)
				if (scriptInstance == nil) then
					warn("The script instance was returned as nil.")
				end
				
				local sourceName = scriptInstance.name

				local data = {
					arrowColumn = arrowColumnValue,
					frameColumn = stackFrameId,
					layerColumn = stackFrame:getFrameType(),
					functionColumn = stackFrame:getFrameName(),
					lineColumn = stackFrame:getLine(),
					sourceColumn = sourceName,
				}
				table.insert(callstackRows, CallstackRow.fromData(data))
			end
			store:dispatch(AddCallstack(threadState:getThreadId(), callstackRows, debuggerStateToken))
		end)
		:catch(function (callstack : { StackFrame.StackFrame })
			warn("Encountered an error during asynchronous execution: Request Callstack")
			contextItems.analytics:report("ThunkFailed", "RequestCallstackThunk")
		end)
    end
end
