local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Url = require(Modules.Settings.Pages.ShareGame.Http.Url)

return function(networkImpl, userId, clientId)
	local argTable = {
		participantuserId = userId,
	}
	local payload = networkImpl:jsonEncode(argTable)

	local url = string.format("%s/start-one-to-one-conversation",
		Url.CHAT_URL
	)

	return networkImpl:httpPostJson(url, payload)
end