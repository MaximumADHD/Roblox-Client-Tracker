local CHAT_URL = require(script.Parent.Parent.CHAT_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "MarkAsRead" }, function(requestBuilder, conversationId, endMessageId)
		return requestBuilder(CHAT_URL):path("v2"):path("mark-as-read"):body({
			conversationId = conversationId,
			endMessageId = endMessageId,
		}):setStatusIds({ conversationId })
	end)
end
