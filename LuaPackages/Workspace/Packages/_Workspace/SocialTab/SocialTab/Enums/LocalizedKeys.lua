local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	AddFriendsHintTitle = "Feature.SocialTab.Label.AddFriendHint",
	AddFriendsHintText = "Feature.SocialTab.Label.AddFriendHintBody",
	AddProviderFriendsHintTitle = "Feature.Home.AddProviderFriendHintTitle",
	AddFriend = "Feature.Chat.Label.AddFriends",
	InviteFriend = "Feature.Friends.Action.InviteProviderFriends",
	FriendsHeader = "CommonUI.Features.Label.Friends",
	FriendsHeaderWithCount = "Feature.Home.HeadingFriends",
})
