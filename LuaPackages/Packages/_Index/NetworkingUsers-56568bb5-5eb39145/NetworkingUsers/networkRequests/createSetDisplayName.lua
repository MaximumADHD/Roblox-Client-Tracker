local USERS_URL = require(script.Parent.Parent.USERS_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.PATCH({ Name = "SetDisplayName" }, function(requestBuilder, userId, displayName)
		return requestBuilder(USERS_URL):path("v1"):path("users"):id(userId):path("display-names"):body({
			newDisplayName = displayName,
		})
	end)
end
