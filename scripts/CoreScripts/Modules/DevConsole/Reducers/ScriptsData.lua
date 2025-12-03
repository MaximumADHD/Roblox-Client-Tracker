local Immutable = require(script.Parent.Parent.Immutable)

local ClientScriptsUpdateSearchFilter = require(script.Parent.Parent.Actions.ClientScriptsUpdateSearchFilter)
local ServerScriptsUpdateSearchFilter = require(script.Parent.Parent.Actions.ServerScriptsUpdateSearchFilter)

export type State = {
	clientSearchTerm: string,
	clientTypeFilters: {[any]: any},
	serverSearchTerm: string,
	serverTypeFilters: {[any]: any},
}

return function(state: State?, action: {[string]: any}): State
	local scriptsData = state or {
		clientSearchTerm = "",
		clientTypeFilters = {},
		serverSearchTerm = "",
		serverTypeFilters = {},
	}

	if action.type == ClientScriptsUpdateSearchFilter.name then
		local update = {
			clientSearchTerm = action.searchTerm,
			clientTypeFilters = Immutable.JoinDictionaries(scriptsData.clientTypeFilters, action.filterTypes)
		}
		return Immutable.JoinDictionaries(scriptsData, update) :: any

	elseif action.type == ServerScriptsUpdateSearchFilter.name then

		local update = {
			serverSearchTerm = action.searchTerm,
			serverTypeFilters = Immutable.JoinDictionaries(scriptsData.serverTypeFilters, action.filterTypes)
		}
		return Immutable.JoinDictionaries(scriptsData, update) :: any

	end

	return scriptsData
end
