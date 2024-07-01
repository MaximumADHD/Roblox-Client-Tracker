local USERS_URL = require(script.Parent.Parent.USERS_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "GetSkinnyUsersFromUserIds" }, function(requestBuilder, userIds)
		return requestBuilder(USERS_URL):path("v1"):path("users"):body({
			userIds = userIds,
		})
	end)
end
