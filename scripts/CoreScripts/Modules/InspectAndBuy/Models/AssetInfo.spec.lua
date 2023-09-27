return function()
    local AssetInfo = require(script.Parent.AssetInfo)
	local Constants = require(script.Parent.Parent.Constants)
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

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

    local function IsSaleLocationEnabled()
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
			expect(assetInfo.isForSale).toBe(not IsSaleLocationEnabled())
        end)

        it("should mark Collectible Item as offSale if sale location is DEV_API_ONLY", function()
            local productInfo = createCollectibleItem()
            productInfo.SaleLocation.SaleLocationType = Constants.SaleLocationType.ExperiencesDevApiOnly
            local assetInfo = AssetInfo.fromGetProductInfo(productInfo)
			expect(assetInfo.isForSale).toBe(not IsSaleLocationEnabled())
        end)
    end)
end
