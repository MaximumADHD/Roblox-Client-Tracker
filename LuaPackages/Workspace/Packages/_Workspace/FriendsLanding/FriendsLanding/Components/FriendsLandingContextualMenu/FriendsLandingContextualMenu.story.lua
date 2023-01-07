local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local devDependencies = require(FriendsLanding.devDependencies)
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local Mock = devDependencies.Mock
local RoactNavigation = dependencies.RoactNavigation
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local getBaseTestStates = require(FriendsLanding.TestHelpers.getBaseTestStates)
local deletedFriends = getBaseTestStates().deletedFriends

local FriendsLandingContextualMenu = require(script.Parent)

local BASE_STORE = Rodux.Store.new(function()
	return deletedFriends
end, {}, { Rodux.thunkMiddleware })

local SimpleNavigator = RoactNavigation.createRobloxStackNavigator({
	{
		["TestScreen"] = {
			screen = function()
				return nil
			end,
		},
	},
})
local FriendsLandingContextualMenuStory = Roact.Component:extend("FriendsLandingContextualMenuStory")
FriendsLandingContextualMenuStory.router = SimpleNavigator.router

function FriendsLandingContextualMenuStory:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 200),
		BackgroundTransparency = 1,
	}, {
		contextualMenu = Roact.createElement(FriendsLandingContextualMenu, {
			navigation = Mock.MagicMock.new({ name = "navigation" }),
		}),
	})
end

return function(props)
	local navigationAppContainer = RoactNavigation.createAppContainer(FriendsLandingContextualMenuStory)
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = BASE_STORE,
	}, {
		Roact.createElement(FriendsLandingContext.Provider, {
			value = {
				screenSize = props.screenSize or Vector2.new(200, 200),
			},
		}, {
			navigationAppContainer = Roact.createElement(navigationAppContainer),
		}),
	})
end
