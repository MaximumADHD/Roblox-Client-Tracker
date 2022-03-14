local FRIENDS_URL = require(script.Parent.Parent.FRIENDS_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "UnfriendTargetUserId" }, function(requestBuilder, params)
		return requestBuilder(FRIENDS_URL, {currentUserId = params.currentUserId}):path("v1"):path("users"):id(params.targetUserId):path("unfriend"):body({})
	end)
end
