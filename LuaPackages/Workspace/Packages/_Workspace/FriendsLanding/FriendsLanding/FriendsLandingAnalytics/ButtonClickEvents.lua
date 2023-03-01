local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local getFFlagAddFriendsFullSearchbarAnalytics = dependencies.getFFlagAddFriendsFullSearchbarAnalytics
local getFFlagAddFriendsQRCodeAnalytics = dependencies.getFFlagAddFriendsQRCodeAnalytics
local getFFlagRenameSearchAnalyticEvent = require(FriendsLanding.Flags.getFFlagRenameSearchAnalyticEvent)

local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	FriendSearch = if getFFlagRenameSearchAnalyticEvent() then nil else "friendSearch",
	FriendSearchEnter = if getFFlagRenameSearchAnalyticEvent() then nil else "friendSearchEnter",
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
	ProfileQRCode = if getFFlagAddFriendsQRCodeAnalytics() then "shareProfileQRCode" else nil,
})
