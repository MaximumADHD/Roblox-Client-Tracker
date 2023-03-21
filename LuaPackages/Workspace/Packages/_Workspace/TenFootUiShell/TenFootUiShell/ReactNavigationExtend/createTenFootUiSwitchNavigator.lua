local Packages = script:FindFirstAncestor("TenFootUiShell").Parent
local RoactNavigation = require(Packages.RoactNavigation)
local createNavigator = RoactNavigation.createNavigator
local SwitchRouter = RoactNavigation.SwitchRouter
local TenFootUiSwitchView = require(script.Parent.Views.TenFootUiSwitchView)
local TenFootUiNavigatorTypes = require(script.Parent.TenFootUiNavigatorTypes)

type RouteArray = TenFootUiNavigatorTypes.RouteArray
type SwitchConfig = TenFootUiNavigatorTypes.SwitchNavigatorConfig

local function createTenFootUiSwitchNavigator(routeArray: RouteArray, switchConfig: SwitchConfig)
	local router = SwitchRouter(routeArray, switchConfig)
	return createNavigator(TenFootUiSwitchView, router, switchConfig)
end
return createTenFootUiSwitchNavigator
