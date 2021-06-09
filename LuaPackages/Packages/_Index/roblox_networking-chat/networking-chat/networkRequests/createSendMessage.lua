local CHAT_URL = require(script.Parent.Parent.CHAT_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "SendMessage" }, function(requestBuilder, message, conversationId, decorators)
		return requestBuilder(CHAT_URL):path("v2"):path("send-message"):body({
			message = message,
			conversationId = conversationId,
			decorators = decorators,
		})
	end)
end
