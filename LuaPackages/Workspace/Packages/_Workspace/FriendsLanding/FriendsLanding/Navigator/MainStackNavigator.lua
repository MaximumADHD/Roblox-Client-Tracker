--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local RoactNavigation = dependencies.RoactNavigation
local FriendsLandingScreen = require(FriendsLanding.Components.FriendsLandingScreen)
local AddFriendsScreen = require(FriendsLanding.Components.AddFriends.AddFriendsScreen)
local FriendsLandingScreenNavigationOptions = require(FriendsLanding.Components.FriendsLandingScreen.NavigationOptions)
local EnumScreens = require(FriendsLanding.EnumScreens)
local PlayerSearchWrapper = require(FriendsLanding.Navigator.PlayerSearchWrapper)
local HeaderBarCenterView = require(FriendsLanding.Components.HeaderBarCenterView)
local HeaderBarRightView = require(FriendsLanding.Components.HeaderBarRightView)
local GatewayComponent = require(FriendsLanding.Navigator.GatewayComponent)
local llama = dependencies.llama

local getFFlagAddFriendsFullPlayerSearchbar = dependencies.getFFlagAddFriendsFullPlayerSearchbar

local MainStackNavigator = RoactNavigation.createRobloxStackNavigator({
	{
		[EnumScreens.Gateway] = {
			screen = GatewayComponent,
			navigationOptions = {
				headerText = {},
			},
		},
	},
	{
		[EnumScreens.FriendsLanding] = {
			screen = FriendsLandingScreen,
			navigationOptions = FriendsLandingScreenNavigationOptions,
		},
	},
	{
		[EnumScreens.AddFriends] = {
			screen = AddFriendsScreen,
			navigationOptions = function(navProps)
				return {
					headerText = {
						raw = "Feature.Chat.Label.AddFriends",
					},
					renderCenter = function()
						return Roact.createElement(
							HeaderBarCenterView,
							llama.Dictionary.join(navProps, { shouldRenderSearchbarButtonInWideMode = true })
						)
					end,
					renderRight = if getFFlagAddFriendsFullPlayerSearchbar()
						then nil
						else function()
							return Roact.createElement(HeaderBarRightView, navProps)
						end,
					useSecondaryHeader = if getFFlagAddFriendsFullPlayerSearchbar() then true else nil,
					shouldRenderSearchbarButtonInWideMode = if getFFlagAddFriendsFullPlayerSearchbar()
						then true
						else nil,
				}
			end,
		},
	},
	{
		[EnumScreens.SearchFriends] = {
			screen = function(navProps)
				return Roact.createElement(PlayerSearchWrapper, {
					navigation = navProps.navigation,
				})
			end,
			navigationOptions = function(navProps)
				return {
					headerText = {
						raw = if getFFlagAddFriendsFullPlayerSearchbar()
							then "Feature.AddFriends.Label.InputPlaceholder.SearchForPeople"
							else "Feature.Friends.Label.SearchFriends",
					},
					tabBarVisible = false,
					renderCenter = function()
						return Roact.createElement(HeaderBarCenterView, navProps)
					end,
					renderRight = function()
						return Roact.createElement(HeaderBarRightView, navProps)
					end,
					useSecondaryHeader = if getFFlagAddFriendsFullPlayerSearchbar() then true else nil,
				}
			end,
		},
	},
})

return MainStackNavigator
