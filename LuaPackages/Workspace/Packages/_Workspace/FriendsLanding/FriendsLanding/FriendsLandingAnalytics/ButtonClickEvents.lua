local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local getFFlagAddFriendsQRCodeAnalytics = dependencies.getFFlagAddFriendsQRCodeAnalytics

local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	AddFriendsNoFriends = "addFriendsNoFriends",
	AddFriends = "addFriends",
	PlayerTile = "playerTile",
	FriendFilterPill = "friendFilterPill",
	LoadMoreFriends = "loadMoreFriends",
	FriendFilterApply = "friendFilterApply",
	IgnoreAllButton = "ignoreAll",
	ConnectWithFriends = "connectWithFriends",
	PlayerProfile = "playerProfile",
	PeopleSearchBar = "peopleSearchBar",
	ProfileQRCode = if getFFlagAddFriendsQRCodeAnalytics() then "shareProfileQRCode" else nil,
})
