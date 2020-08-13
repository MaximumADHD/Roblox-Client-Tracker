--[[
	analytics : Analytics context item from developer framework
	actionToAnalyticsMapping : {string -> string}
		Mapping of Rodux action name (in the action.type field) to name of analytics reporter
]]
return function(analytics, actionToAnalyticsMapping)
	return function(nextDispatch, store)
		return function(action)
			if typeof(action) == "function" then
				return action(store)
			else
				if actionToAnalyticsMapping[action.type] then
					analytics:report(actionToAnalyticsMapping[action.type], action)
				end

				return nextDispatch(action)
			end
		end
	end
end
