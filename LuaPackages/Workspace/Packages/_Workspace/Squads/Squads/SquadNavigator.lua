local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)

local RoactNavigation = dependencies.RoactNavigation

local EnumScreens = require(Squads.EnumScreens)
local SquadLobby = require(Squads.SquadLobby.Components.SquadLobbyPeekView)

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
