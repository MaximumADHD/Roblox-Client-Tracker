local Plugin = script.Parent.Parent.Parent.Parent
local Models = Plugin.Src.Models
local CallstackRow = require(Models.Callstack.CallstackRow)
local Actions = Plugin.Src.Actions
local AddCallstack = require(Actions.Callstack.AddCallstack)
local SetFilenameForGuidAction = require(Actions.Common.SetFilenameForGuid)

return function(threadState, debuggerConnection, debuggerStateToken, scriptChangeService)
	return function(store, contextItems)
		debuggerConnection:Populate(threadState, function ()
			local callstack = threadState:GetChildren()

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
				store:dispatch(SetFilenameForGuidAction(stackFrame.Script, ""))
				scriptChangeService:StartWatchingScript(stackFrame.Script, store:getState().Common.currentDebuggerConnectionId)
				table.insert(callstackRows, CallstackRow.fromData(data))
			end
			
			-- only add the callstack if there are rows to add
			if table.getn(callstackRows) > 0 then
				store:dispatch(AddCallstack(threadState.ThreadId, callstackRows, debuggerStateToken))
			end
		end)
    end
end
