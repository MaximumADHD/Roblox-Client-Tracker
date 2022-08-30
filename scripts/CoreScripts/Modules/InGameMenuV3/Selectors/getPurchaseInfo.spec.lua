local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect

local getPurchaseInfo = require(script.Parent.getPurchaseInfo)

local dummyState = {
	inspectAndBuy = {
		SelectedItem = {
			owned = true,
			price = 100,
			isForSale = true,
			bundlesAssetIsIn = {},
		},
		Bundles = {
			["123"] = {
				owned = false,
				price = 200,
			}
		},
	}
}

return function()
	describe("getPurchaseInfo", function()
		it("should get info for owned items from the store", function()
			local purchaseInfo = getPurchaseInfo(dummyState)

			expect(purchaseInfo.owned).toEqual(true)
			expect(purchaseInfo.isLoading).toEqual(false)
			expect(purchaseInfo.robuxPrice).toEqual(100)
		end)

		it("should allow for selected asset in store to be overwritten", function()
			local assetOverride = {
				owned = false,
				price = 400,
				isForSale = true,
				bundlesAssetIsIn = {},
			}
			local purchaseInfo = getPurchaseInfo(dummyState, assetOverride)

			expect(purchaseInfo.owned).toEqual(false)
			expect(purchaseInfo.isLoading).toEqual(false)
			expect(purchaseInfo.robuxPrice).toEqual(400)
		end)

		it("should get bundle info", function()
			local assetOverride = {
				owned = true,
				price = 400,
				isForSale = false,
				bundlesAssetIsIn = {"123"},
			}
			local purchaseInfo = getPurchaseInfo(dummyState, assetOverride)

			expect(purchaseInfo.owned).toEqual(false)
			expect(purchaseInfo.isLoading).toEqual(false)
			expect(purchaseInfo.robuxPrice).toEqual(200)
		end)
	end)
end