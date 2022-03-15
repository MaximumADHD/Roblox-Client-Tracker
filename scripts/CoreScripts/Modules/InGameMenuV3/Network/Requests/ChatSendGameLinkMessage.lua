local HttpService = game:GetService("HttpService")

local InGameMenu = script.Parent.Parent.Parent
local Url = require(InGameMenu.Network.Url)

return function(requestImpl, conversationId, universeId, decorators)
	assert(requestImpl, "requestImpl is required")
	assert(conversationId, "conversationId is required")
	assert(universeId, "universeId is required")

	local payload = HttpService:JSONEncode({
		conversationId = conversationId,
		universeId = universeId,
		decorators = decorators
	})
	local url = string.format("%s/send-game-link-message", Url.CHAT_URL)

	return requestImpl(url, "POST", { postBody = payload })
end
