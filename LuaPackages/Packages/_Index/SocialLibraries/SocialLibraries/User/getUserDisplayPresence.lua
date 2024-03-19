local getPresenceTextFromUser = require(script.Parent.getPresenceTextFromUser)
local presenceImageByPresence = require(script.Parent.presenceImageByPresence)

return function(user)
	return {
		text = getPresenceTextFromUser(user),
		image = presenceImageByPresence[user.presence],
	}
end
