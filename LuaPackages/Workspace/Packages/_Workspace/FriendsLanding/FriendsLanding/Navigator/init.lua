local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local RoactNavigation = dependencies.RoactNavigation
local EnumScreens = require(FriendsLanding.EnumScreens)
local ModalStackNavigator = require(FriendsLanding.Navigator.ModalStackNavigator)
local ToastScreen = dependencies.SocialLibraries.Components.ToastScreen

local RootNavigator = RoactNavigation.createRobloxStackNavigator({
	{
		ModalStackNavigator = ModalStackNavigator,
	},
	{
		[EnumScreens.GenericToast] = {
			screen = ToastScreen,
			navigationOptions = {
				overlayEnabled = true,
				overlayTransparency = 1,
				absorbInput = false,
				renderUnderlyingPage = true,
			},
		},
	},
}, {
	mode = RoactNavigation.StackPresentationStyle.Overlay,
})

return RootNavigator
