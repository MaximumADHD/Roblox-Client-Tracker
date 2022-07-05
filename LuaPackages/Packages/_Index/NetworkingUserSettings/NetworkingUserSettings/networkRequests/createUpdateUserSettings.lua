local NetworkingUserSettings = script.Parent.Parent
local API_URL = require(NetworkingUserSettings.API_URL)
local networkRequestsTypes = require(NetworkingUserSettings.Types.networkRequestsTypes)

return function(config: networkRequestsTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.POST(
		script,
		function(requestBuilder, queryArgs: networkRequestsTypes.UpdateUserSettingsQueryArgs)
			return requestBuilder(API_URL):path("user-settings-api"):path("v1"):path("user-settings"):body(queryArgs)
		end
	)
end
