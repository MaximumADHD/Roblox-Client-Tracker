local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
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
local useAutoFocus = require(script.Parent.useAutoFocus)
local FocusNavigationContext = ReactFocusNavigation.FocusNavigationContext

type FocusNavigationService = ReactFocusNavigation.FocusNavigationService

local function HookRenderer(props: { shouldFocus: boolean, targets: { GuiObject } })
	local setShouldFocus = useAutoFocus(props.targets, 0.1)
	React.useEffect(function()
		setShouldFocus(props.shouldFocus)
	end, { props.shouldFocus })
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

describe("useAutoFocus when there is a focusNavigationService", function()
	local focusNavigationService
	beforeEach(function()
		focusNavigationService = FocusNavigationService.new(CoreGuiInterface)
	end)

	afterEach(function()
		focusNavigationService:focusGuiObject(nil)
		focusNavigationService:teardown()
		cleanup()
	end)

	it("should attempt to focus each item in the list when focus cannot be gained", function()
		local guiObjectOne = Instance.new("Frame")
		guiObjectOne.Parent = CoreGui
		guiObjectOne.Name = "guiObjectOne"
		local guiObjectTwo = Instance.new("Frame")
		guiObjectTwo.Parent = CoreGui
		guiObjectTwo.Name = "guiObjectTwo"
		local guiObjectThree = Instance.new("Frame")
		guiObjectThree.Parent = CoreGui
		guiObjectThree.Name = "guiObjectThree"

		local targets: { GuiObject } = { guiObjectOne, guiObjectTwo, guiObjectThree }
		local shouldFocus = true
		focusNavigationService.focusGuiObject = jest.fn()
		render(
			React.createElement(HookRenderer, { targets = targets, shouldFocus = shouldFocus }),
			{ wrapper = createTestHarness(focusNavigationService) }
		)
		act(function()
			task.wait(1)
		end)
		expect(focusNavigationService.focusGuiObject).toHaveBeenCalledWith(
			focusNavigationService,
			expect.objectContaining({ Name = "guiObjectOne" }),
			false
		)
		expect(focusNavigationService.focusGuiObject).toHaveBeenCalledWith(
			focusNavigationService,
			expect.objectContaining({ Name = "guiObjectTwo" }),
			false
		)
		expect(focusNavigationService.focusGuiObject).toHaveBeenCalledWith(
			focusNavigationService,
			expect.objectContaining({ Name = "guiObjectThree" }),
			false
		)
	end)
	it("should stop attempting to focus when focus is gained", function()
		local guiObjectOne = Instance.new("Frame")
		guiObjectOne.Parent = CoreGui
		guiObjectOne.Name = "guiObjectOne"
		guiObjectOne.Selectable = true
		local guiObjectTwo = Instance.new("Frame")
		guiObjectTwo.Parent = CoreGui
		guiObjectTwo.Name = "guiObjectTwo"
		guiObjectTwo.Selectable = true

		local targets: { GuiObject } = { guiObjectOne, guiObjectTwo }
		local shouldFocus = true
		render(
			React.createElement(HookRenderer, { targets = targets, shouldFocus = shouldFocus }),
			{ wrapper = createTestHarness(focusNavigationService) }
		)
		act(function()
			task.wait(0.5) -- enough time to cycle through the list twice
		end)
		expect(GuiService.SelectedCoreObject).toBe(guiObjectOne)
	end)
	it("should focus the first thing in the list that is focusable", function()
		local guiObjectOne = Instance.new("Frame")
		guiObjectOne.Parent = CoreGui
		guiObjectOne.Name = "guiObjectOne"
		local guiObjectTwo = Instance.new("Frame")
		guiObjectTwo.Parent = CoreGui
		guiObjectTwo.Name = "guiObjectTwo"
		guiObjectTwo.Selectable = true

		local targets: { GuiObject } = { guiObjectOne, guiObjectTwo }
		local shouldFocus = true
		render(
			React.createElement(HookRenderer, { targets = targets, shouldFocus = shouldFocus }),
			{ wrapper = createTestHarness(focusNavigationService) }
		)
		act(function()
			task.wait(0.3) -- enough time to focus the second item
		end)
		expect(GuiService.SelectedCoreObject).toBe(guiObjectTwo)
	end)
	it("should not attempt to focus when there are no targets", function()
		local targets = {}
		local shouldFocus = true
		focusNavigationService.focusGuiObject = jest.fn()
		render(
			React.createElement(HookRenderer, { targets = targets, shouldFocus = shouldFocus }),
			{ wrapper = createTestHarness(focusNavigationService) }
		)
		act(function()
			task.wait(0.2) -- enough time to attempt to focus once
		end)
		expect(focusNavigationService.focusGuiObject).never.toHaveBeenCalled()
	end)
	it("should not attempt to focus when it hasn't been triggered", function()
		local guiObjectOne = Instance.new("Frame")
		guiObjectOne.Parent = CoreGui
		guiObjectOne.Name = "guiObjectOne"
		local targets: { GuiObject } = { guiObjectOne }
		local shouldFocus = false
		focusNavigationService.focusGuiObject = jest.fn()
		render(
			React.createElement(HookRenderer, { targets = targets, shouldFocus = shouldFocus }),
			{ wrapper = createTestHarness(focusNavigationService) }
		)
		act(function()
			task.wait(0.2) -- enough time to attempt to focus once
		end)
		expect(focusNavigationService.focusGuiObject).never.toHaveBeenCalled()
	end)
end)
