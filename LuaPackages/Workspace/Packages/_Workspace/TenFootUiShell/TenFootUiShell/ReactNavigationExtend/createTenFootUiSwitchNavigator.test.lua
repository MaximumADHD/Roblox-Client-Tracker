local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local Constants = require(TenFootUiShell.Constants)
local React = require(Packages.React)
local RoactNavigation = require(Packages.RoactNavigation)
local ReactRoblox = require(Packages.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local describe = JestGlobals.describe
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local expect = JestGlobals.expect
local createTenFootUiSwitchNavigator = require(script.Parent.createTenFootUiSwitchNavigator)

describe("createTenFootUiSwitchNavigator", function()
	local backgroundModel
	beforeEach(function()
		backgroundModel = Instance.new("Model")
		backgroundModel.Name = Constants.BACKGROUND_MODEL_NAME
		backgroundModel.Parent = ReplicatedStorage
	end)

	afterEach(function()
		backgroundModel:Destroy()
	end)

	it("should return a navigator that can be used by app container", function()
		local rootContainer = Instance.new("Folder")
		local instanceContainer = Instance.new("Folder")

		local navigator = createTenFootUiSwitchNavigator({
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
