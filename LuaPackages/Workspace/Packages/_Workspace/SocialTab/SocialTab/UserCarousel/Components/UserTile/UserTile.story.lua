local dependencies = require(script:FindFirstAncestor("SocialTab").dependencies)
local Roact = dependencies.Roact
local RoduxPresence = dependencies.RoduxPresence

local UserTile = require(script.Parent)

return function()
	return Roact.createElement(UserTile, {
		user = {
			id = "test",
			displayName = "DisplayName",
			lastLocation = nil,
			isPremium = false,
			username = "Username",
			userPresenceType = RoduxPresence.Enums.PresenceType.Offline,
			thumbnail = "",
		},
	})
end
