local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Url = require(Modules.Settings.Pages.ShareGame.Http.Url)

return function(networkImpl, conversationId, messageText)
	local argTable = {
		conversationId = conversationId,
		message = messageText,
	}
	local payload = networkImpl:jsonEncode(argTable)

	local url = string.format("%s/send-message",
		Url.CHAT_URL
	)

	return networkImpl:httpPostJson(url, payload)
end