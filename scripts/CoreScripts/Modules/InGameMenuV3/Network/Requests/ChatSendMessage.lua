local HttpService = game:GetService("HttpService")

local InGameMenu = script.Parent.Parent.Parent
local Url = require(InGameMenu.Network.Url)

return function(requestImpl, conversationId, messageText, decorators)
	local payload = HttpService:JSONEncode({
		conversationId = conversationId,
		message = messageText,
		decorators = decorators
	})

	local url = string.format("%s/send-message", Url.CHAT_URL)

	return requestImpl(url, "POST", { postBody = payload })
end