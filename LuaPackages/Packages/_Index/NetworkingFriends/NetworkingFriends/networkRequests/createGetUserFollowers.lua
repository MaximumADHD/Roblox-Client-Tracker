--!strict
local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)
local networkingFriendsTypes = require(script.Parent.Parent.networkingFriendsTypes)

return function(config: networkingFriendsTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetUserFollowers" }, function(requestBuilder: any, queryArgs: networkingFriendsTypes.RequestWithTargetUser)
		return requestBuilder(FRIENDS_URL):path("v1"):path("users")
			:id(queryArgs.targetUserId):path("followers")
	end)
end
