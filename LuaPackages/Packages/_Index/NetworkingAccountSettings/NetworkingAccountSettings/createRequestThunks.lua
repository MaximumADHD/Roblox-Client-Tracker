local NetworkingAccountSettings = script.Parent
local networkRequests = NetworkingAccountSettings.networkRequests
local createGetEmailSettings = require(networkRequests.createGetEmailSettings)
local networkRequestsTypes = require(NetworkingAccountSettings.Types.networkRequestsTypes)

return function(config: networkRequestsTypes.Config): networkRequestsTypes.RequestThunks
	return {
		GetEmailSettings = createGetEmailSettings(config),
	}
end
