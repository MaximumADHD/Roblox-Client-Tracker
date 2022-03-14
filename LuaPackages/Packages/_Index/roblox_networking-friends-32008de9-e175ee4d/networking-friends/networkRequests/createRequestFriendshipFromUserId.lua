--[[
	RequestFriendshipFromUserId API
	Query path: /v1/users/{targetUserId}/friends/request-friendship
	Body: {
		friendshipOriginSourceType = ...
	}
]]

local FRIENDS_URL: string = require(script.Parent.Parent.FRIENDS_URL)
local NetworkingFriendsTypes: table = require(script.Parent.Parent.networkingFriendsTypes)

type FriendshipRequest = NetworkingFriendsTypes.RequestWithTargetUser & {
	friendshipOriginSourceType: string?
}

return function(config: any)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.POST({ Name = "RequestFriendshipFromUserId" }, function(requestBuilder: any, params: FriendshipRequest)
		return requestBuilder(FRIENDS_URL, { currentUserId = params.currentUserId }):path("v1"):path("users"):id(params.targetUserId):path("request-friendship"):body({
			friendshipOriginSourceType = params.friendshipOriginSourceType
		})
	end)
end
