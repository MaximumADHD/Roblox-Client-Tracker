--[[
	GetFriendshipStatus API

	Query path: /v1/users/{userId}/friends/statuses
]]
local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)

type ParamsType = { currentUserId: string, targetUserId: string }

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.GET(
		{ Name = "GetFriendshipStatus" },
		function(requestBuilder: any, params: ParamsType)
			return requestBuilder(FRIENDS_URL)
				:path("v1")
				:path("users")
				:id(params.currentUserId)
				:path("friends")
				:path("statuses")
				:expandedQueryArgsWithIds("userIds", { params.targetUserId })
		end
	)
end
