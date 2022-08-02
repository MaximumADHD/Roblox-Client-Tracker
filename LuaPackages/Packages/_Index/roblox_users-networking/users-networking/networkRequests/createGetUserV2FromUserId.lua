local USERS_URL = require(script.Parent.Parent.USERS_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetUserV2FromUserId" }, function(requestBuilder, userId)
		return requestBuilder(USERS_URL):path("v1"):path("users"):id(userId)
	end)
end
