local PYMKCarousel = script.Parent.Parent
local dependencies = require(PYMKCarousel.dependencies)
local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	CarouselLoadedWithUsers = "CarouselLoadedWithUsers",
	UserSeen = "UserSeen",
	UserPressed = "UserPressed",
	RequestFriendship = "RequestFriendship",
	AcceptFriendship = "AcceptFriendship",
})
