local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local isPioneerLaunch = require(CorePackages.Workspace.Packages.PioneerUtils).isPioneerLaunch

local AVAILABLE = 2
local registeredDefinition
local registerMock = jest.fn(function(_self, definition)
	registeredDefinition = definition
	return definition
end)
local AccountUpsellMock = function()
	return nil
end

jest.mock(Chrome.Service, function()
	return {
		AvailabilitySignal = {
			Available = AVAILABLE,
		},
		register = registerMock,
	}
end)

jest.mock(CorePackages.Workspace.Packages.InExperienceSideSheet, function()
	return {
		AccountUpsell = AccountUpsellMock,
	}
end)

require(script.Parent.AccountUpsell)

describe("AccountUpsell", function()
	if isPioneerLaunch() then
		it("SHOULD register the widget as available through Chrome", function()
			expect(registerMock).toHaveBeenCalledTimes(1)
			expect(registeredDefinition).toEqual(expect.objectContaining({
				id = "AccountUpsell",
				initialAvailability = AVAILABLE,
				sideSheetPlacement = ChromePackage.Enums.SideSheetPlacement.FixedFooterTop,
				components = expect.objectContaining({
					Widget = expect.any("function"),
				}),
			}))
		end)

		it("SHOULD adapt the Chrome widget props for the account upsell component", function()
			local Widget = assert(registeredDefinition.components.Widget, "Account upsell should register a widget")
			local widgetElement = Widget({
				layoutOrder = 3,
				placement = ChromePackage.Enums.SideSheetPlacement.FixedFooterTop,
			}) :: any

			expect(widgetElement.type).toBe(AccountUpsellMock)
			expect(widgetElement.props).toEqual(expect.objectContaining({
				layoutOrder = 3,
				placement = ChromePackage.Enums.SideSheetPlacement.FixedFooterTop,
				onActivated = expect.any("function"),
			}))
		end)
	else
		it("SHOULD not register the widget outside the Pioneer side sheet", function()
			expect(registerMock).never.toHaveBeenCalled()
		end)
	end
end)
