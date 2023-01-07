local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local EnumScreens = require(FriendsLanding.EnumScreens)
local AppScreens = require(FriendsLanding.AppScreens)

local SocialLibraries = dependencies.SocialLibraries
local compose = SocialLibraries.RoduxTools.compose

local GatewayComponent = Roact.PureComponent:extend("GatewayComponent")

function GatewayComponent:render()
	return nil
end

-- this component serves purely to redirect to the appropriate page
function GatewayComponent:didMount()
	if self.props.entryPage == AppScreens.AddFriendsPage then
		self.props.navigation.replace(EnumScreens.AddFriends)
	else -- context.currentAppPage == "ViewFriends"
		self.props.navigation.replace(EnumScreens.FriendsLanding)
	end
end

return compose(FriendsLandingContext.connect(function(state, _)
	return {
		entryPage = state.entryPage,
	}
end))(GatewayComponent)
