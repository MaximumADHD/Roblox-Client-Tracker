local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local React = require(Packages.React)
local JestGlobals = require(Packages.Dev.JestGlobals)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local render = ReactTestingLibrary.render

local TooltipSettingsContext = require(script.Parent.TooltipSettingsContext)
local FFlagStudioFoundationPopupTooltipFix = require(Main.SharedFlags.getFFlagStudioFoundationPopupTooltipFix)()

-- Stability tests require the flag-on memoization; skip them when the flag is off
-- so they don't fail in flags-off CI (they would fail by design: old code is unstable).
local itIfFixed: any = if FFlagStudioFoundationPopupTooltipFix then it else it.skip

describe("TooltipSettingsContext", function()
	-- Unconditional: basic contract holds in both flag states.
	it("should provide delay, tooltipsDisabled, and setTooltipsDisabled through context", function()
		local capturedSettings

		local function Consumer()
			capturedSettings = TooltipSettingsContext.useTooltipSettings()
			return nil
		end

		render(React.createElement(TooltipSettingsContext.Provider, nil, React.createElement(Consumer)))

		expect(capturedSettings).never.toBeNil()
		expect(capturedSettings.delay).never.toBeNil()
		expect((capturedSettings.delay :: any).open).never.toBeNil()
		expect((capturedSettings.delay :: any).close).never.toBeNil()
		expect(capturedSettings.tooltipsDisabled).toBe(false)
		expect(capturedSettings.setTooltipsDisabled).never.toBeNil()
	end)

	-- Unconditional: custom delay prop is passed through in both flag states.
	it("should use the provided delay prop instead of the default", function()
		local capturedDelay
		local customDelay = { open = 1.5, close = 0.5 }

		local function Consumer()
			capturedDelay = TooltipSettingsContext.useTooltipSettings().delay
			return nil
		end

		render(
			React.createElement(TooltipSettingsContext.Provider, { delay = customDelay }, React.createElement(Consumer))
		)

		expect(capturedDelay).toBe(customDelay)
	end)

	-- Flag-on only: proves that the fallback delay table is memoized so its reference
	-- is stable. The old code created a new table every render, resetting the tooltip timer.
	itIfFixed("should return a stable delay reference across rerenders when no custom delay is provided", function()
		local capturedDelay

		local function Consumer()
			capturedDelay = TooltipSettingsContext.useTooltipSettings().delay
			return nil
		end

		local root = render(React.createElement(TooltipSettingsContext.Provider, nil, React.createElement(Consumer)))
		local firstDelay = capturedDelay

		root.rerender(React.createElement(TooltipSettingsContext.Provider, nil, React.createElement(Consumer)))

		expect(capturedDelay).toBe(firstDelay)
	end)

	-- Flag-on only: proves that a stable delay keeps the whole contextValue stable,
	-- so consumers are not re-rendered and the tooltip open-timer is not reset.
	itIfFixed("should return a stable context value across rerenders when inputs are unchanged", function()
		local capturedSettings

		local function Consumer()
			capturedSettings = TooltipSettingsContext.useTooltipSettings()
			return nil
		end

		local root = render(React.createElement(TooltipSettingsContext.Provider, nil, React.createElement(Consumer)))
		local firstSettings = capturedSettings

		root.rerender(React.createElement(TooltipSettingsContext.Provider, nil, React.createElement(Consumer)))

		expect(capturedSettings).toBe(firstSettings)
	end)
end)
