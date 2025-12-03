local Immutable = require(script.Parent.Parent.Immutable)

local ClientMemoryUpdateSearchFilter = require(script.Parent.Parent.Actions.ClientMemoryUpdateSearchFilter)
local ServerMemoryUpdateSearchFilter = require(script.Parent.Parent.Actions.ServerMemoryUpdateSearchFilter)

export type State = {
	clientSearchTerm: string,
	serverSearchTerm: string,
}

return function(state: State?, action: {[string]: any}): State
	local memoryData = state or {
		clientSearchTerm = "",
		serverSearchTerm = "",
	}

	if action.type == ClientMemoryUpdateSearchFilter.name then
		return Immutable.Set(memoryData, "clientSearchTerm", action.searchTerm) :: any

	elseif action.type == ServerMemoryUpdateSearchFilter.name then
		return Immutable.Set(memoryData, "serverSearchTerm", action.searchTerm) :: any
	end

	return memoryData
end
