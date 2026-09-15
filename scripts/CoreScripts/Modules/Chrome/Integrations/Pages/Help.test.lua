--!nonstrict
-- Covers the Pioneer branch of `Help.lua`'s `sideSheetPlacement`: Pioneer moves
-- Help above the fold, every other launch keeps it below.
--
-- Strategy mirrors `ShopEntrypoint.test.lua`: the integration registers itself at
-- require time, so each scenario re-requires it under `jest.isolateModules` with
-- `isPioneerLaunch` mocked. Mocks are pinned at the top level so they survive
-- isolation and so the props captured by the fake `register` stay reachable.

local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest

-- Real enum (the same one the integration reads) so placement assertions track
-- the source of truth rather than hard-coded strings.
local SideSheetPlacement = require(CorePackages.Workspace.Packages.Chrome).Enums.SideSheetPlacement

local lastRegisterProps: any = nil

jest.mock(Chrome.Service, function()
	return {
		AvailabilitySignal = {
			Available = "Available",
		},
		register = function(_self, props)
			lastRegisterProps = props
			return { id = props.id }
		end,
	}
end)

jest.mock(Chrome.Integrations.CommonIcon, function()
	return function()
		return nil
	end
end)

jest.mock(Chrome.Integrations.Pages.InGameMenuIntegrationUtils, function()
	return {
		createPageOpenSignal = function()
			return {
				get = function()
					return false
				end,
				connect = function()
					return { disconnect = function() end }
				end,
			}
		end,
		toggleIGMPage = function() end,
	}
end)

local mockIsPioneerLaunch = false
jest.mock(CorePackages.Workspace.Packages.PioneerUtils, function()
	return {
		isPioneerLaunch = function()
			return mockIsPioneerLaunch
		end,
	}
end)

local function loadIntegration(isPioneer: boolean)
	mockIsPioneerLaunch = isPioneer

	jest.isolateModules(function()
		require(script.Parent.Help)
	end)

	return lastRegisterProps
end

describe("Help integration", function()
	it("SHOULD place Help above the fold WHEN the launch is Pioneer", function()
		local props = loadIntegration(true)

		expect(props.sideSheetPlacement).toBe(SideSheetPlacement.AboveFold)
	end)

	it("SHOULD place Help below the fold WHEN the launch is not Pioneer", function()
		local props = loadIntegration(false)

		expect(props.sideSheetPlacement).toBe(SideSheetPlacement.BelowFold)
	end)
end)
