local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local TestUtils = TenFootUiShell.TestUtils
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local expect = JestGlobals.expect

local TenFootUiSwitchView = require(script.Parent.TenFootUiSwitchView)
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local createTenFootUiShellTestHarness = require(TestUtils.createTenFootUiShellTestHarness)

type ScreenKind = TenFootUiCommon.ScreenKind
type RouteState = TenFootUiCommon.RouteState

it("should mount and pass required props and context", function()
	local containerFolder: Instance = Instance.new("Folder")

	local testScreenProps = {
		testProps = "testProps",
	}
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
			return
		end,
		addListener = function(_e, _fn)
			return { remove = function() end }
		end,
	}

	local testComponentNavigationFromProp, testComponentScreenProps

	local TestComponent = React.Component:extend("TestComponent")
	function TestComponent:render()
		testComponentNavigationFromProp = self.props.navigation
		testComponentScreenProps = self.props.screenProps
		return nil
	end

	local testNavigatorConfig = {
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

	local element = React.createElement(createTenFootUiShellTestHarness(TenFootUiSwitchView), {
		screenProps = testScreenProps,
		navigation = testNavigation,
		navigationConfig = testNavigatorConfig,
		descriptors = testDescriptors,
	})

	local root = ReactRoblox.createRoot(Instance.new("Folder"))
	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(testComponentNavigationFromProp).toEqual(testNavigation)
	expect(testComponentScreenProps).toEqual(expect.objectContaining(testScreenProps))

	root:unmount()
end)
