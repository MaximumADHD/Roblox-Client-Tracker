--[[
	UnfollowUserById API

	Query path: POST /v1/users/{targetUserId}/unfollow
]]
local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

    return roduxNetworking.POST({ Name = "FollowUserById" }, function(requestBuilder, userId: string)
		return requestBuilder(FRIENDS_URL):path("v1"):path("users"):id(userId):path("unfollow"):body({})
	end)
end
