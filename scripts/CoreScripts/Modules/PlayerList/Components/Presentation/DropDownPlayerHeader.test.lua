local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)
local RTL = require(CorePackages.Packages.Dev.ReactTestingLibrary)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local jest = JestGlobals.jest

jest.mock(CorePackages.Workspace.Packages.UserProfiles, function()
	local actual = table.clone(jest.requireActual(CorePackages.Workspace.Packages.UserProfiles))
	actual.Hooks = table.clone(actual.Hooks)
	actual.Hooks.useVerifiedBadge = function()
		return true
	end
	return actual
end)

local Components = script.Parent.Parent
local PlayerList = Components.Parent
local CreateLayoutValues = require(PlayerList.CreateLayoutValues)
local TestProviders = require(PlayerList.TestProviders)

local DropDownPlayerHeader = require(script.Parent.DropDownPlayerHeader)

local VERIFIED_GLYPH = utf8.char(0xE000)

describe("DropDownPlayerHeader verified badge", function()
	local oldOverridePlayerVerifiedBadge

	beforeEach(function()
		oldOverridePlayerVerifiedBadge = game:SetFastFlagForTesting("OverridePlayerVerifiedBadge", true)
	end)

	afterEach(function()
		RTL.cleanup()
		game:SetFastFlagForTesting("OverridePlayerVerifiedBadge", oldOverridePlayerVerifiedBadge)
	end)

	it("keeps the verified badge within the header height", function()
		local layoutValues = CreateLayoutValues(false)
		RTL.render(Roact.createElement(TestProviders, {
			layoutValues = layoutValues,
		}, {
			DropDownPlayerHeader = Roact.createElement(DropDownPlayerHeader, {
				player = Players.LocalPlayer,
			}),
		}))

		local badge = RTL.screen.getByText(VERIFIED_GLYPH)
		expect(badge.TextSize).toBeLessThanOrEqual(layoutValues.DropDownHeaderBackgroundSize)
	end)
end)
