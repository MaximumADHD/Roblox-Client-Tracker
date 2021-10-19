local Plugin = script.Parent.Parent.Parent
local Models = Plugin.Src.Models
local CallstackRow = require(Models.Callstack.CallstackRow)
local AddCallstack = require(Plugin.Src.Actions.Callstack.AddCallstack)

return function(threadState, debuggerConnection, debuggerStateToken)
	return function(store, contextItems)
		debuggerConnection:Populate(threadState, function ()
			local callstack = threadState.GetChildren()

			local callstackRows = {}
			for stackFrameId, stackFrame in ipairs(callstack) do
				local arrowColumnValue = {}
				if (stackFrameId == 1) then
					arrowColumnValue = {
						Value = "",
						LeftIcon = CallstackRow.ICON_FRAME_TOP,
					}
				end

				local data = {
					arrowColumn = arrowColumnValue,
					frameColumn = stackFrameId,
					layerColumn = stackFrame.FrameType,
					functionColumn = stackFrame.FrameName,
					lineColumn = stackFrame.Line,
					sourceColumn = stackFrame.Script,
				}
				table.insert(callstackRows, CallstackRow.fromData(data))
			end
			store:dispatch(AddCallstack(threadState.ThreadId, callstackRows, debuggerStateToken))
		end)
    end
end
