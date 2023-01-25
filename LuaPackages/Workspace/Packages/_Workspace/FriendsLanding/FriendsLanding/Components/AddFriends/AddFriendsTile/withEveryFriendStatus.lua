local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local Rodux = dependencies.Rodux
local llama = dependencies.llama
local User = dependencies.RoduxUsers.Models.User
local EnumPresenceType = dependencies.RoduxPresence.Enums.PresenceType
local FriendshipOriginSourceType = dependencies.NetworkingFriendsEnums.FriendshipOriginSourceType

local localUserId = "0"
local friendStatus = {
	["36"] = Enum.FriendStatus.NotFriend,
	["39"] = Enum.FriendStatus.Friend,
	["37"] = Enum.FriendStatus.FriendRequestSent,
	["38"] = Enum.FriendStatus.FriendRequestReceived,
}
local baseStore = Rodux.Store.new(function()
	return {
		LocalUserId = localUserId,
		FriendStatuses = friendStatus,
		ScreenSize = Vector2.new(500, 500),
	}
end, {}, { Rodux.thunkMiddleware })

local userForStatus = function(targetFriendStatus, addFriendsUserInfo)
	local idForStatus = llama.Dictionary.flip(friendStatus)[targetFriendStatus]
	return llama.Dictionary.join(User.mock({ id = idForStatus }), addFriendsUserInfo)
end

local fullContextInfo = {
	tileProps = {
		sentFromExperienceName = "TestSentFrom",
		amIFollowingUser = true,
		isUserFollowingMe = true,
	},
	userProps = {
		mutualFriends = { {}, {}, {} },
		userPresenceType = EnumPresenceType.InGame,
		lastLocation = "TestLastLocation",
	},
}

return {
	localUserId = localUserId,
	friendWithContextInfo = {
		FriendWithFullContextInfo = llama.Dictionary.joinDeep(fullContextInfo, {
			userProps = {
				username = "FriendRequestReceived",
				displayName = "WithFullContextInfo",
			},
		}),
		FriendWithMutualFriends = {
			tileProps = {},
			userProps = {
				username = "FriendRequestReceived",
				displayName = "WithMutualFriends",
				mutualFriends = fullContextInfo.userProps.mutualFriends,
			},
		},
		FriendWithSentFrom = {
			tileProps = {
				sentFromExperienceName = fullContextInfo.tileProps.sentFromExperienceName,
			},
			userProps = {
				username = "FriendRequestReceived",
				displayName = "WithSentContext",
			},
		},
		FriendYouAreFollowing = {
			tileProps = {
				amIFollowingUser = fullContextInfo.tileProps.amIFollowingUser,
			},
			userProps = {
				username = "FriendRequestReceived",
				displayName = "WithYourAllFollowing",
			},
		},
		FriendFollowingMe = {
			tileProps = {
				isUserFollowingMe = fullContextInfo.tileProps.isUserFollowingMe,
			},
			userProps = {
				username = "FriendRequestReceived",
				displayName = "WithFollowingMe",
				followers = {},
			},
		},
		FriendViaQRCode = {
			tileProps = {
				originSourceType = FriendshipOriginSourceType.QrCode.rawValue(),
			},
			userProps = {
				username = "FriendRequestReceived",
				displayName = "WithQRCode",
			},
		},
		FriendNoFriend = {
			tileProps = {},
			userProps = {
				username = "NotFriend",
				displayName = "Friend to add",
			},
		},
		FriendPending = {
			tileProps = {},
			userProps = {
				username = "FriendRequestSent",
				displayName = "Friend pending",
			},
		},
	},
	fullContextInfo = fullContextInfo,
	userForStatus = userForStatus,
	baseStore = baseStore,
}
