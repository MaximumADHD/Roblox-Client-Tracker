return function()
	local UrlBuilder = require(script.Parent.Parent.UrlBuilder)

	describe("economy/paymentsGateway", function()
		it("should generate proper url for getUpsellProduct", function()
			local url = UrlBuilder.economy.paymentsGateway.getUpsellProduct()
			expect(url).to.equal("https://apis.roblox.com/payments-gateway/v1/products/get-upsell-product")
		end)
	end)

	describe("economy/purchaseWarning", function()
		it("should generate proper url for getPurchaseWarning", function()
			local url = UrlBuilder.economy.purchaseWarning.getPurchaseWarning("testId")
			expect(url).to.equal("https://apis.roblox.com/purchase-warning/v1/purchase-warnings?mobileProductId=testId")
		end)

		it("should generate proper url for ackPurchaseWarning", function()
			local url = UrlBuilder.economy.purchaseWarning.ackPurchaseWarning()
			expect(url).to.equal("https://apis.roblox.com/purchase-warning/v1/purchase-warnings/acknowledge")
		end)
	end)
end
