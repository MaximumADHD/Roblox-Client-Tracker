local Immutable = require(script.Parent.Parent.Immutable)

local ClientNetworkUpdateSearchFilter = require(script.Parent.Parent.Actions.ClientNetworkUpdateSearchFilter)
local ServerNetworkUpdateSearchFilter = require(script.Parent.Parent.Actions.ServerNetworkUpdateSearchFilter)

return function(state, action)
	local networkData = state or {
		clientSearchTerm = "",
		serverSearchTerm = "",
	}

	if action.type == ClientNetworkUpdateSearchFilter.name then
		return Immutable.Set(networkData, "clientSearchTerm", action.searchTerm)

	elseif action.type == ServerNetworkUpdateSearchFilter.name then
		return Immutable.Set(networkData, "serverSearchTerm", action.searchTerm)
	end

	return networkData
end