local CHAT_URL = require(script.Parent.Parent.CHAT_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "RemoveFromConversation" }, function(requestBuilder, participantUserId, conversationId)
		return requestBuilder(CHAT_URL):path("v2"):path("remove-from-conversation"):body({
			participantUserId = participantUserId,
			conversationId = conversationId,
		})
	end)
end
