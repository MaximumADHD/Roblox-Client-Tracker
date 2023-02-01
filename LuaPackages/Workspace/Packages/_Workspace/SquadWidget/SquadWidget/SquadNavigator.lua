local SquadWidget = script:FindFirstAncestor("SquadWidget")
local dependencies = require(SquadWidget.dependencies)

local RoactNavigation = dependencies.RoactNavigation

local EnumScreens = require(SquadWidget.EnumScreens)
local SquadLobby = require(SquadWidget.SquadLobby.Components.SquadLobbyPeekView)

return RoactNavigation.createRobloxStackNavigator({
	{
		[EnumScreens.SquadLobby] = SquadLobby,
	},
}, {
	defaultNavigationOptions = {
		absorbInput = true,
		overlayEnabled = true,
		renderUnderlyingPage = true,
	},
	mode = RoactNavigation.StackPresentationStyle.Modal,
})
