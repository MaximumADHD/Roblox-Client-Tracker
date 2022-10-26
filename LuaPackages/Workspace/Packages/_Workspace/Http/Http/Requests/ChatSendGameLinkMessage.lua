local HttpService = game:GetService("HttpService")

local Url = require(script.Parent.Parent.Url)
local RequestTypes = require(script.Parent.RequestTypes)

return function(
	requestImpl: RequestTypes.Request,
	conversationId,
	universeId,
	decorators,
	isExperienceInvite: boolean?,
	userId: number?,
	placeId: number?
)

	assert(requestImpl, "requestImpl is required")
	assert(conversationId, "conversationId is required")
	assert(universeId, "universeId is required")

	local payload = HttpService:JSONEncode({
		conversationId = conversationId,
		universeId = universeId,
		decorators = decorators,
		isExperienceInvite = isExperienceInvite,
		userId = userId,
		placeId = placeId
	})
	local url = string.format("%s/send-game-link-message", Url.CHAT_URL)

	return requestImpl(url, "POST", { postBody = payload })
end
