--!strict
local networkingCallTypes = require(script.Parent.networkingCallTypes)

local networkRequests: any = script.Parent.networkRequests
local createGetCallList: (networkingCallTypes.Config) -> any = require(networkRequests.createGetCallList)

return function(config: networkingCallTypes.Config): networkingCallTypes.RequestThunks
	return {
		GetCallList = createGetCallList(config),
	}
end
