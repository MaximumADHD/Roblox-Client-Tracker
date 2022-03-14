local CHAT_URL = require(script.Parent.Parent.CHAT_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetUserConversations" }, function(requestBuilder, pageNumber, pageSize)
		return requestBuilder(CHAT_URL):path("v2"):path("get-user-conversations"):queryArgs({
			pageNumber = pageNumber,
			pageSize = pageSize,
		}):setStatusIds({ pageNumber })
	end)
end
