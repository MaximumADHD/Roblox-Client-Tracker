local Packages = script:FindFirstAncestor("TenFootUiShell").Parent
local RoactNavigation = require(Packages.RoactNavigation)
local createNavigator = RoactNavigation.createNavigator
local StackRouter = RoactNavigation.StackRouter
local TenFootUiStackView = require(script.Parent.Views.TenFootUiStackView)
local TenFootUiNavigatorTypes = require(script.Parent.TenFootUiNavigatorTypes)

type RouteArray = TenFootUiNavigatorTypes.RouteArray
type NavigatorConfig = TenFootUiNavigatorTypes.NavigatorConfig

local function createTenFootUiStackhNavigator(routeArray: RouteArray, navigationConfig: NavigatorConfig)
	local router = StackRouter(routeArray, navigationConfig)
	return createNavigator(TenFootUiStackView, router, navigationConfig)
end
return createTenFootUiStackhNavigator
