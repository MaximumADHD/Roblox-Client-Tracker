--[[
	FollowUserById API

	Query path: POST /v1/users/{targetUserId}/follow
]]
local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

    return roduxNetworking.POST({ Name = "FollowUserById" }, function(requestBuilder, userId: string)
		return requestBuilder(FRIENDS_URL):path("v1"):path("users"):id(userId):path("follow"):body({})
	end)
end
