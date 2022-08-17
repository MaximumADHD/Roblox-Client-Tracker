--!nonstrict
return function()
	local Root = script.Parent.Parent

	local PaymentPlatform = require(Root.Enums.PaymentPlatform)

	local selectRobuxProductFromProvider = require(script.Parent.selectRobuxProductFromProvider)

	local function verifyRobuxUpsellProduct(platform, neededRobux, userIsSubscribed, expectedRobux, expectedProductId)
		local product = nil
		selectRobuxProductFromProvider(platform, neededRobux, userIsSubscribed)
			:andThen(function(selectedProduct)
				product = selectedProduct
			end)
		expect(product).to.be.ok()
		expect(product.productId).to.equal(expectedProductId)
		expect(product.robuxValue).to.equal(expectedRobux)
	end

	local function verifyMaxRobuxUpsellProduct(platform, neededRobux, userIsSubscribed)
		local thrownError = nil
		selectRobuxProductFromProvider(platform, neededRobux, userIsSubscribed)
			:catch(function(error)
				thrownError = error
			end)
		expect(thrownError).to.equal("No Product Available")
	end

	describe("Apple Store", function()
		it("should select the appropriate premium product when user IS NOT premium", function()
			verifyRobuxUpsellProduct(PaymentPlatform.Apple, 80, false, 80, "com.roblox.robloxmobile.Premium80Robux")
			verifyRobuxUpsellProduct(PaymentPlatform.Apple, 1700, false, 1700, "com.roblox.robloxmobile.Premium1700Robux")
			verifyMaxRobuxUpsellProduct(PaymentPlatform.Apple, 1700 + 1, false)
		end)

		it("should select the appropriate premium product when user IS premium", function()
			verifyRobuxUpsellProduct(PaymentPlatform.Apple, 80, true, 88, "com.roblox.robloxmobile.Premium88Subscribed")
			verifyRobuxUpsellProduct(PaymentPlatform.Apple, 1870, true, 1870, "com.roblox.robloxmobile.Premium1870Subscribed")
			verifyMaxRobuxUpsellProduct(PaymentPlatform.Apple, 1870 + 1, false)
		end)
	end)

	describe("Midas", function()
		it("should select the appropriate premium product when user IS NOT premium", function()
			verifyRobuxUpsellProduct(PaymentPlatform.Midas, 10, false, 10, "com.tencent.roblox.robloxmobile.luobu10robux")
			verifyRobuxUpsellProduct(PaymentPlatform.Midas, 1000, false, 1100, "com.tencent.roblox.robloxmobile.luobu1100robux")
			verifyMaxRobuxUpsellProduct(PaymentPlatform.Midas, 10000 + 1, false)
		end)

		it("should select the appropriate premium product when user IS premium", function()
			verifyRobuxUpsellProduct(PaymentPlatform.Midas, 10, true, 10, "com.tencent.roblox.robloxmobile.luobu10robux")
			verifyRobuxUpsellProduct(PaymentPlatform.Midas, 1100, true, 1100, "com.tencent.roblox.robloxmobile.luobu1100robux")
			verifyMaxRobuxUpsellProduct(PaymentPlatform.Midas, 11000 + 1, false)
		end)
	end)

	describe("Amazon", function()
		it("should select the appropriate premium product when user IS NOT premium", function()
			verifyRobuxUpsellProduct(PaymentPlatform.Amazon, 80, false, 80, "com.roblox.robloxmobile.premium80robux")
			verifyRobuxUpsellProduct(PaymentPlatform.Amazon, 1700, false, 1700, "com.roblox.robloxmobile.premium1700robux")
			verifyMaxRobuxUpsellProduct(PaymentPlatform.Amazon, 1700 + 1, false)
		end)

		it("should select the appropriate premium product when user IS premium", function()
			verifyRobuxUpsellProduct(PaymentPlatform.Amazon, 88, true, 88, "com.roblox.robloxmobile.premium88subscribed")
			verifyRobuxUpsellProduct(PaymentPlatform.Amazon, 1870, true, 1870, "com.roblox.robloxmobile.premium1870subscribed")
			verifyMaxRobuxUpsellProduct(PaymentPlatform.Amazon, 1870 + 1, false)
		end)
	end)

	describe("Android", function()
		it("should select the appropriate premium product when user IS NOT premium", function()
			verifyRobuxUpsellProduct(PaymentPlatform.Google, 80, false, 80, "com.roblox.robloxmobile.premium80robux")
			verifyRobuxUpsellProduct(PaymentPlatform.Google, 10000, false, 10000, "com.roblox.robloxmobile.premium10000robux")
			verifyMaxRobuxUpsellProduct(PaymentPlatform.Google, 10000 + 1, false)
		end)

		it("should select the appropriate premium product when user IS premium", function()
			verifyRobuxUpsellProduct(PaymentPlatform.Google, 88, true, 88, "com.roblox.robloxmobile.premium88subscribed")
			verifyRobuxUpsellProduct(PaymentPlatform.Google, 11000, true, 11000, "com.roblox.robloxmobile.premium11000subscribed")
			verifyMaxRobuxUpsellProduct(PaymentPlatform.Google, 11000 + 1, false)
		end)
	end)

	describe("UWP", function()
		it("should select the appropriate premium product when user IS NOT premium", function()
			verifyRobuxUpsellProduct(PaymentPlatform.UWP, 80, false, 80, "com.roblox.robloxmobile.premium80robux")
			verifyRobuxUpsellProduct(PaymentPlatform.UWP, 1700, false, 1700, "com.roblox.robloxmobile.premium1700robux")
			verifyMaxRobuxUpsellProduct(PaymentPlatform.UWP, 1700 + 1, false)
		end)

		it("should select the appropriate premium product when user IS premium", function()
			verifyRobuxUpsellProduct(PaymentPlatform.UWP, 88, true, 88, "com.roblox.robloxmobile.premium88subscribed")
			verifyRobuxUpsellProduct(PaymentPlatform.UWP, 1870, true, 1870, "com.roblox.robloxmobile.premium1870subscribed")
			verifyMaxRobuxUpsellProduct(PaymentPlatform.UWP, 1870 + 1, false)
		end)
	end)

	describe("Windows", function()
		it("should select the appropriate premium product when user IS NOT premium", function()
			verifyRobuxUpsellProduct(PaymentPlatform.Web, 400, false, 400, "")
			verifyRobuxUpsellProduct(PaymentPlatform.Web, 10000, false, 10000, "")
			verifyMaxRobuxUpsellProduct(PaymentPlatform.Web, 10000 + 1, false)
		end)

		it("should select the appropriate premium product when user IS premium", function()
			verifyRobuxUpsellProduct(PaymentPlatform.Web, 440, true, 440, "")
			verifyRobuxUpsellProduct(PaymentPlatform.Web, 11000, true, 11000, "")
			verifyMaxRobuxUpsellProduct(PaymentPlatform.Web, 11000 + 1, false)
		end)
	end)
end
