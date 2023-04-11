local Packages = script:FindFirstAncestor("TenFootUiShell").Parent
local RoactNavigation = require(Packages.RoactNavigation)
local createNavigator = RoactNavigation.createNavigator
local SwitchRouter = RoactNavigation.SwitchRouter
local TenFootUiSwitchView = require(script.Parent.Views.TenFootUiSwitchView)
local TenFootUiNavigatorTypes = require(script.Parent.TenFootUiNavigatorTypes)

type RouteArray = TenFootUiNavigatorTypes.RouteArray
type NavigatorConfig = TenFootUiNavigatorTypes.NavigatorConfig

local function createTenFootUiSwitchNavigator(routeArray: RouteArray, navigationConfig: NavigatorConfig)
	local router = SwitchRouter(routeArray, navigationConfig)
	return createNavigator(TenFootUiSwitchView, router, navigationConfig)
end
return createTenFootUiSwitchNavigator
