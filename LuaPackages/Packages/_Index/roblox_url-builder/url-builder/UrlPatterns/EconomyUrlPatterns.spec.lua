return function()
	local UrlBuilder = require(script.Parent.Parent.UrlBuilder)

	describe("economy/paymentsGateway", function()
		it("should generate proper url for getUpsellProduct", function()
			local url = UrlBuilder.economy.paymentsGateway.getUpsellProduct()
			expect(url).to.equal("https://apis.roblox.com/payments-gateway/v1/products/get-upsell-product")
		end)
	end)

	describe("economy/purchaseWarning", function()
		it("should generate proper url for getPurchaseWarning with mobileProductId", function()
			local url = UrlBuilder.economy.purchaseWarning.getPurchaseWarning("testId", nil, nil)
			expect(url).to.equal("https://apis.roblox.com/purchase-warning/v1/purchase-warnings?mobileProductId=testId")
		end)

		it("should generate proper url for getPurchaseWarning with productId", function()
			local url = UrlBuilder.economy.purchaseWarning.getPurchaseWarning(nil, 50, nil)
			expect(url).to.equal("https://apis.roblox.com/purchase-warning/v1/purchase-warnings?productId=50")
		end)

		it("should generate proper url for getPurchaseWarning with mobileProductId and is13To17ScaryModalEnabled", function()
			local url = UrlBuilder.economy.purchaseWarning.getPurchaseWarning("testId", nil, true)
			expect(url).to.equal("https://apis.roblox.com/purchase-warning/v1/purchase-warnings?mobileProductId=testId&is13To17ScaryModalEnabled=True")
		end)

		it("should generate proper url for getPurchaseWarning with productId and is13To17ScaryModalEnabled", function()
			local url = UrlBuilder.economy.purchaseWarning.getPurchaseWarning(nil, 50, true)
			expect(url).to.equal("https://apis.roblox.com/purchase-warning/v1/purchase-warnings?productId=50&is13To17ScaryModalEnabled=True")
		end)

		it("should fail to generate proper url for getPurchaseWarning", function()
			local url = UrlBuilder.economy.purchaseWarning.getPurchaseWarning(nil, nil, nil)
			expect(url).to.equal(nil)
		end)

		it("should generate proper url for ackPurchaseWarning", function()
			local url = UrlBuilder.economy.purchaseWarning.ackPurchaseWarning()
			expect(url).to.equal("https://apis.roblox.com/purchase-warning/v1/purchase-warnings/acknowledge")
		end)
	end)
end
