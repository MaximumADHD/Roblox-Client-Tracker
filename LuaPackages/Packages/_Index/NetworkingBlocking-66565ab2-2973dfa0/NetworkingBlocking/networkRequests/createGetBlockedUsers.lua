--[[
	GetBlockedUsers API

	Query path: v1/users/get-blocked-users
]]
local ACCOUNT_SETTINGS_URL = require(script.Parent.Parent.ACCOUNT_SETTINGS_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetBlockedUsers" }, function(requestBuilder)
		return requestBuilder(ACCOUNT_SETTINGS_URL):path("v1"):path("users"):path("get-blocked-users")
	end)
end
