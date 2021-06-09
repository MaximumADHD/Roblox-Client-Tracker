local CHAT_URL = require(script.Parent.Parent.CHAT_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetConversations" }, function(requestBuilder, conversationIds)
		return requestBuilder(CHAT_URL):path("v2"):path("get-conversations"):expandedQueryArgsWithIds("conversationIds", conversationIds)
	end)
end
