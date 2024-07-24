--!strict
--[[
	RequestFriendshipFromUserId API
	Query path: /v1/users/{targetUserId}/friends/request-friendship
	Body: {
		friendshipOriginSourceType = ...
		senderNickname = ...
	}
]]

local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)
local networkingFriendsTypes = require(script.Parent.Parent.networkingFriendsTypes)

type FriendshipRequest = networkingFriendsTypes.RequestWithTargetUser & {
	friendshipOriginSourceType: string?,
	senderNickname: string?,
}

return function(config: networkingFriendsTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.POST(
		{ Name = "RequestFriendshipFromUserId" },
		function(requestBuilder: any, queryArgs: FriendshipRequest)
			return requestBuilder(FRIENDS_URL, { currentUserId = queryArgs.currentUserId })
				:path("v1")
				:path("users")
				:id(queryArgs.targetUserId)
				:path("request-friendship")
				:body({
					friendshipOriginSourceType = queryArgs.friendshipOriginSourceType,
					senderNickname = queryArgs.senderNickname,
				})
		end
	)
end
