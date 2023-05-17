local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local TestUtils = TenFootUiShell.TestUtils
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)
local beforeEach = JestGlobals.beforeEach
local it = JestGlobals.it
local expect = JestGlobals.expect

local TenFootUiStackView = require(script.Parent.TenFootUiStackView)
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local ScreenKind = TenFootUiCommon.TenFootUiRNTypes.ScreenKind
local createTenFootUiShellTestHarness = require(TestUtils.createTenFootUiShellTestHarness)
local TenFootUiScene = require(TenFootUiShell.Hooks.TenFootUiScene)

type ScreenKind = TenFootUiCommon.ScreenKind
type RouteState = TenFootUiCommon.RouteState

beforeEach(function()
	local backgroundModel = Instance.new("Model")
	backgroundModel.Name = "TenFootUiBackgroundShapes"
	backgroundModel.Parent = ReplicatedStorage

	TenFootUiScene.initialize()
end)

it("should mount and pass required props and context", function()
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

	local containerFolder: Instance = Instance.new("Folder")
	local testNavigatorConfig = {
		initialRouteKey = "foo",
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
				screenKind = ScreenKind.Default :: ScreenKind,
				screenWrapper = "CanvasGroup" :: any,
			},
			navigation = testNavigation,
			state = testState,
		},
	}

	local element = React.createElement(
		createTenFootUiShellTestHarness(),
		nil,
		React.createElement(TenFootUiStackView, {
			screenProps = testScreenProps,
			navigation = testNavigation,
			navigationConfig = testNavigatorConfig,
			descriptors = testDescriptors,
		})
	)

	local root = ReactRoblox.createRoot(Instance.new("Folder"))
	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(testComponentNavigationFromProp).toBe(testNavigation)
	expect(testComponentScreenProps).toEqual(testScreenProps)

	root:unmount()
end)
