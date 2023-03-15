--!strict
local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)
local networkingFriendsTypes = require(script.Parent.Parent.networkingFriendsTypes)

return function(config: networkingFriendsTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.GET(
		{ Name = "GetFollowersCount" },
		function(requestBuilder: any, targetUserId: number | string)
			return requestBuilder(FRIENDS_URL):path("v1"):path("users"):id(targetUserId):path("followers"):path("count")
		end
	)
end
