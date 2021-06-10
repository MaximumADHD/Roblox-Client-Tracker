local CHAT_URL = require(script.Parent.Parent.CHAT_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "RenameGroupConversation" }, function(requestBuilder, conversationId, newTitle)
		return requestBuilder(CHAT_URL):path("v2"):path("rename-group-conversation"):body({
			conversationId = conversationId,
			newTitle = newTitle,
		})
	end)
end
