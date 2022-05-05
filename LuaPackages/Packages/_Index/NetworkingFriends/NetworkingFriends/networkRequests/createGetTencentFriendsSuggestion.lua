--!strict
local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)
local networkingFriendsTypes = require(script.Parent.Parent.networkingFriendsTypes)

return function(config: networkingFriendsTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetTencentFriendsSuggestion" }, function(requestBuilder: any, queryArgs: networkingFriendsTypes.LuobuOptions)
		return requestBuilder(FRIENDS_URL):path("v1"):path("tecent-friends-suggestion"):queryArgs({
			userOpenId = queryArgs.userOpenId,
			userAccessToken = queryArgs.userAccessToken,
			type = queryArgs.type,
			appType = queryArgs.appType,
		})
	end)
end
