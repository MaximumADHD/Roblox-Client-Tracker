local CoreGui = game:GetService("CoreGui")
local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local jest = JestGlobals.jest
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local act = ReactTestingLibrary.act
local cleanup = ReactTestingLibrary.cleanup
local render = ReactTestingLibrary.render
local ReactFocusNavigation = require(Packages.ReactFocusNavigation)
local FocusNavigationService = ReactFocusNavigation.FocusNavigationService
local CoreGuiInterface = ReactFocusNavigation.EngineInterface.CoreGui
local TestUtils = require(Packages.Dev.TestUtils)
local waitForEvents = TestUtils.DeferredLuaHelpers.waitForEvents
local useFocusNavigationActive = require(script.Parent.useFocusNavigationActive)
local FocusNavigationContext = ReactFocusNavigation.FocusNavigationContext

type FocusNavigationService = ReactFocusNavigation.FocusNavigationService

local function HookRenderer(props: { reporter: (active: boolean) -> () })
	local active = useFocusNavigationActive()
	React.useEffect(function()
		props.reporter(active)
	end, { active, props.reporter } :: { any })
	return React.createElement("Frame")
end

local function TestHarness(props: { focusNavigationService: FocusNavigationService, children: any })
	return React.createElement(
		FocusNavigationContext.Provider,
		{ value = props.focusNavigationService },
		props.children
	)
end

local function createTestHarness(focusNavigationService: FocusNavigationService)
	return function(props)
		return React.createElement(TestHarness, { focusNavigationService = focusNavigationService }, props.children)
	end
end

describe("useGlobalFocusHandler when there is a focusNavigationService", function()
	local focusNavigationService
	local focusableGuiObject
	beforeEach(function()
		focusNavigationService = FocusNavigationService.new(CoreGuiInterface)
		focusableGuiObject = Instance.new("TextButton")
		focusableGuiObject.Parent = CoreGui
	end)

	afterEach(function()
		focusNavigationService:focusGuiObject(nil)
		focusNavigationService:teardown()
		cleanup()
	end)

	it("should return false if nothing is focused", function()
		local reporter = jest.fn()
		render(
			React.createElement(HookRenderer, { reporter = reporter }),
			{ wrapper = createTestHarness(focusNavigationService) }
		)
		act(function()
			waitForEvents()
			focusNavigationService:focusGuiObject(nil)
			task.wait(1)
		end)
		expect(reporter).toHaveBeenCalledWith(false)
	end)

	it("should return true if something is focused", function()
		local reporter = jest.fn()
		render(
			React.createElement(HookRenderer, { reporter = reporter }),
			{ wrapper = createTestHarness(focusNavigationService) }
		)
		act(function()
			waitForEvents()
			focusNavigationService:focusGuiObject(focusableGuiObject)
			task.wait(1)
		end)
		expect(reporter).toHaveBeenCalledWith(true)
	end)
end)
