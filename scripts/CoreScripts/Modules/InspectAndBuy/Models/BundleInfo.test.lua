local CorePackages = game:GetService("CorePackages")
local BundleInfo = require(script.Parent.BundleInfo)
local FFlagAXMarketplaceLicensing =
	require(CorePackages.Workspace.Packages.AvatarExperienceFlags).FFlagAXMarketplaceLicensing
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

describe("BundleInfo licensing", function()
	it("should parse licensing from avatar preview data only when licensing is enabled", function()
		local bundleInfo = BundleInfo.fromAvatarPreviewItem({
			id = 123,
			name = "Licensed Bundle",
			description = "",
			priceInRobux = 10,
			productId = 456,
			collectibleItemId = "collectible-id",
			collectibleProductId = "product-id",
			isPurchasable = true,
			quantityOwned = 0,
			bundleType = 1,
			creator = {
				type = "User",
				id = 1,
				name = "Creator",
				hasVerifiedBadge = false,
			},
			itemRestrictions = {},
			itemType = "Bundle",
			license = {
				id = "license-id",
				licenseType = "ThirdParty" :: string,
				badgeAssetId = "badge-asset-id",
				name = "Example IP",
				licenseHolder = "Example Rights Holder",
			},
		})

		expect(bundleInfo.itemLicensingInfo).toEqual(if FFlagAXMarketplaceLicensing
			then {
				id = "license-id",
				licenseType = "ThirdParty",
				badgeAssetId = "badge-asset-id",
				name = "Example IP",
				licenseHolder = "Example Rights Holder",
			}
			else nil)
	end)
end)
