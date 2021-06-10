local ALIAS_URL = require(script.Parent.Parent.ALIAS_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "GetTagsFromUserIds" }, function(requestBuilder, userIds)
		return requestBuilder(ALIAS_URL):path("v1"):path("user"):path("get-tags"):body({
			targetUserIds = userIds,
		})
	end)
end
