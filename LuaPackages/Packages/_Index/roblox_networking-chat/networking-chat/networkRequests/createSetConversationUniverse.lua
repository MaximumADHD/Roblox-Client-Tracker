local CHAT_URL = require(script.Parent.Parent.CHAT_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "SetConversationUniverse" }, function(requestBuilder, conversationId, universeId)
		return requestBuilder(CHAT_URL):path("v2"):path("set-conversation-universe"):body({
			conversationId = conversationId,
			universeId = universeId,
		})
	end)
end
