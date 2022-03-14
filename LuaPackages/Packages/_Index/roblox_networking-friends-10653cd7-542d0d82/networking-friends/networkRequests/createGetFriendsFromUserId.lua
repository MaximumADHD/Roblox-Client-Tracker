local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetFriendsFromUserId" }, function(requestBuilder, userId)
		return requestBuilder(FRIENDS_URL):path("v1"):path("users"):id(userId):path("friends")
	end)
end
