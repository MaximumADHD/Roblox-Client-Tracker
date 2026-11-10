--!nonstrict
-- Tests `openInExperienceShopWindow`: the Chrome open path the trial tooltip
-- calls after the shopper activates it.
--
-- Strategy: ChromeService is faked so the test can see whether the shop
-- integration is activated or the window is toggled. The centering helper is
-- left real; `updateWindowPosition` is a no-op so the center-flag path does
-- not need a registered integration.

local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach

local Constants = require(Chrome.ChromeShared.Unibar.Constants)

local activate = jest.fn()
local toggleWindow = jest.fn()
local isWindowOpen = false
local isIntegrationValid = true

jest.mock(Chrome.Service, function()
	return {
		activate = function(_self, integrationId: string)
			activate(integrationId)
		end,
		isIntegrationValid = function()
			return isIntegrationValid
		end,
		isWindowOpen = function()
			return isWindowOpen
		end,
		toggleWindow = function(_self, integrationId: string)
			toggleWindow(integrationId)
		end,
		updateWindowPosition = function() end,
	}
end)

local openInExperienceShopWindow = require(script.Parent.ShopWindowLayout).openInExperienceShopWindow

describe("openInExperienceShopWindow", function()
	beforeEach(function()
		activate.mockClear()
		toggleWindow.mockClear()
		isWindowOpen = false
		isIntegrationValid = true
	end)

	it("SHOULD NOT open the shop when the window is already open", function()
		isWindowOpen = true

		openInExperienceShopWindow()

		expect(activate).never.toHaveBeenCalled()
		expect(toggleWindow).never.toHaveBeenCalled()
	end)

	it("SHOULD activate the shop integration when it is valid", function()
		openInExperienceShopWindow()

		expect(activate).toHaveBeenCalledWith(Constants.IN_EXPERIENCE_SHOP_ID)
		expect(toggleWindow).never.toHaveBeenCalled()
	end)

	it("SHOULD toggle the shop window when the integration is unavailable", function()
		isIntegrationValid = false

		openInExperienceShopWindow()

		expect(activate).never.toHaveBeenCalled()
		expect(toggleWindow).toHaveBeenCalledWith(Constants.IN_EXPERIENCE_SHOP_ID)
	end)
end)
