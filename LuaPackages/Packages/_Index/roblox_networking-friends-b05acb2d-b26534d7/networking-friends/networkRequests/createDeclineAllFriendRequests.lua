local FRIENDS_URL: string = require(script.Parent.Parent.FRIENDS_URL)
local NetworkingFriendsTypes: table = require(script.Parent.Parent.networkingFriendsTypes)

type RequestCurrentUser = NetworkingFriendsTypes.RequestCurrentUser

return function(config: any)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.POST({ Name = "DeclineAllFriendRequests" }, function(requestBuilder: any, queryArgs: RequestCurrentUser)
		return requestBuilder(FRIENDS_URL, { currentUserId = queryArgs.currentUserId }):path("v1"):path("user"):path("friend-requests"):path("decline-all"):body({})
	end)
end
