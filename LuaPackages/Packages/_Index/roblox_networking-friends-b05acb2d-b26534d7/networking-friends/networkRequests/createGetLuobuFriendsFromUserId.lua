local FRIENDS_URL: string = require(script.Parent.Parent.FRIENDS_URL)
local NetworkingFriendsTypes: table = require(script.Parent.Parent.networkingFriendsTypes)

export type LuobuOptions = NetworkingFriendsTypes.LuobuOptions

return function(config: any)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetLuobuFriendsFromUserId" }, function(requestBuilder: any, userId: number | string, queryArgs: LuobuOptions)
		return requestBuilder(FRIENDS_URL):path("v1"):path("users"):id(userId):path("luobu-friends"):queryArgs({
			userOpenId = queryArgs.userOpenId,
			userAccessToken = queryArgs.userAccessToken,
			type = queryArgs.type,
			appType = queryArgs.appType,
		})
	end)
end
