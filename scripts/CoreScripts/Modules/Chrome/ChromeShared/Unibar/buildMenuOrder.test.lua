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
local FFlagShowSwitchServerButton = SharedFlags.FFlagShowSwitchServerButton
local isSideSheetEnabled = require(CorePackages.Workspace.Packages.InExperienceSideSheetUtils.isSideSheetEnabled)
local FFlagAddInviteFriendsIntegration = SharedFlags.FFlagAddInviteFriendsIntegration
local FFlagEnableSideSheetRobuxWidget = require(Chrome.Flags.FFlagEnableSideSheetRobuxWidget)
local shouldEnableRobuxWidget = FFlagEnableSideSheetRobuxWidget and isSideSheetEnabled
local FFlagEnableInExperienceShop = SharedFlags.FFlagEnableInExperienceShop
local isPioneerLaunch = require(CorePackages.Workspace.Packages.PioneerUtils).isPioneerLaunch
local FFlagRemoveFriendsChatUnibarEntrypoints = SharedFlags.FFlagRemoveFriendsChatUnibarEntrypoints
local FFlagExpChatCanShowFriendsTab = SharedFlags.FFlagExpChatCanShowFriendsTab
local FFlagSideSheetUnifiedMenuOrder = SharedFlags.FFlagSideSheetUnifiedMenuOrder

-- The legacy Connect entrypoint is only removed once the Friends tab is actually
-- shown (RemoveEntrypoints + CanShow). Because the reorg gate now
-- follows CanShow rather than F, a holdout (CanShow off) keeps connect_dropdown.
local function isConnectDropdownRemovalActive(): boolean
	return FFlagRemoveFriendsChatUnibarEntrypoints and FFlagExpChatCanShowFriendsTab
end

local function buildOrder(): { string }
	return (require(script.Parent.buildMenuOrder))()
end

local function contains(list: { string }, id: string): boolean
	return table.find(list, id) ~= nil
end

