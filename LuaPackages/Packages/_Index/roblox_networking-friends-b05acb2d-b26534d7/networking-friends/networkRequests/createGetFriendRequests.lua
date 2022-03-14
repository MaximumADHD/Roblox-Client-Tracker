local FRIENDS_URL: string = require(script.Parent.Parent.FRIENDS_URL)
local NetworkingFriendsTypes: table = require(script.Parent.Parent.networkingFriendsTypes)

type FriendRequestsOptions = NetworkingFriendsTypes.FriendRequestsOptions

return function(config: any)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetFriendRequests" }, function(requestBuilder: any, queryArgs: FriendRequestsOptions)
		return requestBuilder(FRIENDS_URL):path("v1"):path("my"):path("friends"):path("requests"):queryArgs({
			fetchMutualFriends = queryArgs.fetchMutualFriends,
			sortOrder = queryArgs.sortOrder,
			limit = queryArgs.limit,
			cursor = queryArgs.cursor,
		})
	end)
end
