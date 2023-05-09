--!strict
local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)
local networkingFriendsTypes = require(script.Parent.Parent.networkingFriendsTypes)

return function(config: networkingFriendsTypes.Config): networkingFriendsTypes.GetFriendRecommendationsFromUserId
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetFriendRecommendationsFromUserId" }, function(requestBuilder: any, queryArgs: networkingFriendsTypes.RequestTargetUser)
		return requestBuilder(FRIENDS_URL):path("v1"):path("users"):id(queryArgs.targetUserId):path("friends"):path("recommendations"):queryArgs({
			source = queryArgs.source,
		})
	end)
end
