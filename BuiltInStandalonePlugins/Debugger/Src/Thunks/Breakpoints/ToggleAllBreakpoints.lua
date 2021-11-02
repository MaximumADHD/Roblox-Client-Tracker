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
			bp:SetEnabled(stateToSet)
		end
	end
end
