--!strict
local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)
local networkingFriendsTypes = require(script.Parent.Parent.networkingFriendsTypes)
type LuobuFriendRequestsOptions = networkingFriendsTypes.LuobuOptions & {
	sortOrder: string?,
	limit: number?,
	cursor: string?,
}

return function(config: networkingFriendsTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetLuobuFriendRequests" }, function(requestBuilder: any, queryArgs: LuobuFriendRequestsOptions)
		return requestBuilder(FRIENDS_URL):path("v1"):path("my"):path("luobu-friends"):path("requests"):queryArgs({
			userOpenId = queryArgs.userOpenId,
			userAccessToken = queryArgs.userAccessToken,
			type = queryArgs.type,
			appType = queryArgs.appType,
			sortOrder = queryArgs.sortOrder,
			limit = queryArgs.limit,
			cursor = queryArgs.cursor,
		})
	end)
end
