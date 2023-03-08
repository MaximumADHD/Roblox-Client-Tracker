local DiscoverabilityModal = script.Parent
local dependencies = require(DiscoverabilityModal.dependencies)
local RoactNavigation = dependencies.RoactNavigation
local EnumScreens = dependencies.SocialModalsCommon.EnumScreens
local DiscoverabilityOverlay = require(DiscoverabilityModal.Components.DiscoverabilityOverlay)

local Navigator = RoactNavigation.createRobloxSwitchNavigator({
	{
		[EnumScreens.DiscoverabilityOverlay] = DiscoverabilityOverlay,
	},
}, {
	defaultNavigationOptions = {
		overlayEnabled = true,
		absorbInput = true,
		overlayTransparency = 1,
	},
	mode = RoactNavigation.StackPresentationStyle.Modal,
})

return Navigator
