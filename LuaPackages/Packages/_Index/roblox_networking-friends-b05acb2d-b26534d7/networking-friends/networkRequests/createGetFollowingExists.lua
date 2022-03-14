local FRIENDS_URL: string = require(script.Parent.Parent.FRIENDS_URL)
local NetworkingFriendsTypes: table = require(script.Parent.Parent.networkingFriendsTypes)

type RequestTargetUserIdsType = NetworkingFriendsTypes.RequestTargetUserIdsType

return function(config: any)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.POST({ Name = "GetFollowingExists" }, function(requestBuilder: any, queryArgs: RequestTargetUserIdsType)
			return requestBuilder(FRIENDS_URL):path("v1"):path("user"):path("following-exists")
				:body({
					targetUserIds = queryArgs.targetUserIds
				})
		end
	)
end
