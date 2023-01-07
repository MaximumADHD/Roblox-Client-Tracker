local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local FriendsLandingContainer = require(script.Parent)
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local filterStates = require(FriendsLanding.Friends.filterStates)
local getBaseTestStates = require(FriendsLanding.TestHelpers.getBaseTestStates)
local smallNumbersOfFriends = getBaseTestStates().smallNumbersOfFriends

local BASE_STORE = Rodux.Store.new(function()
	return smallNumbersOfFriends
end, {}, { Rodux.thunkMiddleware })

local SMALL_SCREEN_WIDTH = 512

return function(props)
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = props.store or BASE_STORE,
	}, {
		container = Roact.createElement(FriendsLandingContext.Provider, {
			value = { filter = filterStates.All },
		}, {
			withContext = Roact.createElement(
				"Frame",
				{ Size = UDim2.new(0, SMALL_SCREEN_WIDTH, 1, 0), BackgroundTransparency = 1 },
				{ Roact.createElement(FriendsLandingContainer, props) }
			),
		}),
	})
end
