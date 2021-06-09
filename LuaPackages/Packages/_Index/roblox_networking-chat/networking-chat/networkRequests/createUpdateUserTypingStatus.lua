local CHAT_URL = require(script.Parent.Parent.CHAT_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "UpdateUserTypingStatus" }, function(requestBuilder, conversationId, isTyping)
		return requestBuilder(CHAT_URL):path("v2"):path("update-user-typing-status"):body({
			conversationId = conversationId,
			isTyping = isTyping,
		})
	end)
end
