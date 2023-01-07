local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local llama = dependencies.llama
local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local AddFriendsTile = require(script.Parent)
local withEveryFriendStatus = require(script.Parent.withEveryFriendStatus)
local friendWithContextInfo = withEveryFriendStatus.friendWithContextInfo

local STORY_ADD_FRIENDS_TILE_SIZE = 240
local STORY_ADD_FRIENDS_TILE_PADDING_HORIZONTAL = 12

local createAddFriendTile = function(targetStatus, targetContextInfo, isFriendRequest)
	return Roact.createElement(
		AddFriendsTile,
		llama.Dictionary.join(targetContextInfo.tileProps, {
			user = withEveryFriendStatus.userForStatus(targetStatus, targetContextInfo.userProps),
			isFriendRequest = isFriendRequest,
			friendStatus = targetStatus,
			layoutOrder = 1,
			size = Vector2.new(STORY_ADD_FRIENDS_TILE_SIZE, STORY_ADD_FRIENDS_TILE_SIZE),
		})
	)
end

return {
	stories = {
		FriendRequestTiles = Roact.createElement(RoactRodux.StoreProvider, {
			store = withEveryFriendStatus.baseStore,
		}, {
			Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				LayoutOrder = 1,
				BackgroundTransparency = 1,
			}, {
				layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					Padding = UDim.new(0, STORY_ADD_FRIENDS_TILE_PADDING_HORIZONTAL),
				}),
				MutualFriends = createAddFriendTile(
					Enum.FriendStatus.FriendRequestReceived,
					friendWithContextInfo.FriendWithMutualFriends,
					true
				),
				SentFrom = createAddFriendTile(
					Enum.FriendStatus.FriendRequestReceived,
					friendWithContextInfo.FriendWithSentFrom,
					true
				),
				YourAreFollowing = createAddFriendTile(
					Enum.FriendStatus.FriendRequestReceived,
					friendWithContextInfo.FriendYouAreFollowing,
					true
				),
				FollowingYou = createAddFriendTile(
					Enum.FriendStatus.FriendRequestReceived,
					friendWithContextInfo.FriendFollowingMe,
					true
				),
			}),
		}),

		FriendSuggestionTiles = Roact.createElement(RoactRodux.StoreProvider, {
			store = withEveryFriendStatus.baseStore,
		}, {
			FriendSuggestionTiles = Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				LayoutOrder = 2,
				BackgroundTransparency = 1,
			}, {
				layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					Padding = UDim.new(0, STORY_ADD_FRIENDS_TILE_PADDING_HORIZONTAL),
				}),
				NotFriend = createAddFriendTile(
					Enum.FriendStatus.NotFriend,
					friendWithContextInfo.FriendNoFriend,
					false
				),
				FriendPending = createAddFriendTile(
					Enum.FriendStatus.FriendRequestSent,
					friendWithContextInfo.FriendPending,
					false
				),
			}),
		}),
	},
}
