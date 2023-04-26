local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local createTenFootUiStackNavigator = require(script.Parent.createTenFootUiStackNavigator)
local createTenFootUiSwitchNavigator = require(script.Parent.createTenFootUiSwitchNavigator)

type TenFootUiRouterConfig = TenFootUiCommon.TenFootUiRouterConfig
type SwitchNavigatorConfig = TenFootUiCommon.SwitchNavigatorConfig

local function createTenFootUiNavigator(routerConfig: TenFootUiRouterConfig, navigatorConfig: SwitchNavigatorConfig)
	local switchNavigatorRouterConfig = table.clone(routerConfig.switchRoutes)
	for _, stackRoute in ipairs(routerConfig.stackRoutes) do
		for key, config in pairs(stackRoute) do
			table.insert(switchNavigatorRouterConfig, {
				[key] = {
					screen = createTenFootUiStackNavigator(config.screenStack, {
						surfaceGuiContainer = navigatorConfig.surfaceGuiContainer,
						worldContainer = navigatorConfig.worldContainer,
					}),
					navigationOptions = config.navigationOptions,
				},
			})
		end
	end
	return createTenFootUiSwitchNavigator(switchNavigatorRouterConfig, navigatorConfig)
end
return createTenFootUiNavigator
