local NetworkingUserSettings = script.Parent.Parent
local API_URL = require(NetworkingUserSettings.API_URL)
local networkRequestsTypes = require(NetworkingUserSettings.Types.networkRequestsTypes)

return function(config: networkRequestsTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.GET(
		script,
		function(requestBuilder, queryArgs: networkRequestsTypes.GetUserSettingsQueryArgs)
			return requestBuilder(API_URL)
				:path("user-settings-api")
				:path("v1")
				:path("user-settings")
				:queryArgs(queryArgs)
		end
	)
end
