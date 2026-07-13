local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest

local IN_EXPERIENCE_SHOP_ID = "in_experience_shop"
local LEAVE_ACTION = "sidesheet_leave"
local RESPAWN_ACTION = "sidesheet_respawn"

jest.mock(CorePackages.Workspace.Packages.InExperienceSideSheet, function()
	return {
		Enums = {
			ActionBinding = {
				Leave = LEAVE_ACTION,
				Respawn = RESPAWN_ACTION,
			},
		},
	}
end)

jest.mock(Chrome.Integrations.Connect.isConnectDropdownEnabled, function()
	return function()
		return true
	end
end)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableSideSheet = SharedFlags.FFlagEnableSideSheet
local FFlagEnableInExperienceShop = SharedFlags.FFlagEnableInExperienceShop
local FIntSideSheetVariant = SharedFlags.FIntSideSheetVariant

local function buildOrder(): { string }
	return (require(script.Parent.buildMenuOrder))()
end

local function contains(list: { string }, id: string): boolean
	return table.find(list, id) ~= nil
end

describe("buildMenuOrder", function()
	if FFlagEnableSideSheet then
		describe("side-sheet layout", function()
			it("SHOULD include the people tab", function()
				expect(contains(buildOrder(), "people")).toBe(true)
			end)

			it("SHOULD include the leave and respawn action bindings", function()
				local order = buildOrder()
				expect(contains(order, LEAVE_ACTION)).toBe(true)
				expect(contains(order, RESPAWN_ACTION)).toBe(true)
			end)

			describe("reorder", function()
				it("SHOULD reposition settings based on FIntSideSheetVariant", function()
					local order = buildOrder()
					local settingsIndex = table.find(order, "settings")
					local emotesIndex = table.find(order, "emotes")

					expect(settingsIndex).never.toBeNil()
					expect(emotesIndex).never.toBeNil()

					if FIntSideSheetVariant == 0 then
						-- variant 0 pushes settings (30 -> 103) below emotes (90).
						expect(settingsIndex).toBeGreaterThan(emotesIndex)
					else
						-- otherwise settings keeps its default placement above emotes.
						expect(settingsIndex).toBeLessThan(emotesIndex)
					end
				end)

				if not FFlagEnableInExperienceShop then
					it("SHOULD NOT add an unavailable item to the map", function()
						-- The shop is reordered under variant 0 but stays hidden while
						-- its flag is off, since reorder only touches present items.
						expect(contains(buildOrder(), IN_EXPERIENCE_SHOP_ID)).toBe(false)
					end)
				end
			end)
		end)
	else
		describe("legacy nine-dot layout", function()
			it("SHOULD NOT include the people tab", function()
				expect(contains(buildOrder(), "people")).toBe(false)
			end)

			it("SHOULD NOT include the leave or respawn action bindings", function()
				local order = buildOrder()
				expect(contains(order, LEAVE_ACTION)).toBe(false)
				expect(contains(order, RESPAWN_ACTION)).toBe(false)
			end)
		end)
	end
end)
