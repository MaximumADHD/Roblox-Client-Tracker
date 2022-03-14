local CHAT_URL = require(script.Parent.Parent.CHAT_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "SendGameLinkMessage" }, function(requestBuilder, universeId, conversationId, decorators)
		return requestBuilder(CHAT_URL):path("v2"):path("send-game-link-message"):body({
			universeId = universeId,
			conversationId = conversationId,
			decorators = decorators,
		}):setStatusIds({ conversationId })
	end)
end
