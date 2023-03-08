--!strict

local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)
local networkingFriendsTypes = require(script.Parent.Parent.networkingFriendsTypes)

return function(config: networkingFriendsTypes.Config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.GET(
		{ Name = "GetFriendshipStatus" },
		function(requestBuilder: any, params: networkingFriendsTypes.RequestWithTargetUser)
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
