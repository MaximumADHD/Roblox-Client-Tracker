local CHAT_URL = require(script.Parent.Parent.CHAT_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "StartOneToOneConversation" }, function(requestBuilder, participantUserId)
		return requestBuilder(CHAT_URL):path("v2"):path("start-one-to-one-conversation"):body({
			participantUserId = participantUserId,
		}):setStatusIds({ participantUserId })
	end)
end
