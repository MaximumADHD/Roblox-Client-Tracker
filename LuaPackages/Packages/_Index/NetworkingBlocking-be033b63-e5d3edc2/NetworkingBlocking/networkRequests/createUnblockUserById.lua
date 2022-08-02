--[[
	UnblockUserById API

	Query path: v1/users/userId/unblock
]]
local ACCOUNT_SETTINGS_URL = require(script.Parent.Parent.ACCOUNT_SETTINGS_URL)

type Params = {
	userId: string
}

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "UnblockUserById" }, function(requestBuilder, params: Params)
		return requestBuilder(ACCOUNT_SETTINGS_URL):path("v1"):path("users"):id(params.userId):path("unblock"):body({})
	end)
end
