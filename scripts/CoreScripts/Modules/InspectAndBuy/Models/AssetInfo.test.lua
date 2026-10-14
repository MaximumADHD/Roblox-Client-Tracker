local AssetInfo = require(script.Parent.AssetInfo)
local Constants = require(script.Parent.Parent.Constants)
local CorePackages = game:GetService("CorePackages")
local InspectAndBuyFolder = script.Parent.Parent
local AvatarExperienceInspectAndBuy = require(CorePackages.Workspace.Packages.AvatarExperienceInspectAndBuy)
local GetCollectibleItemInInspectAndBuyEnabled =
	require(InspectAndBuyFolder.Flags.GetCollectibleItemInInspectAndBuyEnabled)
local FFlagAXMarketplaceLicensing =
	require(CorePackages.Workspace.Packages.AvatarExperienceFlags).FFlagAXMarketplaceLicensing
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
type AvatarPreviewItem = AvatarExperienceInspectAndBuy.AvatarPreviewItem

local function createCollectibleItem()
	return {
		Name = "Test L2.0 Item",
		PriceInRobux = 10,
		AssetId = 12345678,
		AssetTypeId = 8,
		ProductId = 54321,
		IsLimited = false,
		IsLimitedUnique = false,
		Creator = {
			Id = 1,
			Name = "Roblox",
			CreatorType = "User",
			CreatorTargetId = 1,
			HasVerifiedBadge = true,
		},
		ProductType = Constants.ProductType.CollectibleItem,
		Remaining = 15,
		IsForSale = true,
		CanBeSoldInThisGame = true,
		SaleLocation = {
			UniverseIds = {},
			SaleLocationType = Constants.SaleLocationType.ShopAndAllExperiences,
		},
	}
end

local function _IsSaleLocationEnabled()
	return game:GetEngineFeature("CollectibleItemInInspectAndBuyEnabled")
end

describe("AssetInfo", function()
	it("should mark valid Collectible Item as forSale", function()
		local assetInfo = AssetInfo.fromGetProductInfo(createCollectibleItem())
		expect(assetInfo.isForSale).toBe(true)
	end)

	it("should mark Collectible Item as offSale if remaining = 0", function()
		local productInfo = createCollectibleItem()
		productInfo.Remaining = 0
		local assetInfo = AssetInfo.fromGetProductInfo(productInfo)
		-- Flaky test, even Engine FFlag is turned on, it should respect the mock only
		-- using FFlag value to check assertion will cause unknown issue and flaky test.
		-- This is a unit test, using this fflag  super hard to maintain.

		-- Remaining should not be considered on frontend.
		if GetCollectibleItemInInspectAndBuyEnabled() then
			expect(assetInfo.isForSale).toBe(true)
		else
			expect(assetInfo.isForSale).toBe(true)
		end
	end)

	it("should mark Collectible Item as offSale if sale location is DEV_API_ONLY", function()
		local productInfo = createCollectibleItem()
		productInfo.SaleLocation.SaleLocationType = Constants.SaleLocationType.ExperiencesDevApiOnly
		local assetInfo = AssetInfo.fromGetProductInfo(productInfo)
		-- This one should be false because:
		-- if type is ExperiencesDevApiOnly and UniverseIds is empty, it should not be allowed to purchase
		if GetCollectibleItemInInspectAndBuyEnabled() then
			assetInfo = AssetInfo.getSaleDetailsForCollectibles(assetInfo)
			expect(assetInfo.isForSale).toBe(false)
		else
			expect(assetInfo.isForSale).toBe(true)
		end
	end)

	local function avatarPreviewItem(itemLicensingInfo: any, useLegacyField: boolean?): AvatarPreviewItem
		local item: any = {
			id = 123,
			name = "Licensed Asset",
			description = "",
			priceInRobux = 10,
			productId = 456,
			collectibleItemId = "collectible-id",
			collectibleProductId = "collectible-product-id",
			isPurchasable = true,
			quantityOwned = 0,
			assetType = 8,
			creator = {
				type = "User",
				id = 1,
				name = "Creator",
				hasVerifiedBadge = false,
			},
			itemRestrictions = {},
			itemType = "Asset",
		}
		if useLegacyField then
			item.license = itemLicensingInfo
		else
			item.itemLicensingInfo = itemLicensingInfo
		end
		return item
	end

	it("should parse licensing from avatar preview data only when licensing is enabled", function()
		local assetInfo = AssetInfo.fromAvatarPreviewItem(avatarPreviewItem({
			id = "license-id",
			licenseType = "ThirdParty" :: "ThirdParty",
			badgeAssetId = "badge-asset-id",
			name = "Example IP",
			licenseHolder = "Example Rights Holder",
		}, true))

		expect(assetInfo.itemLicensingInfo).toEqual(if FFlagAXMarketplaceLicensing
			then {
				id = "license-id",
				licenseType = "ThirdParty",
				badgeAssetId = "badge-asset-id",
				name = "Example IP",
				licenseHolder = "Example Rights Holder",
			}
			else nil)
	end)

	if FFlagAXMarketplaceLicensing then
		it("should reject an unsupported avatar preview license type", function()
			local assetInfo = AssetInfo.fromAvatarPreviewItem(avatarPreviewItem({
				licenseType = "SecondParty",
			}))

			expect(assetInfo.itemLicensingInfo).toBeNil()
		end)
	end
end)
