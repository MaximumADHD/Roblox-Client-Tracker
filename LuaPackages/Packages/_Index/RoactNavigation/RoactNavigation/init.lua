local NavigationContext = require(script.views.NavigationContext)
local LuauPolyfill = require(script.Parent.LuauPolyfill)
local Object = LuauPolyfill.Object

return {
	-- Navigation container construction
	createAppContainer = require(script.createAppContainer).createAppContainer,
	getNavigation = require(script.getNavigation),

	-- Context Access
	Context = NavigationContext,
	Provider = NavigationContext.Provider,
	Consumer = NavigationContext.Consumer,

	withNavigation = require(script.views.withNavigation),
	withNavigationFocus = require(script.views.withNavigationFocus),

	-- Navigators
	createRobloxStackNavigator = require(script.navigators.createRobloxStackNavigator),
	createRobloxSwitchNavigator = require(script.navigators.createRobloxSwitchNavigator),
	createSwitchNavigator = require(script.navigators.createSwitchNavigator),
	createNavigator = require(script.navigators.createNavigator),

	-- Routers
	StackRouter = require(script.routers.StackRouter),
	SwitchRouter = require(script.routers.SwitchRouter),
	TabRouter = require(script.routers.TabRouter),
	DontMatchEmptyPath = require(script.routers:FindFirstChild("NullPathSymbol.roblox")),

	-- Navigation Actions
	Actions = require(script.NavigationActions),
	StackActions = require(script.routers.StackActions),
	SwitchActions = require(script.routers.SwitchActions),
	BackBehavior = require(script.BackBehavior),

	-- Navigation Events
	Events = require(script.Events),
	NavigationEvents = require(script.views.NavigationEvents),

	-- Util Types
	None = Object.None,

	-- Additional Types
	StackPresentationStyle = require(script.views.RobloxStackView.StackPresentationStyle),
	StackViewTransitionConfigs = require(script.views.RobloxStackView.StackViewTransitionConfigs),

	-- Screen Views
	SceneView = require(script.views.SceneView),
	RobloxSwitchView = require(script.views.RobloxSwitchView),
	RobloxStackView = require(script.views.RobloxStackView.StackView),

	-- Utilities
	createConfigGetter = require(script.routers.createConfigGetter),
	getScreenForRouteName = require(script.routers.getScreenForRouteName),
	validateRouteConfigMap = require(script.routers.validateRouteConfigMap),
	getActiveChildNavigationOptions = require(script.utils.getActiveChildNavigationOptions),
}
