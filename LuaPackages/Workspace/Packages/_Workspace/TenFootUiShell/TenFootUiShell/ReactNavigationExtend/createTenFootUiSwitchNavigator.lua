local Packages = script:FindFirstAncestor("TenFootUiShell").Parent
local RoactNavigation = require(Packages.RoactNavigation)
local TenFootUiCommon = require(Packages.TenFootUiCommon)

local createNavigator = RoactNavigation.createNavigator
local SwitchRouter = RoactNavigation.SwitchRouter
local TenFootUiSwitchView = require(script.Parent.Views.TenFootUiSwitchView)

type RouteArray = TenFootUiCommon.RouteArray
type SwitchNavigatorConfig = TenFootUiCommon.SwitchNavigatorConfig

local function createTenFootUiSwitchNavigator(routeArray: RouteArray, navigatorConfig: SwitchNavigatorConfig)
	local router = SwitchRouter(routeArray, navigatorConfig)
	return createNavigator(TenFootUiSwitchView, router, navigatorConfig)
end
return createTenFootUiSwitchNavigator
