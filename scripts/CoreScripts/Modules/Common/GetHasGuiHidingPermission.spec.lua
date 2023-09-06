--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect

local GetFIntCanHideGuiGroupId = require(CoreGui.RobloxGui.Modules.Flags.GetFIntCanHideGuiGroupId)

local GetHasGuiHidingPermission = require(script.Parent.GetHasGuiHidingPermission)

local function createMockPlayerPermissions(canManage)
	return {
		CanPlayerManagePlaceAsync = function(player)
			return player and canManage
		end,
	}
end

local function createMockPlayerInGroup(playerGroup)
	return {
		IsInGroup = function(self, group)
			return playerGroup and group == playerGroup or false
		end,
	}
end

return function()
	describe("GetHasGuiHidingPermission", function()
		local playerNoGroup = createMockPlayerInGroup()
		local playerGuiHideGroup = createMockPlayerInGroup(GetFIntCanHideGuiGroupId())
		local playerPermissionsAllow = createMockPlayerPermissions(true)
		local playerPermissionsDisallow = createMockPlayerPermissions(false)

		it("returns false if feature is not supported", function()
			local featureSupported = game:GetEngineFeature("GuiHidingApiSupport")
			local success, result =
				GetHasGuiHidingPermission(true, playerNoGroup, playerPermissionsAllow):timeout(5):await()
			expect(success).toBe(true)
			expect(result).toBe(featureSupported)
		end)

		if game:GetEngineFeature("GuiHidingApiSupport") then
			it("should return true in studio regardless of player group/permissions", function()
				local success, result =
					GetHasGuiHidingPermission(true, playerNoGroup, playerPermissionsDisallow):timeout(5):await()
				expect(success).toBe(true)
				expect(result).toBe(true)
			end)

			it("should return false for a player not in the required group and without manage permissions", function()
				local success, result =
					GetHasGuiHidingPermission(false, playerNoGroup, playerPermissionsDisallow):timeout(5):await()
				expect(success).toBe(true)
				expect(result).toBe(false)
			end)

			it("should return true if player is in the correct group, regardless of manage permissions", function()
				local success, result =
					GetHasGuiHidingPermission(false, playerGuiHideGroup, playerPermissionsDisallow):timeout(5):await()
				expect(success).toBe(true)
				expect(result).toBe(true)
			end)

			it("should return true if player has manage permissions, regardless of group", function()
				local success, result =
					GetHasGuiHidingPermission(false, playerNoGroup, playerPermissionsAllow):timeout(5):await()
				expect(success).toBe(true)
				expect(result).toBe(true)
			end)
		end
	end)
end
