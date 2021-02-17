local PRESENCE_URL = require(script.Parent.Parent.PRESENCE_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "GetPresencesFromUserIds" }, function(requestBuilder, userIds)
		return requestBuilder(PRESENCE_URL):path("v1"):path("presence"):path("users"):body({
			userIds = userIds,
		})
	end)
end
