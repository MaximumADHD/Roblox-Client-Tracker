local Immutable = require(script.Parent.Parent.Immutable)

local DataStoresUpdateSearchFilter = require(script.Parent.Parent.Actions.DataStoresUpdateSearchFilter)

export type State = {
	storesSearchTerm: string,
}

return function(state: State?, action: {[string]: any}): State
	local dataStoresData: State = state or {
		storesSearchTerm = "",
	}

    if action.type == DataStoresUpdateSearchFilter.name then
        return Immutable.Set(dataStoresData, "storesSearchTerm", action.searchTerm) :: any
    end

	return dataStoresData
end
