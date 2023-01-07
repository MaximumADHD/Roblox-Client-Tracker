local PYMKCarousel = script.Parent.Parent
local dependencies = require(PYMKCarousel.dependencies)
local enumerate = dependencies.enumerate

local getFFlagPYMKCarouselIncomingFriendRequestAnalytics =
	require(PYMKCarousel.Flags.getFFlagPYMKCarouselIncomingFriendRequestAnalytics)

return enumerate(script.Name, {
	RequestFriendship = "requestFriendship",
	OpenPeopleList = "openPeopleList",
	AcceptFriendship = if getFFlagPYMKCarouselIncomingFriendRequestAnalytics() then "acceptFriendship" else nil,
})
