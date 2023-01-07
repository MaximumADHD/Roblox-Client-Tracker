local FriendsCarousel = script.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	CarouselLoadedWithUsers = "CarouselLoadedWithUsers",
	UserSeen = "UserSeen",
	UserPressed = "UserPressed",
	RequestFriendship = "RequestFriendship",
	RevokeFriendRequest = "RevokeFriendRequest",
	ViewAllFriends = "ViewAllFriends",
	ViewAddFriends = "ViewAddFriends",
	CarouselLoadingTime = "CarouselLoadingTime",
	ContactImporterOnAddFriends = "ContactImporterOnAddFriends",
})
