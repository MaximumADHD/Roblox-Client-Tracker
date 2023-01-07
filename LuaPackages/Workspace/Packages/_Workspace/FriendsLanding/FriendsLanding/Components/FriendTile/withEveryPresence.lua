local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local FriendTile = require(script.Parent)
local Roact = dependencies.Roact
local llama = dependencies.llama

local friendsWithPresence = require(script.Parent.friendsWithPresence)

return function(props)
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		frame = Roact.createElement("Frame", {
			Size = UDim2.new(0, 150, 0, 0),
			BackgroundTransparency = 1,
		}, {
			layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = UDim.new(0, 6),
			}),
			OnlineFriend = Roact.createElement(
				FriendTile,
				llama.Dictionary.join(props, {
					user = friendsWithPresence["OnlineFriend"],
				})
			),
			DeletedFriend = Roact.createElement(
				FriendTile,
				llama.Dictionary.join(props, {
					user = friendsWithPresence["DeletedFriend"],
				})
			),
			OfflineFriend = Roact.createElement(
				FriendTile,
				llama.Dictionary.join(props, {
					user = friendsWithPresence["OfflineFriend"],
				})
			),
			InGameFriend = Roact.createElement(
				FriendTile,
				llama.Dictionary.join(props, {
					user = friendsWithPresence["InGameFriend"],
				})
			),
			InGameWithoutLastLocationFriend = Roact.createElement(
				FriendTile,
				llama.Dictionary.join(props, {
					user = friendsWithPresence["InGameWithoutLastLocationFriend"],
				})
			),
			InStudioFriend = Roact.createElement(
				FriendTile,
				llama.Dictionary.join(props, {
					user = friendsWithPresence["InStudioFriend"],
				})
			),
			InStudioWithoutLastLocationFriend = Roact.createElement(
				FriendTile,
				llama.Dictionary.join(props, {
					user = friendsWithPresence["InStudioWithoutLastLocationFriend"],
				})
			),
		}),
	})
end
