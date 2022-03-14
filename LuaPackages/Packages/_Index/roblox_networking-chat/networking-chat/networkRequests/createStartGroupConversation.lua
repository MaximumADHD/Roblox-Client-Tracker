local CHAT_URL = require(script.Parent.Parent.CHAT_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "StartGroupConversation" }, function(requestBuilder, participantUserIds, title)
		return requestBuilder(CHAT_URL):path("v2"):path("start-group-conversation"):body({
			participantUserIds = participantUserIds,
			title = title,
		}):setStatusIds(participantUserIds)
	end)
end
