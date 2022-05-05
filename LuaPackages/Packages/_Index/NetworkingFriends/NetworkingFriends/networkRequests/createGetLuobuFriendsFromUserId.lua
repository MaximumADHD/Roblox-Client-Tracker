--!strict
local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)
local networkingFriendsTypes = require(script.Parent.Parent.networkingFriendsTypes)

return function(config: networkingFriendsTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetLuobuFriendsFromUserId" }, function(requestBuilder: any, userId: number | string, queryArgs: networkingFriendsTypes.LuobuOptions)
		return requestBuilder(FRIENDS_URL):path("v1"):path("users"):id(userId):path("luobu-friends"):queryArgs({
			userOpenId = queryArgs.userOpenId,
			userAccessToken = queryArgs.userAccessToken,
			type = queryArgs.type,
			appType = queryArgs.appType,
		})
	end)
end
