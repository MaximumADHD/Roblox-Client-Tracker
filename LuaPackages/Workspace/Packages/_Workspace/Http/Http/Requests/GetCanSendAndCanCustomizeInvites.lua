local Url = require(script.Parent.Parent.Url)

return function(requestImpl, trigger, inviteUserId)
	local queryString = Url:makeQueryString({
		RecipientUserId = inviteUserId,
		Trigger = trigger,
		PlaceId = game.PlaceId,
	})

	local url = string.format("%snotifications/v1/can-prompt-experience-invite?%s", Url.APIS_URL, queryString)
	return requestImpl(url, "GET")
end
