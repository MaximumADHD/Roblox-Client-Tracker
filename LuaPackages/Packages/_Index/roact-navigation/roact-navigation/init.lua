-- Generator information:
-- Human name: Roact Navigation
-- Variable name: RoactNavigation
-- Repo name: roact-navigation

return {
	-- Navigation container construction
	createAppContainer = require(script.createAppContainer),
	getNavigation = require(script.getNavigation),

	-- Context Access
	Context = require(script.views.AppNavigationContext),
	Provider = require(script.views.AppNavigationContext).Provider,
	Consumer = require(script.views.AppNavigationContext).Consumer,
	connect = require(script.views.AppNavigationContext).connect,

	withNavigation = require(script.views.withNavigation),
	withNavigationFocus = require(script.views.withNavigationFocus),

	-- Navigators
	createTopBarStackNavigator = require(script.navigators.createTopBarStackNavigator),
	createSwitchNavigator = require(script.navigators.createSwitchNavigator),
	createNavigator = require(script.navigators.createNavigator),

	-- Routers
	StackRouter = require(script.routers.StackRouter),
	SwitchRouter = require(script.routers.SwitchRouter),
	TabRouter = require(script.routers.TabRouter),

	-- Navigation Actions
	Actions = require(script.NavigationActions),
	StackActions = require(script.StackActions),
	BackBehavior = require(script.BackBehavior),

	-- Navigation Events
	Events = require(script.NavigationEvents),
	EventsAdapter = require(script.views.NavigationEventsAdapter),

	-- Additional Types
	EdgeInsets = require(script.EdgeInsets),
	StackPresentationStyle = require(script.views.StackView.StackPresentationStyle),
	StackHeaderMode = require(script.views.StackView.StackHeaderMode),
	None = require(script.NoneSymbol),

	-- Screen Views
	SceneView = require(script.views.SceneView),
	SwitchView = require(script.views.SwitchView),
	StackView = require(script.views.StackView.StackView),

	-- Top Bar Components
	TopBar = require(script.views.TopBar.TopBar),
	TopBarBackButton = require(script.views.TopBar.TopBarBackButton),
	TopBarTitleContainer = require(script.views.TopBar.TopBarTitleContainer),

	-- Utilities
	createConfigGetter = require(script.routers.createConfigGetter),
	getScreenForRouteName = require(script.routers.getScreenForRouteName),
	validateRouteConfigMap = require(script.routers.validateRouteConfigMap),
	getActiveChildNavigationOptions = require(script.utils.getActiveChildNavigationOptions),
}
