--[[
	GetFollowingsCount API

	Query path: /v1/users/{targetUserId}/followings/count
]]
local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.GET(
		{ Name = "GetFollowingsCount" },
		function(requestBuilder, targetUserId)
			return requestBuilder(FRIENDS_URL)
				:path("v1")
				:path("users")
				:id(targetUserId)
				:path("followings")
				:path("count")
		end
	)
end
