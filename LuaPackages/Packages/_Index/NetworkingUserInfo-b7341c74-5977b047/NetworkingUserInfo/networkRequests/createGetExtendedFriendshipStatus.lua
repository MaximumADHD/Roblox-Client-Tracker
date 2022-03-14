--[[
	GetExtendedFriendshipStatus API

	GET /v1/my/friends/{userId}/status
]]
local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.GET(
		{ Name = "GetExtendedFriendshipStatus" },
		function(requestBuilder: any, targetUserId: string)
			return requestBuilder(FRIENDS_URL)
				:path("v1")
				:path("my")
				:path("friends")
				:id(targetUserId)
				:path("status")
		end
	)
end
