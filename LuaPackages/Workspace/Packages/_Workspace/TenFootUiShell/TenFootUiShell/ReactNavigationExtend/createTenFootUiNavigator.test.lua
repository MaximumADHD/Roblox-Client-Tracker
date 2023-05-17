local Packages = script:FindFirstAncestor("TenFootUiShell").Parent
local React = require(Packages.React)
local RoactNavigation = require(Packages.RoactNavigation)
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local expect = JestGlobals.expect
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local ScreenKind = TenFootUiCommon.TenFootUiRNTypes.ScreenKind

type TenFootUiRouterConfig = TenFootUiCommon.TenFootUiRouterConfig

local createTenFootUiNavigator = require(script.Parent.createTenFootUiNavigator)

local function TestScreen()
	return React.createElement("Folder")
end

it("should return a navigator that can be used by app container", function()
	local instanceContainer = Instance.new("Folder") :: Instance

	local routerConfig: TenFootUiRouterConfig = {
		stackRoutes = {
			{
				StackOne = {
					navigatorConfig = {
						initialRouteKey = "ScreenThree",
					},
					navigationOptions = {
						screenKind = ScreenKind.Default,
					},
					screenStack = {
						{
							ScreenThree = {
								screen = TestScreen,
								navigationOptions = {
									screenKind = ScreenKind.Overlay,
								},
							},
						},
					},
				},
			},
		},
		switchRoutes = {
			{
				ScreenOne = {
					screen = TestScreen,
					navigationOptions = {
						screenKind = ScreenKind.Default,
					},
				},
			},
			{
				ScreenTwo = {
					screen = TestScreen,
					navigationOptions = {
						screenKind = ScreenKind.Overlay,
					},
				},
			},
		},
		commonStackRoutes = {
			{
				StackTwo = {
					screen = TestScreen,
					navigationOptions = {
						screenKind = ScreenKind.Default,
					},
				},
			},
		},
	}

	local navigator = createTenFootUiNavigator(routerConfig, {
		initialRouteName = "ScreenOne",
		surfaceGuiContainer = instanceContainer,
		worldContainer = instanceContainer,
	})

	local appContainer = RoactNavigation.createAppContainer(navigator)
	expect(appContainer.router).toEqual(expect.any("table"))
	expect(appContainer.router.childRouters).toEqual(expect.any("table"))
end)
