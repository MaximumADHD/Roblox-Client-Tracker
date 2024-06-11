--!nonstrict
return function()
	local Root = script.Parent.Parent
	local Workspace = game:GetService("Workspace")
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local PurchaseError = require(Root.Enums.PurchaseError)

	local MockExternalSettings = require(Root.Test.MockExternalSettings)

	local meetsPrerequisites = require(script.Parent.meetsPrerequisites)
	local defaultExternalSettings = MockExternalSettings.new(false, false, {})

	local function getValidProductInfo()
		return {
			IsForSale = true,
			IsPublicDomain = true,
			IsLimited = false,
			ContentRatingTypeId = 0,
			AssetId = 0,
			-- Assets have ProductType "User Product"
			ProductType = "User Product",
			Creator = {
				CreatorType = "User",
				CreatorTargetId = 1,
			},
		}
	end

	it("should return true if prerequisites are all met", function()
		local productInfo = getValidProductInfo()
		local met, _ = meetsPrerequisites(productInfo, false, false, defaultExternalSettings, nil)

		expect(met).toBe(true)
	end)

	it("should return true if prerequisites are all met for assets with sale restriction", function()
		local productInfo = getValidProductInfo()
		productInfo.CanBeSoldInThisGame = true
		local met, _ = meetsPrerequisites(productInfo, false, false, defaultExternalSettings, nil)

		expect(met).toBe(true)
	end)

	it("should return true if third party restrictions do not apply", function()
		local productInfo = getValidProductInfo()
		Workspace.AllowThirdPartySales = false

		-- Set creator id to game's creator id
		productInfo.Creator.CreatorTargetId = game.CreatorId

		local met, _ = meetsPrerequisites(productInfo, false, true, defaultExternalSettings, nil)

		expect(met).toBe(true)
	end)

	it("should return false if the player owns the item already", function()
		local productInfo = getValidProductInfo()
		local met, errorReason = meetsPrerequisites(productInfo, true, true, defaultExternalSettings, nil)

		expect(met).toBe(false)
		expect(errorReason).toBe(PurchaseError.AlreadyOwn)
	end)

	it("should return true for purchasing already owned collectible item", function()
		local productInfo = getValidProductInfo()
		productInfo.ProductType = "Collectible Item"
		productInfo.Remaining = 10

		local met, _ = meetsPrerequisites(productInfo, false, false, defaultExternalSettings, nil)

		expect(met).toBe(true)
	end)

	it("should return false if the product is not for sale", function()
		local productInfo = getValidProductInfo()
		productInfo.IsForSale = false
		productInfo.IsPublicDomain = false

		local met, errorReason = meetsPrerequisites(productInfo, false, false, defaultExternalSettings, nil)

		expect(met).toBe(false)
		expect(errorReason).toBe(PurchaseError.NotForSale)
	end)

	it("should return false if the product is not for sale in the given game", function()
		local productInfo = getValidProductInfo()
		productInfo.CanBeSoldInThisGame = false

		local externalSettings = MockExternalSettings.new(false, false, {
			EnableRestrictedAssetSaleLocationPurchasePrompt = true,
		})

		local met, errorReason = meetsPrerequisites(productInfo, false, false, externalSettings, nil)

		expect(met).toBe(false)
		expect(errorReason).toBe(PurchaseError.NotForSaleHere)
	end)

	it("should return true if prerequisites are all met (EnableRestrictedAssetSaleLocationPurchasePrompt flag check)", function()
		local productInfo = getValidProductInfo()
		productInfo.CanBeSoldInThisGame = false

		local externalSettings = MockExternalSettings.new(false, false, {
			EnableRestrictedAssetSaleLocationPurchasePrompt = false,
		})

		local met, _ = meetsPrerequisites(productInfo, false, false, externalSettings, nil)

		expect(met).toBe(true)
	end)

	it("should return false if no copies are available", function()
		local productInfo = getValidProductInfo()
		productInfo.IsLimited = true
		productInfo.Remaining = 0

		local met, errorReason = meetsPrerequisites(productInfo, false, false, defaultExternalSettings, nil)

		expect(met).toBe(false)
		expect(errorReason).toBe(PurchaseError.Limited)
	end)

	it("should return false if no copies are available of a collectilbe item", function()
		local productInfo = getValidProductInfo()
		productInfo.ProductType = "Collectible Item"
		productInfo.Remaining = 0

		productInfo.CollectiblesItemDetails = { IsLimited = true }

		local met, errorReason = meetsPrerequisites(productInfo, false, false, defaultExternalSettings, nil)

		expect(met).toBe(false)
		expect(errorReason).toBe(PurchaseError.Limited)
	end)

	it("should return false if third-party sales are restricted by permissions service", function()
		local productInfo = getValidProductInfo()

		-- Set product creator to a number that is ~= to game.CreatorId and is > 1
		-- (which is considered ROBLOX, and is never restricted)
		productInfo.Creator.CreatorTargetId = game.CreatorId + 2

		local externalSettings = MockExternalSettings.new(false, false, {
			LuaUseThirdPartyPermissions = true,
			PermissionsServiceIsThirdPartyPurchaseAllowed = false,
		})
		local met, errorReason = meetsPrerequisites(productInfo, false, true, externalSettings, nil)

		expect(met).toBe(false)
		expect(errorReason).toBe(PurchaseError.ThirdPartyDisabled)
	end)

	it("should return true if third-party sales are allowed by permissions service", function()
		local productInfo = getValidProductInfo()

		-- Set product creator to a number that is ~= to game.CreatorId and is > 1
		-- (which is considered ROBLOX, and is never restricted)
		productInfo.Creator.CreatorTargetId = game.CreatorId + 2

		local externalSettings = MockExternalSettings.new(false, false, {
			LuaUseThirdPartyPermissions = true,
			PermissionsServiceIsThirdPartyPurchaseAllowed = true,
		})
		local met, errorReason = meetsPrerequisites(productInfo, false, true, externalSettings, nil)

		expect(met).toBe(true)
	end)

	it("should return false if third-party sales are restricted", function()
		local productInfo = getValidProductInfo()
		Workspace.AllowThirdPartySales = false

		-- Set product creator to a number that is ~= to game.CreatorId and is > 1
		-- (which is considered ROBLOX, and is never restricted)
		productInfo.Creator.CreatorTargetId = game.CreatorId + 2

		local externalSettings = MockExternalSettings.new(false, false, {
			LuaUseThirdPartyPermissions = false,
			RestrictSales2 = true,
		})
		local met, errorReason = meetsPrerequisites(productInfo, false, true, externalSettings, nil)

		expect(met).toBe(false)
		expect(errorReason).toBe(PurchaseError.ThirdPartyDisabled)
	end)

	it("should return false if premium purchase", function()
		local productInfo = getValidProductInfo()
		productInfo.MinimumMembershipLevel = 4

		local met, errorReason = meetsPrerequisites(productInfo, false, true, defaultExternalSettings, nil)

		expect(met).toBe(false)
		expect(errorReason).toBe(PurchaseError.PremiumOnly)
	end)
end
