return function(metaBreakpointManager, stateToSet)
	return function(store, contextItems)
		if metaBreakpointManager == nil then
			assert(false)
			return
		end

		-- default to enabled all. If all are already enabled, disable
		local state = store:getState()
		for id, info in pairs(state.Breakpoint.MetaBreakpoints) do
			local bp = metaBreakpointManager:GetBreakpointById(id)
			bp:SetEnabled(stateToSet)
		end
	end
end
