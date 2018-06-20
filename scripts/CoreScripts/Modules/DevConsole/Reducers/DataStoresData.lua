local Immutable = require(script.Parent.Parent.Immutable)

local DataStoresUpdateSearchFilter = require(script.Parent.Parent.Actions.DataStoresUpdateSearchFilter)

return function(state, action)
	local dataStoresData = state or {
		storesSearchTerm = "",
	}

    if action.type == DataStoresUpdateSearchFilter.name then
        return Immutable.Set(dataStoresData, "storesSearchTerm", action.searchTerm)
    end

	return dataStoresData
end