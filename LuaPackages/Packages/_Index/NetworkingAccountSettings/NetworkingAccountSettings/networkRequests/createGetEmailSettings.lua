local NetworkingAccountSettings = script.Parent.Parent
local networkRequestsTypes = require(NetworkingAccountSettings.Types.networkRequestsTypes)

local ACCOUNT_SETTINGS_URL = require(NetworkingAccountSettings.ACCOUNT_SETTINGS_URL)

return function(config: networkRequestsTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetEmailSettings" }, function(requestBuilder)
		return requestBuilder(ACCOUNT_SETTINGS_URL):path("v1"):path("email")
	end)
end
