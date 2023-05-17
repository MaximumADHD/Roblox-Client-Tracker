local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local getFFlagFriendsLandingInactiveFriendsEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingInactiveFriendsEnabled)
local getFFlagAddFriendsImproveAnalytics = require(FriendsLanding.Flags.getFFlagAddFriendsImproveAnalytics)

local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	AddFriendsNoFriends = "addFriendsNoFriends",
	AddFriends = "addFriends",
	PlayerTile = "playerTile",
	FriendFilterPill = "friendFilterPill",
	LoadMoreUsers = "loadMoreUsers",
	LoadMoreFriends = if getFFlagAddFriendsImproveAnalytics() then nil else "loadMoreFriends",
	FriendFilterApply = "friendFilterApply",
	FriendTileUnfriendButton = if getFFlagFriendsLandingInactiveFriendsEnabled()
		then "friendTileUnfriendButton"
		else nil,
	IgnoreAllButton = "ignoreAll",
	ConnectWithFriends = "connectWithFriends",
	PlayerProfile = "playerProfile",
	PeopleSearchBar = "peopleSearchBar",
	ProfileQRCode = "shareProfileQRCode",

	-- AddFriendsPage overlay buttons
	RequestFriendship = "requestFriendship",
	DeclineFriendship = "declineFriendship",
	AcceptFriendship = "acceptFriendship",
})
