--TODO SOCCONN-1586 get UrlBuilder to be cachable
local NetworkingAccountInformation = script.Parent.Parent
local networkRequestsTypes = require(NetworkingAccountInformation.Types.networkRequestsTypes)

local ACCOUNT_INFORMATION_URL = require(NetworkingAccountInformation.ACCOUNT_INFORMATION_URL)

return function(config: networkRequestsTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetPhoneInformation" }, function(requestBuilder)
		return requestBuilder(ACCOUNT_INFORMATION_URL):path("v1"):path("phone")
	end)
end
