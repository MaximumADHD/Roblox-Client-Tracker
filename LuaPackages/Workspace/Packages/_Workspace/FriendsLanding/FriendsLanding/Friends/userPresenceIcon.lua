--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local RoduxPresence = dependencies.RoduxPresence
local EnumPresenceType = RoduxPresence.Enums.PresenceType

return {
	[EnumPresenceType.Offline] = nil,
	[EnumPresenceType.Online] = "component_assets/circle_16",
	[EnumPresenceType.InGame] = "icons/menu/games_small",
	[EnumPresenceType.InStudio] = "icons/logo/studiologo_small",
}
