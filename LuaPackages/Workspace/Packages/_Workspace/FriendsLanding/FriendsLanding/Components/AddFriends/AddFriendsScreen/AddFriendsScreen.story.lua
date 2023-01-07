local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local llama = dependencies.llama
local AddFriendsScreen = require(script.Parent)

local getBaseTestStates = require(FriendsLanding.TestHelpers.getBaseTestStates)
local baseTestState = getBaseTestStates().smallNumbersOfFriends
local testState = baseTestState.FriendsLanding
local byUserId = testState.Users.byUserId
local receivedCount = #llama.Dictionary.keys(testState.Users.byUserId)

local BASE_STORE = Rodux.Store.new(function()
	return {
		ScreenSize = Vector2.new(540, 960),
		LocalUserId = baseTestState.LocalUserId,
		FriendStatuses = llama.Dictionary.map(testState.Users.byUserId, function()
			return Enum.FriendStatus.FriendRequestReceived
		end),
		FriendsLanding = {
			Friends = {
				requests = {
					byUserId = byUserId,
					receivedCount = receivedCount,
				},
			},
			Users = testState.Users,
			Presence = testState.Presence,
			NetworkStatus = testState.NetworkStatus,
		},
	}
end, {}, { Rodux.thunkMiddleware })

return function()
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = BASE_STORE,
	}, {
		Roact.createElement(AddFriendsScreen),
	})
end
