local CHAT_URL = require(script.Parent.Parent.CHAT_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetUnreadConversationCount" }, function(requestBuilder)
		return requestBuilder(CHAT_URL):path("v2"):path("get-unread-conversation-count")
	end)
end
