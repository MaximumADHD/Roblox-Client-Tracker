local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local JestGlobals = require(Packages.Dev.JestGlobals)
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
local FocusNavigableWrapper = require(script.Parent.FocusNavigableWrapper)
local TestUtils = require(Packages.Dev.TestUtils)
local waitForEvents = TestUtils.DeferredLuaHelpers.waitForEvents

local function createFocusNavigationWrapper(focusNavigationService)
	return function(props)
		return React.createElement(
			ReactFocusNavigation.FocusNavigationContext.Provider,
			{ value = focusNavigationService },
			props.children
		)
	end
end

describe("FocusNavigableWrapper", function()
	local focusNavigationService
	local FocusNavigationWrapper
	beforeEach(function()
		focusNavigationService = FocusNavigationService.new(CoreGuiInterface)
		FocusNavigationWrapper = createFocusNavigationWrapper(focusNavigationService)
	end)

	afterEach(function()
		focusNavigationService:focusGuiObject(nil)
		focusNavigationService:teardown()
		cleanup()
	end)

	for _, args in
		{
			{ callback = "onSelectStart" },
			{ callback = "onSelectEnd" },
			{ callback = "onSelectUp" },
			{ callback = "onSelectDown" },
		}
	do
		it("should create a bumper when given a callback for selecting in a direction", function()
			local callback = args.callback
			local mockFn = jest.fn()
			local renderResult = render(
				React.createElement(
					FocusNavigationWrapper,
					nil,
					React.createElement(
						FocusNavigableWrapper,
						{ [callback] = mockFn },
						React.createElement("TextButton", { Text = "test" })
					)
				)
			)

			local element = (renderResult.container :: GuiObject):FindFirstChild("FocusBumper", true)
			expect(element).toBeDefined()
		end)
	end

	for _, args in
		{
			{ callback = "onSelectStart" },
			{ callback = "onSelectEnd" },
			{ callback = "onSelectUp" },
			{ callback = "onSelectDown" },
		}
	do
		it("should call the appropriate callback when the element becomes selected", function()
			local callback = args.callback
			local mockFn = jest.fn()

			local renderResult = render(
				React.createElement(
					FocusNavigationWrapper,
					nil,
					React.createElement(
						FocusNavigableWrapper,
						{ [callback] = mockFn },
						React.createElement("TextButton", { Text = "test" })
					)
				)
			)

			local element = renderResult.getByText("test")
			expect(element).toBeDefined()
			focusNavigationService:focusGuiObject(element)
			waitForEvents.act()
			local bumper = (renderResult.container :: GuiObject):FindFirstChild("FocusBumper", true)
			focusNavigationService:focusGuiObject(bumper)
			waitForEvents.act()
			expect(mockFn).toHaveBeenCalled()
		end)
	end

	it("should display children", function()
		local renderResult = render(
			React.createElement(
				FocusNavigationWrapper,
				nil,
				React.createElement(FocusNavigableWrapper, {}, React.createElement("TextLabel", { Text = "test" }))
			)
		)
		local element = renderResult.getByText("test")
		expect(element).toBeDefined()
	end)
end)
