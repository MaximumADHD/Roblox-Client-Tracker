--!nonstrict
local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local PresenceType = dependencies.RoduxPresence.Enums.PresenceType

local PRESENCE_WEIGHTS = {
	[PresenceType.InGame] = 3,
	[PresenceType.Online] = 2,
	[PresenceType.InStudio] = 1,
	[PresenceType.Offline] = 0,
}

local getPresenceWeight = function(userPresenceType)
	return PRESENCE_WEIGHTS[userPresenceType] or PRESENCE_WEIGHTS[PresenceType.Offline]
end

return function(a, b)
	local aPresenceWeight = getPresenceWeight(a.userPresenceType)
	local bPresenceWeight = getPresenceWeight(b.userPresenceType)

	if aPresenceWeight == bPresenceWeight then
		return string.lower(a.displayName) < string.lower(b.displayName)
	else
		return aPresenceWeight > bPresenceWeight
	end
end
