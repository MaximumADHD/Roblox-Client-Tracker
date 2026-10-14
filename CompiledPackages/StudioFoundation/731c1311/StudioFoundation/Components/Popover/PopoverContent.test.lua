local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local React = require(Packages.React)
local Framework = require(Packages.Framework)
local JestGlobals = require(Packages.Dev.JestGlobals)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local render = ReactTestingLibrary.render

local TestHelpers = Framework.TestHelpers
local FoundationProviderAdapter = require(script.Parent.Parent.FoundationProviderAdapter)
local PopoverContent = require(script.Parent.PopoverContent)

local FFlagStudioFoundationPopupTooltipFix = require(Main.SharedFlags.getFFlagStudioFoundationPopupTooltipFix)()

-- Portal-rendering test requires the flag-on code path; skip when flag is off.
local itIfFixed: any = if FFlagStudioFoundationPopupTooltipFix then it else it.skip

-- Wrap with FoundationProviderAdapter so Design context and Foundation.Hooks.useStyleSheet()
-- are both available, matching the real usage context of PopoverContent.
local function wrap(element)
	return TestHelpers.provideMockContext(
		{},
		{ Root = React.createElement(FoundationProviderAdapter, { theme = "Dark" }, element) }
	)
end

describe("PopoverContent", function()
	-- Unconditional: early-return behaviour is the same in both flag states.
	it("should render nothing when isOpen is false", function()
		local root = render(wrap(React.createElement(PopoverContent, {
			isOpen = false,
			panel = nil,
		})))

		expect(root.queryByTestId("popover-inner-content")).toBeNil()
	end)

	-- Unconditional: nil panel guard is the same in both flag states.
	it("should render nothing when panel is nil even if isOpen is true", function()
		local root = render(wrap(React.createElement(PopoverContent, {
			isOpen = true,
			panel = nil,
		})))

		expect(root.queryByTestId("popover-inner-content")).toBeNil()
	end)

	-- Flag-on only: exercises the portal path and the `if foundationStyleSheet` conditional.
	-- Note: Foundation.Hooks.useStyleSheet() returns nil in the test harness (polyfill enabled),
	-- so the second StyleLink is not rendered in tests. The test proves the portal itself works
	-- and the component does not error when foundationStyleSheet is nil (false branch).
	itIfFixed("should render children into the portal container when isOpen and panel are provided", function()
		local container = Instance.new("ScreenGui")

		render(
			wrap(
				React.createElement(
					PopoverContent,
					{ isOpen = true, panel = { container = container } :: any },
					React.createElement("Frame", { [React.Tag] = "data-testid=popover-inner-content" })
				)
			)
		)

		expect(container:FindFirstChildWhichIsA("Frame")).never.toBeNil()

		container:Destroy()
	end)
end)
