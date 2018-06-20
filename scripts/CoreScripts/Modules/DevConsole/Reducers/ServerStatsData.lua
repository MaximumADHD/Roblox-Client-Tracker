local Immutable = require(script.Parent.Parent.Immutable)

local ServerStatsUpdateSearchFilter = require(script.Parent.Parent.Actions.ServerStatsUpdateSearchFilter)

return function(state, action)
	local serverStatsData = state or {
		statsSearchTerm = "",
	}

	if action.type == ServerStatsUpdateSearchFilter.name then
		return Immutable.Set(serverStatsData, "statsSearchTerm", action.searchTerm)
	end

	return serverStatsData
end