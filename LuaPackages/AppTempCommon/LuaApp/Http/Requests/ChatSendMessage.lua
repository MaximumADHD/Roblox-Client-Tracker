local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")

local Url = require(CorePackages.AppTempCommon.LuaApp.Http.Url)

return function(requestImpl, conversationId, messageText, decorators)
	local payload = HttpService:JSONEncode({
		conversationId = conversationId,
		message = messageText,
		decorators = decorators
	})

	local url = string.format("%s/send-message", Url.CHAT_URL)

	return requestImpl(url, "POST", { postBody = payload })
end