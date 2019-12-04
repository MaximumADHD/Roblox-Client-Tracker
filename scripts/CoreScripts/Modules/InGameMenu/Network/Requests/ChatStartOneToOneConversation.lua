local HttpService = game:GetService("HttpService")

local InGameMenu = script.Parent.Parent.Parent
local Url = require(InGameMenu.Network.Url)

return function(requestImpl, userId, clientId)
	local payload = HttpService:JSONEncode({
		participantuserId = userId
	})

	local url = string.format("%s/start-one-to-one-conversation", Url.CHAT_URL)

	return requestImpl(url, "POST", { postBody = payload })
end