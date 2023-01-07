-- TODO: taken from FriendsLanding, SOCCONN-1540 move to social-libraries
local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)

local RoduxPresence = dependencies.RoduxPresence
local EnumPresenceType = RoduxPresence.Enums.PresenceType
local ModelTypes = require(FriendsCarousel.Common.ModelTypes)
local isUserInGame = require(FriendsCarousel.Utils.isUserInGame)

return function(user: ModelTypes.Presence): Enum
	local presence = user.userPresenceType

	if presence == EnumPresenceType.InGame then
		return isUserInGame(user) and EnumPresenceType.InGame or EnumPresenceType.Online
	else
		return presence
	end
end
