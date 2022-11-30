local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local Roact = dependencies.Roact
local UserTile = require(script.Parent)
local PresenceType = dependencies.RoduxPresence.Enums.PresenceType
local UserUtils = require(SocialTab.User)

local NO_OPT = function() end

return function(props)
	return Roact.createElement(UserTile, {
		user = UserUtils.makeMockUser({
			displayName = "This shouldn't show",
			username = "Gavin",
			lastLocation = "Playing this cool game",
			userPresenceType = PresenceType.InGame,
			isPremium = false,
		}),
		onActivated = props.onActivated or NO_OPT,
	})
end
