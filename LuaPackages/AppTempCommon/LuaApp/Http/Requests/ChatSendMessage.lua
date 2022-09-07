local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")

local Url = require(CorePackages.AppTempCommon.LuaApp.Http.Url)
local RequestTypes = require(CorePackages.AppTempCommon.LuaApp.Http.Requests.RequestTypes)

return function(requestImpl: RequestTypes.Request,
	conversationId,
	messageText,
	decorators,
	isExperienceInvite: boolean?,
	userId: number?
)

	local payload = HttpService:JSONEncode({
		conversationId = conversationId,
		message = messageText,
		decorators = decorators,
		isExperienceInvite = isExperienceInvite,
		userId = userId
	})

	local url = string.format("%s/send-message", Url.CHAT_URL)

	return requestImpl(url, "POST", { postBody = payload })
end
