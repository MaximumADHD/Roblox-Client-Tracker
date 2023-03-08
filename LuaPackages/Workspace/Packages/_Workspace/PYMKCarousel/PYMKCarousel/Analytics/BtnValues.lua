local PYMKCarousel = script.Parent.Parent
local dependencies = require(PYMKCarousel.dependencies)
local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	RequestFriendship = "requestFriendship",
	OpenPeopleList = "openPeopleList",
	AcceptFriendship = "acceptFriendship",
})
