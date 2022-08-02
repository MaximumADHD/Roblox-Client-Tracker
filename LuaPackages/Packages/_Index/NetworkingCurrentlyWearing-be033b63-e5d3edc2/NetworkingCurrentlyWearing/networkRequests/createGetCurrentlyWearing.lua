--[[
	GetCurrentlyWearing web API

	Query path: /v1/users/{userId}/currently-wearing
]]
local AVATAR_URL = require(script.Parent.Parent.AVATAR_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetCurrentlyWearing" }, function(requestBuilder, userId)
		return requestBuilder(AVATAR_URL):path("v1"):path("users"):id(userId):path("currently-wearing")
	end)
end
