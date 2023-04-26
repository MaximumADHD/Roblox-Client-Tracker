local Packages = script:FindFirstAncestor("TenFootUiShell").Parent
local RoactNavigation = require(Packages.RoactNavigation)
local TenFootUiCommon = require(Packages.TenFootUiCommon)

local createNavigator = RoactNavigation.createNavigator
local StackRouter = RoactNavigation.StackRouter
local TenFootUiStackView = require(script.Parent.Views.TenFootUiStackView)

type RouteArray = TenFootUiCommon.RouteArray
type StackNavigatorConfig = TenFootUiCommon.StackNavigatorConfig

local function createTenFootUiStackNavigator(routeArray: RouteArray, navigatorConfig: StackNavigatorConfig?)
	local router = StackRouter(routeArray, navigatorConfig)
	return createNavigator(TenFootUiStackView, router, navigatorConfig or {})
end
return createTenFootUiStackNavigator
