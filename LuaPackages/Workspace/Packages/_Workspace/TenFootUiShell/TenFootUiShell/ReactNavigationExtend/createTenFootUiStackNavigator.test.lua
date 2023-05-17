local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local TestUtils = TenFootUiShell.TestUtils
local React = require(Packages.React)
local RoactNavigation = require(Packages.RoactNavigation)
local ReactRoblox = require(Packages.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)
local createTenFootUiShellTestHarness = require(TestUtils.createTenFootUiShellTestHarness)
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local ScreenKind = TenFootUiCommon.TenFootUiRNTypes.ScreenKind

local it = JestGlobals.it
local describe = JestGlobals.describe
local expect = JestGlobals.expect

local createTenFootUiStackNavigator = require(script.Parent.createTenFootUiStackNavigator)

describe("createTenFootUiStackNavigator", function()
	it("should return a navigator that can be used by app container", function()
		local rootContainer = Instance.new("Folder")
		local instanceContainer = Instance.new("Folder") :: Instance

		local navigator = createTenFootUiStackNavigator({
			{
				Foo = {
					screen = function()
						return React.createElement("Folder")
					end,
					navigationOptions = {
						screenKind = ScreenKind.Default,
						screenWrapper = "CanvasGroup",
					},
				},
			},
			{
				Bar = {
					screen = function()
						return React.createElement("Folder")
					end,
					navigationOptions = {
						screenKind = ScreenKind.Overlay,
					},
				},
			},
		}, {
			initialRouteKey = "Foo",
			surfaceGuiContainer = instanceContainer,
			worldContainer = instanceContainer,
		})

		local AppContainer = RoactNavigation.createAppContainer(navigator)
		expect(AppContainer.router).toEqual(expect.any("table"))
		expect(AppContainer.router.childRouters).toEqual(expect.any("table"))
		expect(AppContainer.router.childRouters["Foo"]).toBeFalsy()
		local TenFootUiTestHarness = createTenFootUiShellTestHarness()

		local root = ReactRoblox.createRoot(rootContainer)

		ReactRoblox.act(function()
			root:render(React.createElement(TenFootUiTestHarness, nil, React.createElement(AppContainer)))
		end)
		root:unmount()
	end)
end)
