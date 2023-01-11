local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local getFFlagAddFriendsFullSearchbarAnalytics = dependencies.getFFlagAddFriendsFullSearchbarAnalytics

local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	FriendSearch = "friendSearch",
	FriendSearchEnter = "friendSearchEnter",
	AddFriendsNoFriends = "addFriendsNoFriends",
	AddFriends = "addFriends",
	PlayerTile = "playerTile",
	FriendFilterPill = "friendFilterPill",
	LoadMoreFriends = "loadMoreFriends",
	FriendFilterApply = "friendFilterApply",
	IgnoreAllButton = "ignoreAll",
	ConnectWithFriends = "connectWithFriends",
	PlayerProfile = "playerProfile",
	PeopleSearchBar = if getFFlagAddFriendsFullSearchbarAnalytics() then "peopleSearchBar" else nil,
})
