local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local RoactNavigation = require(Packages.RoactNavigation)
local ReactRoblox = require(Packages.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)
local createTenFootUiShellTestHarness = require(TenFootUiShell.TestUtils.createTenFootUiShellTestHarness)

local it = JestGlobals.it
local expect = JestGlobals.expect
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local AnimationStyleEnum = TenFootUiCommon.TenFootUiRNTypes.AnimationStyleEnum

local createTenFootUiSwitchNavigator = require(script.Parent.createTenFootUiSwitchNavigator)

it("should return a navigator that can be used by app container", function()
	local rootContainer = Instance.new("Folder")
	local instanceContainer = Instance.new("Folder")

	local navigator = createTenFootUiSwitchNavigator({
		{
			Foo = {
				screen = function()
					return React.createElement("Folder")
				end,
				navigationOptions = {
					screenKind = "Default",
					animationStyle = AnimationStyleEnum.None,
				},
			},
		},
	}, {
		initialRouteName = "Foo",
		surfaceGuiContainer = instanceContainer,
		worldContainer = instanceContainer,
	})

	local appContainer = RoactNavigation.createAppContainer(navigator)
	expect(appContainer.router).toEqual(expect.any("table"))
	expect(appContainer.router.childRouters).toEqual(expect.any("table"))
	expect(appContainer.router.childRouters["Foo"]).toBeFalsy()

	local root = ReactRoblox.createRoot(rootContainer)

	ReactRoblox.act(function()
		root:render(React.createElement(createTenFootUiShellTestHarness(appContainer)))
	end)

	root:unmount()
end)
