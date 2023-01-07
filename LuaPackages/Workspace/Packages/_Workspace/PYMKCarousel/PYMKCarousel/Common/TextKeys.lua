local PYMKCarousel = script.Parent.Parent
local getFFlagPYMKCarouselIncomingFriendRequest = require(PYMKCarousel.Flags.getFFlagPYMKCarouselIncomingFriendRequest)

local TextKeys = {
	FriendRequestSentToast = "Feature.Friends.Action.FriendRequestSent",
	SomethingIsWrongToast = "Feature.Toast.NetworkingError.SomethingIsWrong",
	FriendAddedToast = if getFFlagPYMKCarouselIncomingFriendRequest()
		then "Feature.AddFriends.Action.FriendAdded"
		else "",
	FriendRequestContext = if getFFlagPYMKCarouselIncomingFriendRequest()
		then "Feature.Friends.Label.FriendRequest"
		else "",
}

return TextKeys
