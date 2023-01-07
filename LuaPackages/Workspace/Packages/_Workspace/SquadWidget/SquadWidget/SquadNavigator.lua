local SquadWidget = script:FindFirstAncestor("SquadWidget")
local dependencies = require(SquadWidget.dependencies)

local RoactNavigation = dependencies.RoactNavigation

local EnumScreens = require(SquadWidget.EnumScreens)
-- TODO: Fill out to use the proper component when it is done.
local SquadLobby = require(SquadWidget.SquadLobby.Components.SquadLobbyAddFriendCard)

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
