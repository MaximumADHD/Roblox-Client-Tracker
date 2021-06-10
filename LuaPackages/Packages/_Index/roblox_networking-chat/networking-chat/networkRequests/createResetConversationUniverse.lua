local CHAT_URL = require(script.Parent.Parent.CHAT_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "ResetConversationUniverse" }, function(requestBuilder, conversationId)
		return requestBuilder(CHAT_URL):path("v2"):path("reset-conversation-universe"):body({
			conversationId = conversationId,
		})
	end)
end