describe("buildMenuOrder", function()
	if isSideSheetEnabled then
		describe("side-sheet layout", function()
			it("SHOULD include the people tab", function()
				expect(contains(buildOrder(), "people")).toBe(true)
			end)

			it("SHOULD include the leave and respawn action bindings", function()
				local order = buildOrder()
				expect(contains(order, LEAVE_ACTION)).toBe(true)
				expect(contains(order, RESPAWN_ACTION)).toBe(true)
			end)

			if shouldEnableRobuxWidget then
				it("SHOULD place the Robux widget before standard menu entries", function()
					local order = buildOrder()
					expect(order[1]).toBe("RobuxWidget")
				end)
			else
				it("SHOULD NOT include the Robux widget", function()
					expect(contains(buildOrder(), "RobuxWidget")).toBe(false)
				end)
			end

			if isPioneerLaunch() then
				it("SHOULD include switch server", function()
					expect(contains(buildOrder(), "switch_server")).toBe(true)
				end)

				it("SHOULD include the account upsell", function()
					expect(contains(buildOrder(), "AccountUpsell")).toBe(true)
				end)

				it("SHOULD place the account upsell above the side-sheet actions", function()
					local order = buildOrder()
					local accountUpsellIndex = table.find(order, "AccountUpsell")
					local leaveIndex = table.find(order, LEAVE_ACTION)
					local respawnIndex = table.find(order, RESPAWN_ACTION)

					expect(accountUpsellIndex).never.toBeNil()
					expect(leaveIndex).never.toBeNil()
					expect(respawnIndex).never.toBeNil()
					expect(accountUpsellIndex).toBeLessThan(leaveIndex)
					expect(accountUpsellIndex).toBeLessThan(respawnIndex)
				end)
			else
				it("SHOULD not include the account upsell outside Pioneer", function()
					expect(contains(buildOrder(), "AccountUpsell")).toBe(false)
				end)

				if FFlagShowSwitchServerButton or isPioneerLaunch() then
					it("SHOULD include switch server while its flag is on", function()
						expect(contains(buildOrder(), "switch_server")).toBe(true)
					end)
				else
					it("SHOULD not include switch server while its flag is off", function()
						expect(contains(buildOrder(), "switch_server")).toBe(false)
					end)
				end
			end

			if isPioneerLaunch() then
				it("SHOULD remove integrations for pioneer", function()
					local order = buildOrder()
					expect(contains(order, "connect_dropdown")).toBe(false)
					expect(contains(order, "invite_friends")).toBe(FFlagAddInviteFriendsIntegration)
					expect(contains(order, "avatar_switcher")).toBe(false)
					expect(contains(order, "emotes")).toBe(false)
					expect(contains(order, "traversal_history")).toBe(false)
					expect(contains(order, "camera_entrypoint")).toBe(false)
					expect(contains(order, "gallery")).toBe(false)
				end)
			end

			describe("reorder", function()
				it("SHOULD keep settings above the leaderboard", function()
					local order = buildOrder()
					local settingsIndex = table.find(order, "settings")
					local leaderboardIndex = table.find(order, "leaderboard")

					expect(settingsIndex).never.toBeNil()
					expect(leaderboardIndex).never.toBeNil()
					expect(settingsIndex).toBeLessThan(leaderboardIndex)
				end)

				if not FFlagEnableInExperienceShop then
					it("SHOULD NOT add an unavailable item to the map", function()
						expect(contains(buildOrder(), IN_EXPERIENCE_SHOP_ID)).toBe(false)
					end)
				end
			end)

			if FFlagSideSheetUnifiedMenuOrder then
				describe("unified menu order", function()
					it("SHOULD order the available entries as the unified list", function()
						local unifiedOrder = {
							"people",
							"connect_dropdown",
							"invite_friends",
							"settings",
							"leaderboard",
							"emotes",
							"avatar_switcher",
							"backpack",
							IN_EXPERIENCE_SHOP_ID,
							"gallery",
							"camera_entrypoint",
							"help",
							"trust_and_safety",
							"music_entrypoint",
							"selfie_view",
							"switch_server",
							"traversal_history",
							LEAVE_ACTION,
							RESPAWN_ACTION,
						}
						local order = buildOrder()
						local presentInOrder = {}
						for _, id in order do
							if table.find(unifiedOrder, id) then
								table.insert(presentInOrder, id)
							end
						end
						local expected = {}
						for _, id in unifiedOrder do
							if contains(order, id) then
								table.insert(expected, id)
							end
						end

						expect(presentInOrder).toEqual(expected)
					end)

					it("SHOULD end the list with Leave then Respawn", function()
						local order = buildOrder()
						expect(order[#order - 1]).toBe(LEAVE_ACTION)
						expect(order[#order]).toBe(RESPAWN_ACTION)
					end)

					it("SHOULD move report below the leaderboard", function()
						local order = buildOrder()
						expect(table.find(order, "trust_and_safety")).toBeGreaterThan(table.find(order, "leaderboard"))
					end)
				end)
			elseif not isPioneerLaunch() then
				it("SHOULD keep report above the leaderboard", function()
					local order = buildOrder()
					expect(table.find(order, "trust_and_safety")).toBeLessThan(table.find(order, "leaderboard"))
				end)
			end
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

			it("SHOULD NOT include the account upsell", function()
				expect(contains(buildOrder(), "AccountUpsell")).toBe(false)
			end)

			it("SHOULD NOT include the Robux widget", function()
				expect(contains(buildOrder(), "RobuxWidget")).toBe(false)
			end)
		end)
	end

	describe("connect_dropdown entrypoint", function()
		-- isConnectDropdownEnabled is mocked to true, so presence is decided by the
		-- reorg gate (and, in the side-sheet layout, pioneer). The holdout keeps the
		-- entrypoint; only the fully-shown arm removes it.
		local pioneerHidesConnectDropdown = isSideSheetEnabled and isPioneerLaunch()

		it("SHOULD retain connect_dropdown for the holdout (Friends tab hidden)", function()
			if isConnectDropdownRemovalActive() or pioneerHidesConnectDropdown then
				return
			end

			expect(contains(buildOrder(), "connect_dropdown")).toBe(true)
		end)

		it("SHOULD remove connect_dropdown WHEN the Friends tab is fully shown", function()
			if not isConnectDropdownRemovalActive() then
				return
			end

			expect(contains(buildOrder(), "connect_dropdown")).toBe(false)
		end)
	end)
end)
