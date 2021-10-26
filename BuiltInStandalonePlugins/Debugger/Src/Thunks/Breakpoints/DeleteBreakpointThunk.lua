local Plugin = script.Parent.Parent.Parent.Parent
local Actions = Plugin.Src.Actions
local DeleteBreakpoint = require(Actions.BreakpointsWindow.DeleteBreakpoint)

return function(breakpointId : number, breakpointManager)
	return function(store, contextItems)
		if breakpointManager == nil then
			assert(false)
			return
		end
		
		breakpointManager:RemoveBreakpointById(breakpointId)
		
		-- TODO: Once BreakpointManager Event Listener file is implemented in RIDE-4761, then this thunk shouldn't actually call 
		-- store:dispatch(DeleteBreakpoint(breakpointId)) since that should be done by the event listener once it has gotten the signal 
		-- from the BreakpointManager in DebuggerV2
		store:dispatch(DeleteBreakpoint(breakpointId))
	end
end
