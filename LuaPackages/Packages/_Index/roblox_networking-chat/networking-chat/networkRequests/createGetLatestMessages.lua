local CHAT_URL = require(script.Parent.Parent.CHAT_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetLatestMessages" }, function(requestBuilder, conversationIds, pageSize)
		return requestBuilder(CHAT_URL):path("v2"):path("multi-get-latest-messages"):queryArgs({
			pageSize = pageSize,
		}):expandedQueryArgsWithIds("conversationIds", conversationIds)
	end)
end
