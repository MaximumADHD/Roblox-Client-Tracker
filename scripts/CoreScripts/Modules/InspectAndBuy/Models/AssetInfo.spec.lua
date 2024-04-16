return function()
    local AssetInfo = require(script.Parent.AssetInfo)
	local Constants = require(script.Parent.Parent.Constants)
	local CorePackages = game:GetService("CorePackages")
    local InspectAndBuyFolder = script.Parent.Parent
    local GetFFlagIBEnableRespectSaleLocation = require(InspectAndBuyFolder.Flags.GetFFlagIBEnableRespectSaleLocation)
    local GetCollectibleItemInInspectAndBuyEnabled = require(InspectAndBuyFolder.Flags.GetCollectibleItemInInspectAndBuyEnabled)
    local GetFFlagIBFixBuyingFromResellers = require(InspectAndBuyFolder.Flags.GetFFlagIBFixBuyingFromResellers)
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

            -- After turn on GetFFlagIBEnableRespectSaleLocation, we will only respect the IsForSale
            -- Remaining should not be considered on frontend.
            if GetCollectibleItemInInspectAndBuyEnabled() and GetFFlagIBEnableRespectSaleLocation() then
                expect(assetInfo.isForSale).toBe(true)
            elseif GetCollectibleItemInInspectAndBuyEnabled() and not GetFFlagIBEnableRespectSaleLocation() then
                expect(assetInfo.isForSale).toBe(false)
            else
                expect(assetInfo.isForSale).toBe(true)
            end
        end)

        it("should mark Collectible Item as offSale if sale location is DEV_API_ONLY", function()
            local productInfo = createCollectibleItem()
            productInfo.SaleLocation.SaleLocationType = Constants.SaleLocationType.ExperiencesDevApiOnly
            local assetInfo = AssetInfo.fromGetProductInfo(productInfo)
            if GetFFlagIBFixBuyingFromResellers() then
                assetInfo = AssetInfo.getSaleDetailsForCollectibles(assetInfo)
            end
            -- This one should be false because:
            -- if type is ExperiencesDevApiOnly and UniverseIds is empty, it should not be allowed to purchase
            if GetCollectibleItemInInspectAndBuyEnabled() and GetFFlagIBEnableRespectSaleLocation() then
                expect(assetInfo.isForSale).toBe(false)
            elseif GetCollectibleItemInInspectAndBuyEnabled() and not GetFFlagIBEnableRespectSaleLocation() then
                expect(assetInfo.isForSale).toBe(false)
            else
                expect(assetInfo.isForSale).toBe(true)
            end
        end)
    end)
end
