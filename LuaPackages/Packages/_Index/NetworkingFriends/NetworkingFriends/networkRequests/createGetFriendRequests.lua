--!strict
local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)
local networkingFriendsTypes = require(script.Parent.Parent.networkingFriendsTypes)

return function(config: networkingFriendsTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetFriendRequests" }, function(requestBuilder: any, queryArgs: networkingFriendsTypes.FriendRequestsOptions)
		return requestBuilder(FRIENDS_URL, { currentUserId = queryArgs.currentUserId }):path("v1"):path("my"):path("friends"):path("requests"):queryArgs({
			fetchMutualFriends = queryArgs.fetchMutualFriends,
			sortOrder = queryArgs.sortOrder,
			limit = queryArgs.limit,
			cursor = queryArgs.cursor,
		})
	end)
end
