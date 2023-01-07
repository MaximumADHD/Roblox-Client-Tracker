local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)

local dependencies = require(FriendsLanding.dependencies)
local Dash = dependencies.Dash

local devDependencies = require(FriendsLanding.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local mockLocale = devDependencies.UnitTestHelpers.mockLocale

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local HideableTooltip = require(script.Parent.HideableTooltip)

describe("HideableTooltip", function()
	local DEFAULT_PROPS: HideableTooltip.Props = {
		onClick = Dash.noop,
		showTooltip = true,
		bodyText = "a",
		headerText = "b",
	}

	it("SHOULD create and destroy without errors", function()
		local instance, cleanup = createInstanceWithProviders(mockLocale)(HideableTooltip, {
			props = DEFAULT_PROPS,
		})

		expect(#instance:GetChildren()).toBe(1)

		cleanup()
	end)

	it("SHOULD not show if showTooltip is false", function()
		local instance, cleanup = createInstanceWithProviders(mockLocale)(HideableTooltip, {
			props = Dash.join(DEFAULT_PROPS, {
				showTooltip = false,
			}),
		})

		local tooltip = RhodiumHelpers.findFirstInstance(instance, {
			Name = "Tooltip",
		})

		expect(tooltip).toBeNil()

		cleanup()
	end)

	it("SHOULD show correct text", function()
		local instance, cleanup = createInstanceWithProviders(mockLocale)(HideableTooltip, {
			props = Dash.join(DEFAULT_PROPS, {
				headerText = "[LOCALIZE] Friending Tip",
			}),
		})

		local tooltip = RhodiumHelpers.findFirstInstance(instance, {
			Name = "Tooltip",
		})

		expect(tooltip).never.toBeNil()
		expect(tooltip.TooltipContainer.Content.Header.Text).toBe("[LOCALIZE] Friending Tip")

		cleanup()
	end)

	it("SHOULD call 'onClick' when pressed", function()
		local onClick = jest.fn()
		local instance, cleanup = createInstanceWithProviders(mockLocale)(HideableTooltip, {
			props = Dash.join(DEFAULT_PROPS, {
				onClick = onClick,
			}),
		})

		local tooltip = RhodiumHelpers.findFirstInstance(instance, {
			Name = "Tooltip",
		})

		RhodiumHelpers.clickInstance(tooltip)

		expect(tooltip).never.toBeNil()
		expect(onClick).toHaveBeenCalledTimes(1)

		cleanup()
	end)
end)
