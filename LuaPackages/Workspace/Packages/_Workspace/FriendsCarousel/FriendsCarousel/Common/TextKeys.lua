local FriendsCarousel = script.Parent.Parent
local getFFlagFriendsCarouselIncomingFriendRequest =
	require(FriendsCarousel.Flags.getFFlagFriendsCarouselIncomingFriendRequest)

local TextKeys = {
	UpdatedFindFriendsText = "Feature.Chat.Label.AddFriends",
	FindFriendsText = "Feature.Friends.Action.FindFriends",
	PresenceOffline = "Common.Presence.Label.Offline",
	PresenceOnline = "Common.Presence.Label.Online",
	FriendRequestSentToast = "Feature.Friends.Action.FriendRequestSent",
	FriendRequestCancelledToast = "Feature.Friends.Action.FriendRequestCancelled",
	SomethingIsWrongToast = "Feature.Toast.NetworkingError.SomethingIsWrong",
	SingularMutualFriend = "Feature.Friends.Label.SingularMutualFriend",
	MutualFriends = "Feature.Friends.Label.MutualFriends",
	PlayedTogether = "Feature.Friends.Label.Frequent",
	FindFriendsTitle = "Feature.SocialTab.Label.AddFriendHintBody",
	FindFriendsBody = "Feature.Friends.Label.FindFriendsHintBody",
	NewText = "Feature.Catalog.Label.New",
	SuggestedContext = "Feature.Friends.Label.Suggested",
	FriendRequestContext = if getFFlagFriendsCarouselIncomingFriendRequest()
		then "Feature.Friends.Label.FriendRequest"
		else "",
}

return TextKeys
