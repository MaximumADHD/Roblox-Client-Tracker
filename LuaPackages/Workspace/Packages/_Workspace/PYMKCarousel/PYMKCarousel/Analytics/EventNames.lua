local PYMKCarousel = script.Parent.Parent
local dependencies = require(PYMKCarousel.dependencies)
local enumerate = dependencies.enumerate

local getFFlagPYMKCarouselIncomingFriendRequestAnalytics =
	require(PYMKCarousel.Flags.getFFlagPYMKCarouselIncomingFriendRequestAnalytics)

return enumerate(script.Name, {
	CarouselLoadedWithUsers = "CarouselLoadedWithUsers",
	UserSeen = "UserSeen",
	UserPressed = "UserPressed",
	RequestFriendship = "RequestFriendship",
	AcceptFriendship = if getFFlagPYMKCarouselIncomingFriendRequestAnalytics() then "AcceptFriendship" else nil,
})
