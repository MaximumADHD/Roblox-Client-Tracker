local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local EnumScreens = require(FriendsLanding.EnumScreens)
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local FriendsLandingContainer = require(FriendsLanding.Components.FriendsLandingContainer)

local FriendsLandingScreen = Roact.PureComponent:extend("FriendsLandingScreen")

FriendsLandingScreen.defaultProps = {
	friends = {},
}

function FriendsLandingScreen:render()
	return FriendsLandingContext.with(function(context)
		local screenTopBar = context.getScreenTopBar(EnumScreens.FriendsLanding)

		return Roact.createElement(FriendsLandingContainer, {
			navigation = self.props.navigation,
			filterText = screenTopBar.filterText,
			setScreenTopBar = context.setScreenTopBar,
		})
	end)
end

return FriendsLandingScreen
