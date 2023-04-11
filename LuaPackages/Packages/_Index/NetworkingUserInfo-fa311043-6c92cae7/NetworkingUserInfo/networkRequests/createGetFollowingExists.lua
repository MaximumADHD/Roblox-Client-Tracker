--[[
	GetFollowingExists API - Note this is a POST endpoint but we use it to Get data, so we refer to it as get.

	Query path: /v1/user/following-exists
]]
local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST(
		{ Name = "GetFollowingExists" },
		function(requestBuilder, targetUserIds)
			return requestBuilder(FRIENDS_URL)
				:path("v1")
				:path("user")
				:path("following-exists")
				:body({
					targetUserIds = targetUserIds
				})
		end
	)
end
