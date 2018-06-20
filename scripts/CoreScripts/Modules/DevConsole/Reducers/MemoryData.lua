local Immutable = require(script.Parent.Parent.Immutable)

local ClientMemoryUpdateSearchFilter = require(script.Parent.Parent.Actions.ClientMemoryUpdateSearchFilter)
local ServerMemoryUpdateSearchFilter = require(script.Parent.Parent.Actions.ServerMemoryUpdateSearchFilter)

return function(state, action)
	local memoryData = state or {
		clientSearchTerm = "",
		serverSearchTerm = "",
	}

	if action.type == ClientMemoryUpdateSearchFilter.name then
		return Immutable.Set(memoryData, "clientSearchTerm", action.searchTerm)

	elseif action.type == ServerMemoryUpdateSearchFilter.name then
		return Immutable.Set(memoryData, "serverSearchTerm", action.searchTerm)
	end

	return memoryData
end