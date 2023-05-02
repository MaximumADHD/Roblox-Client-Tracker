local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local createTenFootUiStackNavigator = require(script.Parent.createTenFootUiStackNavigator)
local createTenFootUiSwitchNavigator = require(script.Parent.createTenFootUiSwitchNavigator)

type TenFootUiRouterConfig = TenFootUiCommon.TenFootUiRouterConfig
type SwitchNavigatorConfig = TenFootUiCommon.SwitchNavigatorConfig

local function createTenFootUiNavigator(routerConfig: TenFootUiRouterConfig, navigatorConfig: SwitchNavigatorConfig)
	local switchNavigatorRouterConfig = table.clone(routerConfig.switchRoutes)
	for _, stackRoute in routerConfig.stackRoutes do
		for key, config in stackRoute do
			local screenStack = Array.concat(config.screenStack, routerConfig.commonStackRoutes)
			table.insert(switchNavigatorRouterConfig, {
				[key] = {
					screen = createTenFootUiStackNavigator(screenStack, config.navigatorConfig),
					navigationOptions = config.navigationOptions,
				},
			})
		end
	end
	return createTenFootUiSwitchNavigator(switchNavigatorRouterConfig, navigatorConfig)
end
return createTenFootUiNavigator
