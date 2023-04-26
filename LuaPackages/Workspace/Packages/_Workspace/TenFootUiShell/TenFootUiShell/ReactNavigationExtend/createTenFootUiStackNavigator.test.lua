local Packages = script:FindFirstAncestor("TenFootUiShell").Parent
local React = require(Packages.React)
local RoactNavigation = require(Packages.RoactNavigation)
local ReactRoblox = require(Packages.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)
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
						return React.createElement("Folder", nil, {})
					end,
					navigationOptions = {
						screenKind = "Default",
					},
				},
			},
			{
				Bar = {
					screen = function()
						return React.createElement("Folder", nil, {})
					end,
					navigationOptions = {
						screenKind = "Overlay",
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
			root:render(React.createElement(appContainer))
		end)

		root:unmount()
	end)
end)
