local ALIAS_URL = require(script.Parent.Parent.ALIAS_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "SetUserTag" }, function(requestBuilder, userId, tag)
		return requestBuilder(ALIAS_URL):path("v1"):path("user"):path("tag"):body({
			targetUserId = userId,
			userTag = tag,
		})
	end)
end
