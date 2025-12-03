local Immutable = require(script.Parent.Parent.Immutable)

local ServerStatsUpdateSearchFilter = require(script.Parent.Parent.Actions.ServerStatsUpdateSearchFilter)

export type State = {
	statsSearchTerm: string,
}

return function(state: State?, action: {[string]: any}): State
	local serverStatsData = state or {
		statsSearchTerm = "",
	}

	if action.type == ServerStatsUpdateSearchFilter.name then
		return Immutable.Set(serverStatsData, "statsSearchTerm", action.searchTerm) :: any
	end

	return serverStatsData
end
