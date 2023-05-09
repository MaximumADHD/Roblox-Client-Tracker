local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local RoactNavigation = dependencies.RoactNavigation
local EnumScreens = require(FriendsLanding.EnumScreens)
local MainStackNavigatorConnector = require(FriendsLanding.Navigator.MainStackNavigatorConnector)
local FriendsLandingFilter = require(FriendsLanding.Components.FriendsLandingFilter)
local FriendsLandingContextualMenu = require(FriendsLanding.Components.FriendsLandingContextualMenu)
local DiscoverabilityOverlay = dependencies.DiscoverabilityOverlay
local CINavigatorInFL = require(FriendsLanding.Navigator.CINavigatorInFL)
local Roact = dependencies.Roact
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local ProfileQRCodePageWrapper = require(FriendsLanding.Navigator.ProfileQRCodePageWrapper)
local ContactImporterNavigator = CINavigatorInFL

local DiscoverabilityWrapped = Roact.PureComponent:extend("DiscoverabilityWrapped")

function DiscoverabilityWrapped:render()
	return FriendsLandingContext.with(function(context)
		return Roact.createElement(DiscoverabilityOverlay, {
			navigation = self.props.navigation,
			context = context,
		})
	end)
end

local routeArray = {
	{
		MainStackNavigator = MainStackNavigatorConnector,
	},
	{
		[EnumScreens.FilterByModal] = {
			screen = FriendsLandingFilter,
		},
	},
	{
		[EnumScreens.ContextualMenu] = FriendsLandingContextualMenu,
	},
	{
		[EnumScreens.ContactImporter] = ContactImporterNavigator,
	},
	{
		[EnumScreens.DiscoverabilityOverlay] = DiscoverabilityWrapped,
	},
	{
		[EnumScreens.ProfileQRCodePage] = ProfileQRCodePageWrapper,
	},
}

local ModalStackNavigator = RoactNavigation.createRobloxStackNavigator(routeArray, {
	defaultNavigationOptions = {
		overlayEnabled = true,
		absorbInput = true,
	},
	mode = RoactNavigation.StackPresentationStyle.Overlay,
})

return ModalStackNavigator
