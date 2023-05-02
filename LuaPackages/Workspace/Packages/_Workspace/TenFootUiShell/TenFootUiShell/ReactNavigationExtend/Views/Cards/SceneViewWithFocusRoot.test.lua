local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local JestGlobals = require(Packages.Dev.JestGlobals)
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local it = JestGlobals.it
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local cleanup = ReactTestingLibrary.cleanup
local render = ReactTestingLibrary.render
local ReactFocusNavigation = require(Packages.ReactFocusNavigation)
local FocusNavigationService = ReactFocusNavigation.FocusNavigationService
local CoreGuiInterface = ReactFocusNavigation.EngineInterface.CoreGui
local SceneViewWithFocusRoot = require(script.Parent.SceneViewWithFocusRoot)
local createTenFootUiShellTestHarness = require(TenFootUiShell.TestUtils.createTenFootUiShellTestHarness)
local mocks = require(Packages.Dev.TenFootUiTesting).TestHelpers.mocks
local RoactNavigation = require(Packages.RoactNavigation)
local Events = RoactNavigation.Events

type NavigationState = TenFootUiCommon.NavigationState

describe("SceneViewWithFocusRoot", function()
	local focusNavigationService
	local interface
	beforeEach(function()
		interface = table.clone(CoreGuiInterface)
		interface.setSelection = jest.fn()
		focusNavigationService = FocusNavigationService.new(interface)
	end)

	afterEach(function()
		focusNavigationService:focusGuiObject(nil)
		focusNavigationService:teardown()
		cleanup()
	end)

	it("should register a callback on willFocus", function()
		local testDescriptor = mocks.makeMockDescriptor("testKey", {
			index = 1,
			key = "test",
			routes = {},
		}, "Default")
		testDescriptor.navigation.addListener = jest.fn()
		local TestHarness = createTenFootUiShellTestHarness(SceneViewWithFocusRoot, focusNavigationService, {})
		render(
			React.createElement(
				TestHarness,
				{ component = testDescriptor.getComponent(), navigation = testDescriptor.navigation }
			)
		)
		expect(testDescriptor.navigation.addListener).toHaveBeenCalledWith(Events.WillFocus, expect.any("function"))
	end)

	it("should not register a callback on willFocus if there are child navigators", function()
		local testDescriptor = mocks.makeMockDescriptor("testKey", {
			index = 1,
			key = "test",
			routes = {},
		}, "Default")
		testDescriptor.navigation.addListener = jest.fn()
		testDescriptor.navigation._childrenNavigation = {}
		local TestHarness = createTenFootUiShellTestHarness(SceneViewWithFocusRoot, focusNavigationService, {})
		render(
			React.createElement(
				TestHarness,
				{ component = testDescriptor.getComponent(), navigation = testDescriptor.navigation }
			)
		)
		expect(testDescriptor.navigation.addListener).never.toHaveBeenCalledWith(
			Events.WillFocus,
			expect.any("function")
		)
	end)
end)
