local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local EnumPresenceType = dependencies.RoduxPresence.Enums.PresenceType

type PresenceModel = {
	userPresenceType: number,
	lastLocation: string?,
}

return function(user: PresenceModel?)
	if not user then
		return false
	end
	assert(user, "user modal must be non-nil")
	return user.userPresenceType == EnumPresenceType.InGame and user.lastLocation and user.lastLocation ~= ""
end
