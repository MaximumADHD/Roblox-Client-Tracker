local CHAT_URL = require(script.Parent.Parent.CHAT_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "MarkAsSeen" }, function(requestBuilder, conversationsToMarkSeen)
		return requestBuilder(CHAT_URL):path("v2"):path("mark-as-seen"):body({
			conversationsToMarkSeen = conversationsToMarkSeen,
		})
	end)
end
