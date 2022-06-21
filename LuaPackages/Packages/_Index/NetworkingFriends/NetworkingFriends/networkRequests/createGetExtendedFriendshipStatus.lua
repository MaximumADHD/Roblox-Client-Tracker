--! strict

local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)
local networkingFriendsTypes = require(script.Parent.Parent.networkingFriendsTypes)

return function(config: networkingFriendsTypes.Config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.GET(
		{ Name = "GetExtendedFriendshipStatus" },
		function(requestBuilder: any, queryArgs: { targetUserId: number | string })
			return requestBuilder(FRIENDS_URL)
				:path("v1")
				:path("my")
				:path("friends")
				:id(queryArgs.targetUserId)
				:path("status")
		end
	)
end
