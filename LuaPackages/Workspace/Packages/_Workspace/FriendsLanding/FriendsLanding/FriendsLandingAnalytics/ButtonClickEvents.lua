local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local getFFlagAddFriendsQRCodeAnalytics = dependencies.getFFlagAddFriendsQRCodeAnalytics
local getFFlagFriendsLandingInactiveFriendsEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingInactiveFriendsEnabled)

local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	AddFriendsNoFriends = "addFriendsNoFriends",
	AddFriends = "addFriends",
	PlayerTile = "playerTile",
	FriendFilterPill = "friendFilterPill",
	LoadMoreFriends = "loadMoreFriends",
	FriendFilterApply = "friendFilterApply",
	FriendTileUnfriendButton = if getFFlagFriendsLandingInactiveFriendsEnabled()
		then "friendTileUnfriendButton"
		else nil,
	IgnoreAllButton = "ignoreAll",
	ConnectWithFriends = "connectWithFriends",
	PlayerProfile = "playerProfile",
	PeopleSearchBar = "peopleSearchBar",
	ProfileQRCode = if getFFlagAddFriendsQRCodeAnalytics() then "shareProfileQRCode" else nil,
})
