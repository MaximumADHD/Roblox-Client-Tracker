--[[
	GetBlockedUsers API
	Query path: v1/users/get-detailed-blocked-users
]]
local root = script.Parent.Parent
local ACCOUNT_SETTINGS_URL = require(root.ACCOUNT_SETTINGS_URL)

type Params = {
	currentUserId: string?,
}

return function(config: { roduxNetworking: any })
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetBlockedUsers" }, function(requestBuilder, params: Params?)
		return requestBuilder(ACCOUNT_SETTINGS_URL, {
				currentUserId = params and params.currentUserId or nil,
			})
			:path("v1")
			:path("users")
			:path("get-detailed-blocked-users")
	end)
end
