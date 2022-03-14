local CHAT_URL = require(script.Parent.Parent.CHAT_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetChatSettings" }, function(requestBuilder)
		return requestBuilder(CHAT_URL):path("v2"):path("chat-settings")
	end)
end
