local Plugin = script.Parent.Parent.Parent.Parent
local Actions = Plugin.Src.Actions
local SetBreakpointEnabled = require(Actions.BreakpointsWindow.SetBreakpointEnabled)

return function(breakpointManager)
	return function(store, contextItems)
		if breakpointManager == nil then
			assert(false)
			return
		end

		-- default to enabled all. If all are already enabled, disable
		local stateToSet = false
		local state = store:getState()
		for id, info in pairs(state.Breakpoint.BreakpointInfo) do
			if info.isEnabled == false then
				stateToSet = true
				break
			end
		end
		
		for id, info in pairs(state.Breakpoint.BreakpointInfo) do
			local bp = breakpointManager:GetBreakpointById(id)
			bp:setEnabled(stateToSet)

			--TODO: remove store dispatch when bpManager Event Listener is set up RIDE-4761
			store:dispatch(SetBreakpointEnabled(id, stateToSet))
		end
	end
end
