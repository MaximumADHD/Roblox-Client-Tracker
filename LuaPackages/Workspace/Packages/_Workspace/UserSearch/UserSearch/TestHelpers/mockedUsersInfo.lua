local UserSearch = script:FindFirstAncestor("UserSearch")
local ProfileInsightsMocks = require(UserSearch.TestHelpers.ProfileInsightsMocks)

local userIds = {
	yourself = "1111",
	following = "2222",
	friend = "3333",
	incomingFriendship = "4444",
	outgoingFriendship = "5555",
	previousUserName = "6666",
	random = "7777",
	notFriend = "8888",
	mutualFriends = "9999",
	frequents = "101010",
}

local mockedState = {
	LocalUserId = userIds.yourself,
	FriendStatuses = {
		[userIds.friend] = Enum.FriendStatus.Friend,
		[userIds.incomingFriendship] = Enum.FriendStatus.FriendRequestReceived,
		[userIds.outgoingFriendship] = Enum.FriendStatus.FriendRequestSent,
		[userIds.notFriend] = Enum.FriendStatus.NotFriend,
		[userIds.mutualFriends] = Enum.FriendStatus.NotFriend,
		[userIds.frequents] = Enum.FriendStatus.NotFriend,
	},
	FriendFollowings = {
		[userIds.following] = true,
	},
}

local mockedUsers = {
	yourself = { id = userIds.yourself },
	following = { id = userIds.following },
	friend = { id = userIds.friend },
	incomingFriendship = { id = userIds.incomingFriendship },
	outgoingFriendship = { id = userIds.outgoingFriendship },
	previousUserName = {
		id = userIds.previousUserName,
		previousUsernames = { "random1", "random1", "searchKeyword" },
	},
	random = { id = userIds.random },
	notFriend = { id = userIds.notFriend },
	mutualFriends = {
		id = userIds.mutualFriends,
		profileInsight = ProfileInsightsMocks.mockProfileInsightWithMutualFriends(userIds.mutualFriends),
	},
	frequents = { id = userIds.frequents, profileInsight = ProfileInsightsMocks.mockProfileInsight(userIds.frequents) },
}

return {
	ids = userIds,
	state = mockedState,
	users = mockedUsers,
}
