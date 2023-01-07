local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local RoactNavigation = dependencies.RoactNavigation
local UIBlox = dependencies.UIBlox
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local IconButton = UIBlox.App.Button.IconButton
local Images = UIBlox.App.ImageSet.Images

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
					return Roact.createElement(IconButton, {
						size = UDim2.fromOffset(0, 0),
						icon = Images["icons/common/search"],
						layoutOrder = 1,
					})
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
			getScreenTopBar = function()
				return { shouldRenderCenter = false }
			end,
		},
	}, {
		navigationAppContainer = Roact.createElement(navigationAppContainer),
	})
end
