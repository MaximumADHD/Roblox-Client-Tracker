return function(breakpointManager, stateToSet)
	return function(store, contextItems)
		if breakpointManager == nil then
			assert(false)
			return
		end

		-- default to enabled all. If all are already enabled, disable
		local state = store:getState()
		for id, info in pairs(state.Breakpoint.MetaBreakpoints) do
			local bp = breakpointManager:GetBreakpointById(id)
			bp:SetEnabled(stateToSet)
		end
	end
end
