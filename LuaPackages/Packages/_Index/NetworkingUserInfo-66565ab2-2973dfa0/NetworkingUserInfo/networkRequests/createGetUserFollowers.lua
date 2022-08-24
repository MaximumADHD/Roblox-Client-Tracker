--[[
	GetUserFollowers API 

	Query path: /v1/users/{targetUserId}/followers
]]
local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetUserFollowers" }, function(requestBuilder, targetUserId)
		return requestBuilder(FRIENDS_URL)
			:path("v1")
			:path("users")
			:id(targetUserId)
			:path("followers")
	end)
end
