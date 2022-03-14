local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetFriendRequestsCount" }, function(requestBuilder, userId)
		return requestBuilder(FRIENDS_URL):path("v1"):path("user"):path("friend-requests"):path("count")
	end)
end
