local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")

local Url = require(CorePackages.AppTempCommon.LuaApp.Http.Url)

return function(requestImpl, recipientId, placeId, shouldDeepLink)
	assert(requestImpl, "requestImpl is required")
	assert(recipientId, "recipientId is required")
	assert(placeId, "placeId is required")
	assert(shouldDeepLink, "shouldDeepLink is required")

	local payload = HttpService:JSONEncode({
		recipientId = recipientId,
		placeId = placeId,
		shouldDeepLink = shouldDeepLink
	})
	local url = string.format("%sv2/notifications/send-experience-invite", Url.NOTIFICATION_URL)

	return requestImpl(url, "POST", { postBody = payload })
end
