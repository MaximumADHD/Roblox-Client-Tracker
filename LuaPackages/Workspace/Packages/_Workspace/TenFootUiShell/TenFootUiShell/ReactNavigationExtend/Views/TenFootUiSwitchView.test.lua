local Packages = script:FindFirstAncestor("TenFootUiShell").Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.Dev.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local expect = JestGlobals.expect

local TenFootUiSwitchView = require(script.Parent.TenFootUiSwitchView)
local TenFootUiNavigatorTypes = require(script.Parent.Parent.TenFootUiNavigatorTypes)
type ScreenKind = TenFootUiNavigatorTypes.ScreenKind
type RouteState = TenFootUiNavigatorTypes.RouteState

it("should mount and pass required props and context", function()
	local containerFolder: Instance = Instance.new("Folder")

	local testScreenProps = {}
	local routeState: RouteState = {
		key = "foo",
		routeName = "Foo",
	}
	local testState = {
		routes = {
			routeState,
		},
		index = 1,
		key = "foo",
	}
	local testNavigation = {
		state = testState,
		dispatch = function() end,
		getParam = function(...)
			return nil
		end,
	}

	local testComponentNavigationFromProp, testComponentScreenProps

	local TestComponent = React.Component:extend("TestComponent")
	function TestComponent:render()
		testComponentNavigationFromProp = self.props.navigation
		testComponentScreenProps = self.props.screenProps
		return nil
	end

	local testNavigationConfig = {
		surfaceGuiContainer = containerFolder,
		worldContainer = containerFolder,
	}

	local testDescriptors = {
		foo = {
			getComponent = function()
				return TestComponent
			end,
			key = "foo",
			options = {
				screenKind = "Default" :: ScreenKind,
			},
			navigation = testNavigation,
			state = testState,
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

	expect(testComponentNavigationFromProp).toBe(testNavigation)
	expect(testComponentScreenProps).toBe(testScreenProps)

	ReactRoblox.act(function()
		root:unmount()
	end)
end)
