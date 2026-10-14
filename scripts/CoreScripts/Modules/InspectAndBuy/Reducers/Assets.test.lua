local InspectAndBuyFolder = script.Parent.Parent
local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)
local SetBundlesAssetIsPartOf = require(InspectAndBuyFolder.Actions.SetBundlesAssetIsPartOf)
local Assets = require(script.Parent.Assets)
local AssetInfo = require(InspectAndBuyFolder.Models.AssetInfo)

local CorePackages = game:GetService("CorePackages")
local AvatarExperienceInspectAndBuy = require(CorePackages.Workspace.Packages.AvatarExperienceInspectAndBuy)
local FFlagAXMarketplaceLicensing =
	require(CorePackages.Workspace.Packages.AvatarExperienceFlags).FFlagAXMarketplaceLicensing
type ItemDetails = AvatarExperienceInspectAndBuy.ItemDetails

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

local MOCK_ASSET_1 = AssetInfo.mock()
MOCK_ASSET_1.assetId = "123"

local MOCK_ASSET_2 = AssetInfo.mock()
MOCK_ASSET_2.assetId = "456"

local MOCK_NAME = "Mock Name"

local function countKeys(t)
	local count = 0
	for _ in pairs(t) do
		count = count + 1
	end
	return count
end

describe("SetAssets", function()
	it("should set a single asset", function()
		local newState = Assets(nil, SetAssets({ MOCK_ASSET_1 }))

		expect(newState[MOCK_ASSET_1.assetId].assetId).toBe(MOCK_ASSET_1.assetId)
		expect(countKeys(newState)).toBe(1)
	end)

	it("should set a list of assets", function()
		local newState = Assets(nil, SetAssets({ MOCK_ASSET_1, MOCK_ASSET_2 }))

		expect(newState[MOCK_ASSET_1.assetId].assetId).toBe(MOCK_ASSET_1.assetId)
		expect(newState[MOCK_ASSET_2.assetId].assetId).toBe(MOCK_ASSET_2.assetId)
		expect(countKeys(newState)).toBe(2)
	end)

	it("should update an asset", function()
		local newState = Assets(nil, SetAssets({ MOCK_ASSET_1 }))

		expect(newState[MOCK_ASSET_1.assetId].assetId).toBe(MOCK_ASSET_1.assetId)

		local updatedAsset = MOCK_ASSET_1
		updatedAsset.name = MOCK_NAME

		newState = Assets(newState, SetAssets({ updatedAsset }))

		expect(newState[MOCK_ASSET_1.assetId].assetId).toBe(MOCK_ASSET_1.assetId)
		expect(newState[MOCK_ASSET_1.assetId].name).toBe(MOCK_NAME)
		expect(countKeys(newState)).toBe(1)
	end)

	if FFlagAXMarketplaceLicensing then
		local function itemDetails(itemLicensingInfo: any): ItemDetails
			return {
				id = 123,
				isPurchasable = true,
				itemType = "Asset",
				saleLocationType = "ShopOnly",
				isOffSale = false,
				itemLicensingInfo = itemLicensingInfo,
			}
		end

		it("should clear licensing when V2 returns an unsupported license", function()
			local newState = Assets(
				nil,
				SetAssets({
					AssetInfo.fromGetItemDetailsV2(itemDetails({
						licenseType = "ThirdParty",
					})),
				})
			)

			newState = Assets(
				newState,
				SetAssets({
					AssetInfo.fromGetItemDetailsV2(itemDetails({
						licenseType = "SecondParty",
					})),
				})
			)

			expect(newState["123"].itemLicensingInfo).toBeNil()
		end)

		it("should preserve licensing when V2 omits the license field", function()
			local newState = Assets(
				nil,
				SetAssets({
					AssetInfo.fromGetItemDetailsV2(itemDetails({
						licenseType = "ThirdParty",
					})),
				})
			)

			newState = Assets(
				newState,
				SetAssets({
					AssetInfo.fromGetItemDetailsV2(itemDetails(nil)),
				})
			)

			expect(newState["123"].itemLicensingInfo).toEqual({
				licenseType = "ThirdParty",
			})
		end)
	end
end)

describe("SetBundlesAssetIsPartOf", function()
	it("should set the bundles an asset is part of", function()
		local newState = Assets(nil, SetAssets({ MOCK_ASSET_1 }))

		newState = Assets(newState, SetBundlesAssetIsPartOf(MOCK_ASSET_1.assetId, { "1", "2", "3" }))

		expect(newState[MOCK_ASSET_1.assetId].assetId).toBe(MOCK_ASSET_1.assetId)
		expect(newState[MOCK_ASSET_1.assetId].bundlesAssetIsIn[1]).toBe("1")
		expect(#newState[MOCK_ASSET_1.assetId].bundlesAssetIsIn).toBe(3)
	end)
end)
