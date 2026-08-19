local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local React = require(Packages.React)
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local Types = require(Main.Types)

local StudioUri = require(Main.Util.StudioUri)
local afterAll = JestGlobals.afterAll
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local e = React.createElement
local expect = JestGlobals.expect
local fireEvent = ReactTestingLibrary.fireEvent
local it = JestGlobals.it
local jest = JestGlobals.jest
local render = ReactTestingLibrary.render
local within = ReactTestingLibrary.within

local FFlagStudioFoundationThemeContext = require(Main.SharedFlags.getFFlagStudioFoundationThemeContext)()
-- Foundation buttons only get a non-zero width when the theme stylesheet is wired up, which happens
-- on the flag-on path; skip click-dependent tests when the flag is off (matches SF's flag gating).
local itIfThemeContext: any = if FFlagStudioFoundationThemeContext then it else it.skip
local itEachIfThemeContext: any = if FFlagStudioFoundationThemeContext then it.each else (it.skip :: any).each

-- Mock useTooltip hook
local mockShowTooltip, rawMockShowTooltip = jest.fn()
local mockHideTooltip, rawMockHideTooltip = jest.fn()
jest.mock(Packages.Framework, function()
	local actual = table.clone(jest.requireActual(Packages.Framework))
	actual.UI.Hooks.useTooltip = function()
		return rawMockShowTooltip, rawMockHideTooltip
	end
	return actual
end)

-- Mock useButtonGroupFairWidth to control button width computation in tests
local mockButtonWidths: { [string]: number }? = nil
local mockRegisterButton = function(_id: string, _rbx: GuiObject?) end
local mockOnContainerSizeChanged = function(_rbx: GuiObject) end
jest.mock(Main.Components.Dialog.useButtonGroupFairWidth, function()
	return function(_gapSize: number)
		return mockButtonWidths, mockRegisterButton, mockOnContainerSizeChanged
	end
end)

local DialogButtonGroup = require(script.Parent.DialogButtonGroup)
local mockContext = require(Main.Util.mockContext)

local function createTestElement(props: DialogButtonGroup.Props)
	return mockContext({
		Container = e("Frame", {
			Size = UDim2.fromOffset(318, 32),
			Position = UDim2.fromScale(0.5, 0.5),
			AnchorPoint = Vector2.new(0.5, 0.5),
		}, {
			DialogButtonGroup = e(DialogButtonGroup, props),
		}),
	})
end

describe("DialogButtonGroup", function()
	beforeEach(function()
		mockShowTooltip.mockReset()
		mockHideTooltip.mockReset()
	end)

	afterAll(function()
		jest.resetModules()
	end)

	it("should render without errors", function()
		render(createTestElement({}))
	end)

	-- Test all combinations of primary, secondary, and tertiary buttons
	local itEach = itEachIfThemeContext :: any
	itEach({
		{ name = "no buttons", primary = false, secondary = false, tertiary = false },
		{ name = "the primary button", primary = true, secondary = false, tertiary = false },
		{ name = "the secondary button", primary = false, secondary = true, tertiary = false },
		{ name = "the tertiary button", primary = false, secondary = false, tertiary = true },
		{ name = "the primary and secondary buttons", primary = true, secondary = true, tertiary = false },
		{ name = "the primary and tertiary buttons", primary = true, secondary = false, tertiary = true },
		{ name = "the secondary and tertiary buttons", primary = false, secondary = true, tertiary = true },
		{ name = "all buttons", primary = true, secondary = true, tertiary = true },
	})("should be able to render $name", function(case)
		local PRIMARY_URI = StudioUri.fromWidget("Test", "Primary")
		local SECONDARY_URI = StudioUri.fromWidget("Test", "Secondary")
		local TERTIARY_URI = StudioUri.fromWidget("Test", "Tertiary")

		local onActivated = jest.fn()
		local expectedCalls = 0

		local rendered = render(createTestElement({
			primaryAction = if case.primary
				then {
					uri = PRIMARY_URI,
					text = "Primary",
					onActivated = onActivated,
				}
				else nil,
			secondaryAction = if case.secondary
				then {
					uri = SECONDARY_URI,
					text = "Secondary",
					onActivated = onActivated,
				}
				else nil,
			tertiaryAction = if case.tertiary
				then {
					uri = TERTIARY_URI,
					text = "Tertiary",
					onActivated = onActivated,
				}
				else nil,
		}))

		if case.primary then
			local primary = rendered.getByTestId("--dialog-button-primary")
			within(primary).getByText("Primary")
			fireEvent.click(primary)
			expectedCalls += 1
			expect(onActivated).toHaveBeenLastCalledWith(PRIMARY_URI)
		else
			expect(rendered.queryByTestId("--dialog-button-primary")).toBeNil()
		end

		if case.secondary then
			local secondary = rendered.getByTestId("--dialog-button-secondary")
			within(secondary).getByText("Secondary")
			fireEvent.click(secondary)
			expectedCalls += 1
			expect(onActivated).toHaveBeenLastCalledWith(SECONDARY_URI)
		else
			expect(rendered.queryByTestId("--dialog-button-secondary")).toBeNil()
		end

		if case.tertiary then
			local tertiary = rendered.getByTestId("--dialog-button-tertiary")
			within(tertiary).getByText("Tertiary")
			fireEvent.click(tertiary)
			expectedCalls += 1
			expect(onActivated).toHaveBeenLastCalledWith(TERTIARY_URI)
		else
			expect(rendered.queryByTestId("--dialog-button-tertiary")).toBeNil()
		end

		expect(onActivated).toHaveBeenCalledTimes(expectedCalls)
	end)

	it("should respect LayoutOrder", function()
		local layoutOrderBinding, setLayoutOrderBinding = React.createBinding(5)
		local testComponent = createTestElement({
			LayoutOrder = layoutOrderBinding,
		})

		local rendered = render(testComponent)
		local buttonGroup = rendered.getByTestId("--dialog-button-group")

		expect(buttonGroup.LayoutOrder).toBe(5)

		setLayoutOrderBinding(10)
		expect(buttonGroup.LayoutOrder).toBe(10)
	end)

	itIfThemeContext("should show tooltips for buttons with truncated text", function()
		local rendered = render(createTestElement({
			primaryAction = {
				uri = StudioUri.fromWidget("Test", "TruncatedButton"),
				text = "This text is very long and it is so long that it will be truncated, surely right?",
				onActivated = function() end,
			},
		}))

		local button = rendered.getByTestId("--dialog-button-primary")
		fireEvent.click(button) -- MouseEnter event doesn't work with Foundation onStateChanged, for whatever reason
		expect(mockShowTooltip).toHaveBeenCalledTimes(1)
	end)
end)

--[[
	These tests verify that DialogButtonGroup correctly applies width constraints
	from the useButtonGroupFairWidth hook. The hook is mocked (see top of file)
	so we can control its output and test the component's rendering behavior.

	When the hook returns nil (no overflow), buttons render unconstrained.
	When the hook returns per-button widths, each button's wrapper gets an explicit Size.
]]
describe("DialogButtonGroup overflow behavior", function()
	local noop = function() end
	local PRIMARY_URI = StudioUri.fromWidget("Test", "Primary")
	local SECONDARY_URI = StudioUri.fromWidget("Test", "Secondary")
	local TERTIARY_URI = StudioUri.fromWidget("Test", "Tertiary")

	local function makeAction(uri, text): Types.DialogAction
		return { uri = uri, text = text, onActivated = noop }
	end

	local function getButtonMaxWidth(rendered, testId: string): number?
		local wrapper = rendered.getByTestId(testId).Parent :: GuiObject
		local constraint = wrapper:FindFirstChildWhichIsA("UISizeConstraint")
		return if constraint then constraint.MaxSize.X else nil
	end

	beforeEach(function()
		mockShowTooltip.mockReset()
		mockHideTooltip.mockReset()
		mockButtonWidths = nil
	end)

	it("should leave buttons unconstrained when no overflow", function()
		mockButtonWidths = nil

		local rendered = render(createTestElement({
			primaryAction = makeAction(PRIMARY_URI, "Continue"),
			secondaryAction = makeAction(SECONDARY_URI, "Always Continue"),
			tertiaryAction = makeAction(TERTIARY_URI, "Cancel"),
		}))

		-- Unconstrained: UISizeConstraint with 120px max (MAX_BUTTON_WIDTH)
		expect(getButtonMaxWidth(rendered, "--dialog-button-primary")).toBe(120)
		expect(getButtonMaxWidth(rendered, "--dialog-button-secondary")).toBe(120)
		expect(getButtonMaxWidth(rendered, "--dialog-button-tertiary")).toBe(120)
	end)

	it("should constrain only the long button when one overflows", function()
		mockButtonWidths = { primary = 60, secondary = 174, tertiary = 50 }

		local rendered = render(createTestElement({
			primaryAction = makeAction(PRIMARY_URI, "OK"),
			secondaryAction = makeAction(SECONDARY_URI, "This is very long and should truncate"),
			tertiaryAction = makeAction(TERTIARY_URI, "Cancel"),
		}))

		expect(getButtonMaxWidth(rendered, "--dialog-button-primary")).toBe(60)
		expect(getButtonMaxWidth(rendered, "--dialog-button-secondary")).toBe(174)
		expect(getButtonMaxWidth(rendered, "--dialog-button-tertiary")).toBe(50)
	end)

	it("should constrain all buttons equally when all overflow", function()
		mockButtonWidths = { primary = 95, secondary = 95, tertiary = 95 }

		local rendered = render(createTestElement({
			primaryAction = makeAction(PRIMARY_URI, "Always Continue Without Saving"),
			secondaryAction = makeAction(SECONDARY_URI, "Don't Save Changes Forever"),
			tertiaryAction = makeAction(TERTIARY_URI, "Cancel and Go Back to Start"),
		}))

		expect(getButtonMaxWidth(rendered, "--dialog-button-primary")).toBe(95)
		expect(getButtonMaxWidth(rendered, "--dialog-button-secondary")).toBe(95)
		expect(getButtonMaxWidth(rendered, "--dialog-button-tertiary")).toBe(95)
	end)

	it("should place tertiary to the right of primary and secondary", function()
		mockButtonWidths = nil

		local rendered = render(createTestElement({
			primaryAction = makeAction(PRIMARY_URI, "Save"),
			secondaryAction = makeAction(SECONDARY_URI, "Cancel"),
			tertiaryAction = makeAction(TERTIARY_URI, "Help"),
		}))

		local primaryWrapper = rendered.getByTestId("--dialog-button-primary").Parent :: GuiObject
		local tertiaryWrapper = rendered.getByTestId("--dialog-button-tertiary").Parent :: GuiObject
		local primaryAndSecondary = primaryWrapper.Parent :: GuiObject

		expect(tertiaryWrapper.LayoutOrder).toBeGreaterThan(primaryAndSecondary.LayoutOrder)
	end)
end)
