local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")

local Url = require(CorePackages.AppTempCommon.LuaApp.Http.Url)

return function(requestImpl, userId, clientId)
	local payload = HttpService:JSONEncode({
		participantuserId = userId
	})

	local url = string.format("%s/start-one-to-one-conversation", Url.CHAT_URL)

	return requestImpl(url, "POST", { postBody = payload })
end