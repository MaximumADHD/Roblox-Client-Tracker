--!strict
local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)
local networkingFriendsTypes = require(script.Parent.Parent.networkingFriendsTypes)

return function(config: networkingFriendsTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.POST({ Name = "AcceptFriendRequestWithToken" }, function(requestBuilder: any, queryArgs: networkingFriendsTypes.RequestWithTargetUserAndFriendingToken)
		return requestBuilder(FRIENDS_URL, { currentUserId = queryArgs.currentUserId }):path("v1"):path("users"):id(queryArgs.targetUserId):path("accept-friend-request-with-token"):body({
			friendingToken = queryArgs.friendingToken
		})
	end)
end
