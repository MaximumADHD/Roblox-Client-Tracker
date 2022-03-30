--!strict
local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)
local networkingFriendsTypes = require(script.Parent.Parent.networkingFriendsTypes)

return function(config: networkingFriendsTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.POST({ Name = "DeclineAllFriendRequests" }, function(requestBuilder: any, queryArgs: networkingFriendsTypes.RequestCurrentUser)
		return requestBuilder(FRIENDS_URL, { currentUserId = queryArgs.currentUserId }):path("v1"):path("user"):path("friend-requests"):path("decline-all"):body({})
	end)
end
