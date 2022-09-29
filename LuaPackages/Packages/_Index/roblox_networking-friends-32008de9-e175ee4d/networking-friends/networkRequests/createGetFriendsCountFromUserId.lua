--[[
	GetFriendsCountFromUserId API
	Query path: /v1/users/{userId}/friends/count
]]
local FRIENDS_URL: string = require(script.Parent.Parent.FRIENDS_URL)

return function(config: any)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.GET(
		{ Name = "GetFriendsCountFromUserId" },
		function(requestBuilder: any, userId: number | string)
			return requestBuilder(FRIENDS_URL):path("v1"):path("users"):id(userId):path("friends"):path("count")
		end
	)
end
