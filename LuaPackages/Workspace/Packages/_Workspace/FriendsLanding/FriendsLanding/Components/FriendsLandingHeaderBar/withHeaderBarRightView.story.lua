local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local RoactNavigation = dependencies.RoactNavigation
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local HeaderBarRightView = require(FriendsLanding.Components.HeaderBarRightView)

local FriendsLandingHeaderBar = require(script.Parent)

local SimpleNavigator = RoactNavigation.createRobloxStackNavigator({
	{
		["TestScreen"] = {
			screen = function()
				return nil
			end,
			navigationOptions = {
				headerText = {
					raw = "Feature.Friends.Label.SearchFriends",
					shouldLocalize = false,
				},
				shouldExitNavigation = true,
				renderRight = function()
					return Roact.createElement(HeaderBarRightView)
				end,
			},
		},
	},
})

local SimpleNavigatorWithHeaderBar = Roact.Component:extend("SimpleNavigatorWithHeaderBar")
SimpleNavigatorWithHeaderBar.router = SimpleNavigator.router

function SimpleNavigatorWithHeaderBar:render()
	return Roact.createElement(FriendsLandingHeaderBar, {
		navigation = self.props.navigation,
	})
end

return function(props)
	local navigationAppContainer = RoactNavigation.createAppContainer(SimpleNavigatorWithHeaderBar)

	return Roact.createElement(FriendsLandingContext.Provider, {
		value = {
			exitFriendsLanding = props.exitFriendsLanding or function()
				print("Navigate back!")
			end,
			totalFriendCount = 0,
			getScreenTopBar = function()
				return { shouldRenderCenter = false }
			end,
		},
	}, {
		navigationAppContainer = Roact.createElement(
			"Frame",
			{ Size = UDim2.new(1, 0, 0, 400), BackgroundTransparency = 1 },
			{ Roact.createElement(navigationAppContainer) }
		),
	})
end
