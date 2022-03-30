--!strict
local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)
local networkingFriendsTypes = require(script.Parent.Parent.networkingFriendsTypes)

return function(config: networkingFriendsTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.POST({ Name = "GetFollowingExists" }, function(requestBuilder: any, queryArgs: networkingFriendsTypes.RequestTargetUserIdsType)
			return requestBuilder(FRIENDS_URL):path("v1"):path("user"):path("following-exists")
				:body({
					targetUserIds = queryArgs.targetUserIds
				})
		end
	)
end
