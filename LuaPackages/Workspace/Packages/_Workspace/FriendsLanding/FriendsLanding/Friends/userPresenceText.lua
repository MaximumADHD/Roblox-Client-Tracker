local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local RoduxPresence = dependencies.RoduxPresence
local EnumPresenceType = RoduxPresence.Enums.PresenceType

return {
	[EnumPresenceType.Offline] = "Common.Presence.Label.Offline",
	[EnumPresenceType.Online] = "Common.Presence.Label.Online",
	-- TODO: localization - In Experience
	[EnumPresenceType.InGame] = "Common.Presence.Label.Online",
	-- TODO: localization - In Studio
	[EnumPresenceType.InStudio] = "Common.Presence.Label.Online",
}
