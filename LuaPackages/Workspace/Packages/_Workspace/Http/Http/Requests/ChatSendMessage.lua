local HttpService = game:GetService("HttpService")

local Url = require(script.Parent.Parent.Url)
local RequestTypes = require(script.Parent.RequestTypes)

return function(
	requestImpl: RequestTypes.Request,
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
		userId = userId,
	})

	local url = string.format("%s/send-message", Url.CHAT_URL)

	return requestImpl(url, "POST", { postBody = payload })
end
