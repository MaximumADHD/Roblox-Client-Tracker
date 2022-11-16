local HttpService = game:GetService("HttpService")
local Url = require(script.Parent.Parent.Url)

return function(requestImpl, userId: string, placeId: string, trigger: string, inviteMessageId: string?, launchData: string?)
	local payload = HttpService:JSONEncode({
		recipientUserId = userId,
		inviteMessageId = inviteMessageId,
		placeId = placeId,
		launchData = launchData,
		trigger = trigger,
	})

	local url = string.format("%snotifications/v1/send-experience-invite", Url.APIS_URL)
	return requestImpl(url, "POST", { postBody = payload })
end
