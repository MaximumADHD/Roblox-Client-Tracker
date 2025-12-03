local Immutable = require(script.Parent.Parent.Immutable)

local ClientNetworkUpdateSearchFilter = require(script.Parent.Parent.Actions.ClientNetworkUpdateSearchFilter)
local ServerNetworkUpdateSearchFilter = require(script.Parent.Parent.Actions.ServerNetworkUpdateSearchFilter)

export type State = {
	clientSearchTerm: string,
	serverSearchTerm: string,
}

return function(state: State?, action: {[string]: any}): State
	local networkData = state or {
		clientSearchTerm = "",
		serverSearchTerm = "",
	}

	if action.type == ClientNetworkUpdateSearchFilter.name then
		return Immutable.Set(networkData, "clientSearchTerm", action.searchTerm) :: any

	elseif action.type == ServerNetworkUpdateSearchFilter.name then
		return Immutable.Set(networkData, "serverSearchTerm", action.searchTerm) :: any
	end

	return networkData
end
