--[[
	UnblockUserById API
	Query path: v1/users/userId/unblock
]]
local root = script.Parent.Parent
local ACCOUNT_SETTINGS_URL = require(root.ACCOUNT_SETTINGS_URL)

type Params = {
	userId: string,
	currentUserId: string?,
}

return function(config: { roduxNetworking: any })
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "UnblockUserById" }, function(requestBuilder, params: Params)
		return requestBuilder(ACCOUNT_SETTINGS_URL, {
				params = params.currentUserId,
			})
			:path("v1")
			:path("users")
			:id(params.userId)
			:path("unblock")
			:body({})
	end)
end
