--[[
	BlockUserById API
	Query path: v1/users/userId/block
]]
local root = script.Parent.Parent
local ACCOUNT_SETTINGS_URL = require(root.ACCOUNT_SETTINGS_URL)

type Params = {
	userId: string,
	currentUserId: string?,
}

return function(config: { roduxNetworking: any })
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "BlockUserById" }, function(requestBuilder, params: Params)
		return requestBuilder(ACCOUNT_SETTINGS_URL, {
				currentUserId = params.currentUserId,
			})
			:path("v1")
			:path("users")
			:id(params.userId)
			:path("block")
			:body({})
	end)
end
