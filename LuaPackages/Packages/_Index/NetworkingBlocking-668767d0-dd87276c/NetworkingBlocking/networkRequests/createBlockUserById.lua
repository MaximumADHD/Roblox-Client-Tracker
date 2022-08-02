--[[
	BlockUserById API

	Query path: v1/users/userId/block
]]
local ACCOUNT_SETTINGS_URL = require(script.Parent.Parent.ACCOUNT_SETTINGS_URL)

type Params = {
	userId: string
}

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "BlockUserById" }, function(requestBuilder, params: Params)
		return requestBuilder(ACCOUNT_SETTINGS_URL):path("v1"):path("users"):id(params.userId):path("block"):body({})
	end)
end
