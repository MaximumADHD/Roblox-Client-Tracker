local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local Roact = dependencies.Roact
local UserTile = require(script.Parent)
local PresenceType = dependencies.RoduxPresence.Enums.PresenceType
local UserUtils = require(SocialTab.User)

return function()
	return Roact.createElement(UserTile, {
		enableDisplayNamePolicy = true,
		user = UserUtils.makeMockUser({
			username = "This shouldn't show",
			displayName = "Stacey",
			userPresenceType = PresenceType.Online,
		}),
	})
end
