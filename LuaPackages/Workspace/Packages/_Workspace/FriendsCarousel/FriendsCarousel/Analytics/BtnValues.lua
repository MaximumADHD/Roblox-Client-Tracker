local FriendsCarousel = script.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	OpenPeopleList = "openPeopleList",
	RequestFriendship = "requestFriendship",
	RevokeFriendRequest = "revokeFriendRequest",
	FriendsLanding = "friendsLanding",
	AddFriendsButton = "AddFriendsButton",
})
