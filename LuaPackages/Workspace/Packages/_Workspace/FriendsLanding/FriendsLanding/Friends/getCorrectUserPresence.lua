local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local RoduxPresence = dependencies.RoduxPresence
local EnumPresenceType = RoduxPresence.Enums.PresenceType
local isUserInGame = require(script.Parent.isUserInGame)

type User = any

return function(user: User?)
	if not user then
		return nil
	end
	assert(user, "")

	local presence = user.userPresenceType

	if presence == EnumPresenceType.InGame then
		return isUserInGame(user) and EnumPresenceType.InGame or EnumPresenceType.Online
	else
		return presence
	end
end
