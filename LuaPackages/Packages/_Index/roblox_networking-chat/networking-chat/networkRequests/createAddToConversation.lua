local CHAT_URL = require(script.Parent.Parent.CHAT_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "AddToConversation" }, function(requestBuilder, participantUserIds, conversationId)
		return requestBuilder(CHAT_URL):path("v2"):path("add-to-conversation"):body({
			participantUserIds = participantUserIds,
			conversationId = conversationId,
		}):setStatusIds({ conversationId })
	end)
end
