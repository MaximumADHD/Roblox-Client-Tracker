local Immutable = require(script.Parent.Parent.Immutable)

local ClientScriptsUpdateSearchFilter = require(script.Parent.Parent.Actions.ClientScriptsUpdateSearchFilter)
local ServerScriptsUpdateSearchFilter = require(script.Parent.Parent.Actions.ServerScriptsUpdateSearchFilter)

return function(state, action)
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
		return Immutable.JoinDictionaries(scriptsData, update)

	elseif action.type == ServerScriptsUpdateSearchFilter.name then

		local update = {
			serverSearchTerm = action.searchTerm,
			serverTypeFilters = Immutable.JoinDictionaries(scriptsData.serverTypeFilters, action.filterTypes)
		}
		return Immutable.JoinDictionaries(scriptsData, update)

	end

	return scriptsData
end