-- TODO: taken from FriendsLanding, SOCCONN-1540 move to social-libraries
local FriendsCarousel = script.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local ModelTypes = require(FriendsCarousel.Common.ModelTypes)

local EnumPresenceType = dependencies.RoduxPresence.Enums.PresenceType

return function(user: ModelTypes.Presence?): boolean
	if not user then
		return false
	else
		return user.userPresenceType == EnumPresenceType.InGame and user.lastLocation and user.lastLocation ~= ""
	end
end
