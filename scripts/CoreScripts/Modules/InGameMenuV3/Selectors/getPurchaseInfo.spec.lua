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
				isForSale = false,
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
			expect(purchaseInfo.offsale).toEqual(false)
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
			expect(purchaseInfo.offsale).toEqual(false)
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
			expect(purchaseInfo.offsale).toEqual(true)
		end)
	end)
end