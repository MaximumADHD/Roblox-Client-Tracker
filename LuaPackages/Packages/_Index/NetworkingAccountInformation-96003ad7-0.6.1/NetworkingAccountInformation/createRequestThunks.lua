local NetworkingAccountInformation = script.Parent
local networkRequests = NetworkingAccountInformation.networkRequests
local createGetPhoneInformation = require(networkRequests.createGetPhoneInformation)
local networkRequestsTypes = require(NetworkingAccountInformation.Types.networkRequestsTypes)

return function(config: networkRequestsTypes.Config): networkRequestsTypes.RequestThunks
	return {
		GetPhoneInformation = createGetPhoneInformation(config),
	}
end
