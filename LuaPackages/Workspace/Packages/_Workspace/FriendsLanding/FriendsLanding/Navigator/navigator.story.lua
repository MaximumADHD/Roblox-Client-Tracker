local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local RoactNavigation = dependencies.RoactNavigation
local RoactRodux = dependencies.RoactRodux
local Rodux = dependencies.Rodux

local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local ModalStackNavigator = require(script.Parent)
local filterStates = require(FriendsLanding.Friends.filterStates)
local getBaseTestStates = require(FriendsLanding.TestHelpers.getBaseTestStates)
local noFriends = getBaseTestStates().noFriends

local BASE_STORE = Rodux.Store.new(function()
	return noFriends
end, {}, { Rodux.thunkMiddleware })

return function(props)
	local navigationAppContainer = RoactNavigation.createAppContainer(ModalStackNavigator)
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = props.store or BASE_STORE,
	}, {
		navigationEntry = Roact.createElement(FriendsLandingContext.Provider, {
			value = {
				exitFriendsLanding = function()
					print("Navigate back!")
				end,
				filter = filterStates.All,
				getScreenTopBar = function()
					return {}
				end,
			},
		}, {
			navigationAppContainer = Roact.createElement(navigationAppContainer),
		}),
	})
end
