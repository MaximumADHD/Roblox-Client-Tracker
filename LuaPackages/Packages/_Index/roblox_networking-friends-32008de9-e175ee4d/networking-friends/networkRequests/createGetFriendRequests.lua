local FRIENDS_URL: string = require(script.Parent.Parent.FRIENDS_URL)
local NetworkingFriendsTypes: table = require(script.Parent.Parent.networkingFriendsTypes)

type FriendRequestsOptions = NetworkingFriendsTypes.FriendRequestsOptions

return function(config: any)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetFriendRequests" }, function(requestBuilder: any, params: FriendRequestsOptions)
		return requestBuilder(FRIENDS_URL):path("v1"):path("my"):path("friends"):path("requests"):queryArgs({
			fetchMutualFriends = params.fetchMutualFriends,
			sortOrder = params.sortOrder,
			limit = params.limit,
			cursor = params.cursor,
		})
	end)
end
