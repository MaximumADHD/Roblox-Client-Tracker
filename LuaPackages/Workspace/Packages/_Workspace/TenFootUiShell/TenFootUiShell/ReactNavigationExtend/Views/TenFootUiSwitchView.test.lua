local Packages = script:FindFirstAncestor("TenFootUiShell").Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.Dev.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local expect = JestGlobals.expect

local TenFootUiSwitchView = require(script.Parent.TenFootUiSwitchView)
local TenFootUiNavigatorTypes = require(script.Parent.Parent.TenFootUiNavigatorTypes)
type ScreenKind = TenFootUiNavigatorTypes.ScreenKind

it("should mount and pass required props and context", function()
	local containerFolder: Instance = Instance.new("Folder")

	local testScreenProps = {}
	local routeState = {
		key = "Foo",
		routeName = "Foo",
	}
	local testState = {
		routes = {
			routeState,
		},
		index = 1,
	}
	local testNavigation = {
		state = testState,
		dispatch = function() end,
		getParam = function(foo)
			return nil
		end,
	}
	local testNavigationConfig = {
		surfaceGuiContainer = containerFolder,
		worldContainer = containerFolder,
	}

	local testComponentNavigationFromProp = nil
	local testComponentScreenProps = nil

	local TestComponent = React.Component:extend("TestComponent")
	function TestComponent:render()
		testComponentNavigationFromProp = self.props.navigation
		testComponentScreenProps = self.props.screenProps
		return nil
	end

	local testDescriptors = {
		Foo = {
			getComponent = function()
				return TestComponent
			end,
			key = "Foo",
			options = {
				screenKind = "Default" :: ScreenKind,
			},
			navigation = testNavigation,
			state = routeState,
		},
	}

	local element = React.createElement(TenFootUiSwitchView, {
		screenProps = testScreenProps,
		navigation = testNavigation,
		navigationConfig = testNavigationConfig,
		descriptors = testDescriptors,
	})

	local root = ReactRoblox.createRoot(Instance.new("Folder"))
	ReactRoblox.act(function()
		root:render(element)
	end)

	ReactRoblox.act(function()
		root:unmount()
	end)

	expect(testComponentNavigationFromProp).toBe(testNavigation)
	expect(testComponentScreenProps).toBe(testScreenProps)
end)
