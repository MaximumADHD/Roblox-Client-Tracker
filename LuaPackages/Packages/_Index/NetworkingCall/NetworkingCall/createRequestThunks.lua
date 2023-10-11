--!strict
local networkingCallTypes = require(script.Parent.networkingCallTypes)

local networkRequests: any = script.Parent.networkRequests
local createGetCallHistory: (networkingCallTypes.Config) -> any = require(networkRequests.createGetCallHistory)
local createGetSuggestedCallees: (networkingCallTypes.Config) -> any =
	require(networkRequests.createGetSuggestedCallees)

return function(config: networkingCallTypes.Config): networkingCallTypes.RequestThunks
	return {
		GetCallHistory = createGetCallHistory(config),
		GetSuggestedCallees = createGetSuggestedCallees(config),
	}
end
