local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)

local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local mapToUsers = require(FriendsLanding.Friends.mapToUsers)
local getBaseTestStates = require(FriendsLanding.TestHelpers.getBaseTestStates)
local smallNumbersOfFriends = getBaseTestStates().smallNumbersOfFriends

local AddFriendsGridView = require(script.Parent)
local AddFriendsTile = require(script.Parent.Parent.AddFriendsTile)

local WINDOW_SIZE = Vector2.new(492, 1000)
local BASE_STORE = Rodux.Store.new(function()
	return {
		LocalUserId = "0",
		FriendStatuses = {
			["36"] = Enum.FriendStatus.NotFriend,
			["37"] = Enum.FriendStatus.FriendRequestSent,
			["38"] = Enum.FriendStatus.FriendRequestReceived,
			["39"] = Enum.FriendStatus.Friend,
		},
	}
end, {}, { Rodux.thunkMiddleware })

return function()
	local items = mapToUsers(smallNumbersOfFriends)("test")
	local renderFunc = function(user, itemWidth, itemHeight, index)
		return Roact.createElement(AddFriendsTile, {
			size = Vector2.new(itemWidth, itemHeight),
			user = user,
			layoutOrder = index,
		})
	end

	return Roact.createElement(RoactRodux.StoreProvider, {
		store = BASE_STORE,
	}, {
		Roact.createElement("Frame", {
			Size = UDim2.new(0, WINDOW_SIZE.X, 0, WINDOW_SIZE.Y),
			BackgroundTransparency = 1,
		}, {
			AddFriendsGridView = Roact.createElement(AddFriendsGridView, {
				items = items,
				windowSize = WINDOW_SIZE,
				renderAddFriendsTile = renderFunc,
				layoutOrder = 1,
			}),
		}),
	})
end
