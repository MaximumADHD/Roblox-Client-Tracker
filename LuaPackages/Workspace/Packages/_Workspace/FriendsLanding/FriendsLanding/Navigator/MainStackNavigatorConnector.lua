local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local MainStackNavigator = require(FriendsLanding.Navigator.MainStackNavigator)
local FriendsLandingHeaderBar = require(FriendsLanding.Components.FriendsLandingHeaderBar)

local MainStackNavigatorConnector = Roact.PureComponent:extend("MainStackNavigatorConnector")

function MainStackNavigatorConnector:render()
	return Roact.createFragment({
		layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		topBar = Roact.createElement(FriendsLandingHeaderBar, {
			navigation = self.props.navigation,
		}),
		navigator = Roact.createElement(MainStackNavigator, {
			navigation = self.props.navigation,
		}),
	})
end

MainStackNavigatorConnector.router = MainStackNavigator.router

return MainStackNavigatorConnector
