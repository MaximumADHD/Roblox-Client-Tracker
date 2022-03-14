local FRIENDS_URL: string = require(script.Parent.Parent.FRIENDS_URL)
local NetworkingFriendsTypes: table = require(script.Parent.Parent.networkingFriendsTypes)

type RequestWithTargetUser = NetworkingFriendsTypes.RequestWithTargetUser

return function(config: any)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetUserFollowers" }, function(requestBuilder: any, queryArgs: RequestWithTargetUser)
		return requestBuilder(FRIENDS_URL):path("v1"):path("users")
			:id(queryArgs.targetUserId):path("followers")
	end)
end
