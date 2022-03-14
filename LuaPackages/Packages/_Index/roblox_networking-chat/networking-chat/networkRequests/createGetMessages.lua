local CHAT_URL = require(script.Parent.Parent.CHAT_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetMessages" }, function(requestBuilder, conversationId, pageSize, exclusiveStartMessageId)
		return requestBuilder(CHAT_URL):path("v2"):path("get-messages"):queryArgs({
			conversationId = conversationId,
			pageSize = pageSize,
			exclusiveStartMessageId = exclusiveStartMessageId,
		}):setStatusIds({ conversationId })
	end)
end
