--!nonstrict
local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local RoduxPresence = dependencies.RoduxPresence
local EnumPresenceType = RoduxPresence.Enums.PresenceType

return {
	[EnumPresenceType.Offline] = nil,
	[EnumPresenceType.Online] = "component_assets/circle_16",
	[EnumPresenceType.InGame] = "icons/menu/games_small",
	[EnumPresenceType.InStudio] = "icons/logo/studiologo_small",
}
