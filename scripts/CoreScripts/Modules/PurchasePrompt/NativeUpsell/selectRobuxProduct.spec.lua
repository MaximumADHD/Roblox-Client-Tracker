--!nonstrict
return function()
	local Root = script.Parent.Parent
	local GetFFlagEnableLuobuInGameUpsell = require(Root.Flags.GetFFlagEnableLuobuInGameUpsell)
	local GetFFlagEnableAmazonInGameUpsell = require(Root.Flags.GetFFlagEnableAmazonInGameUpsell)

	local selectRobuxProduct = require(script.Parent.selectRobuxProduct)

	local function verifyRobuxUpsellProduct(platform, neededRobux, userIsSubscribed, expectedRobux, expectedProductId)
		local product = nil
		selectRobuxProduct(platform, neededRobux, userIsSubscribed)
			:andThen(function(selectedProduct)
				product = selectedProduct
			end)
		expect(product).to.be.ok()
		expect(product.productId).to.equal(expectedProductId)
		expect(product.robuxValue).to.equal(expectedRobux)
	end

	local function verifyMaxRobuxUpsellProduct(platform, neededRobux, userIsSubscribed)
		local thrownError = nil
		selectRobuxProduct(platform, neededRobux, userIsSubscribed)
			:catch(function(error)
				thrownError = error
			end)
		expect(thrownError).to.equal("No Product Available")
	end

	if GetFFlagEnableLuobuInGameUpsell() then
		describe("IOS-LUOBU", function()
			it("should select the appropriate premium product when user IS NOT premium", function()
				verifyRobuxUpsellProduct(Enum.Platform.IOS, 10, false, 10, "com.tencent.roblox.robloxmobile.luobu10robux")
				verifyRobuxUpsellProduct(Enum.Platform.IOS, 1000, false, 1100, "com.tencent.roblox.robloxmobile.luobu1100robux")
				verifyMaxRobuxUpsellProduct(Enum.Platform.IOS, 10000 + 1, false)
			end)

			it("should select the appropriate premium product when user IS premium", function()
				verifyRobuxUpsellProduct(Enum.Platform.IOS, 10, true, 10, "com.tencent.roblox.robloxmobile.luobu10robux")
				verifyRobuxUpsellProduct(Enum.Platform.IOS, 1100, true, 1100, "com.tencent.roblox.robloxmobile.luobu1100robux")
				verifyMaxRobuxUpsellProduct(Enum.Platform.IOS, 11000 + 1, false)
			end)
		end)
	else
		describe("IOS", function()
			it("should select the appropriate premium product when user IS NOT premium", function()
				verifyRobuxUpsellProduct(Enum.Platform.IOS, 80, false, 80, "com.roblox.robloxmobile.Premium80Robux")
				verifyRobuxUpsellProduct(Enum.Platform.IOS, 1700, false, 1700, "com.roblox.robloxmobile.Premium1700Robux")
				verifyMaxRobuxUpsellProduct(Enum.Platform.IOS, 1700 + 1, false)
			end)

			it("should select the appropriate premium product when user IS premium", function()
				verifyRobuxUpsellProduct(Enum.Platform.IOS, 80, true, 88, "com.roblox.robloxmobile.Premium88Subscribed")
				verifyRobuxUpsellProduct(Enum.Platform.IOS, 1870, true, 1870, "com.roblox.robloxmobile.Premium1870Subscribed")
				verifyMaxRobuxUpsellProduct(Enum.Platform.IOS, 1870 + 1, false)
			end)
		end)
	end

	if GetFFlagEnableLuobuInGameUpsell() then
		describe("Android-LUOBU", function()
			it("should select the appropriate premium product when user IS NOT premium", function()
				verifyRobuxUpsellProduct(Enum.Platform.Android, 10, false, 10, "com.tencent.roblox.robloxmobile.luobu10robux")
				verifyRobuxUpsellProduct(Enum.Platform.Android, 1000, false, 1100, "com.tencent.roblox.robloxmobile.luobu1100robux")
				verifyMaxRobuxUpsellProduct(Enum.Platform.Android, 1700 + 1, false)
			end)

			it("should select the appropriate premium product when user IS premium", function()
				verifyRobuxUpsellProduct(Enum.Platform.Android, 10, true, 10, "com.tencent.roblox.robloxmobile.luobu10robux")
				verifyRobuxUpsellProduct(Enum.Platform.Android, 1100, true, 1100, "com.tencent.roblox.robloxmobile.luobu1100robux")
				verifyMaxRobuxUpsellProduct(Enum.Platform.Android, 1870 + 1, false)
			end)
		end)
	else
		if GetFFlagEnableAmazonInGameUpsell() then
			describe("Amazon", function()
				it("should select the appropriate premium product when user IS NOT premium", function()
					verifyRobuxUpsellProduct(Enum.Platform.Android, 80, false, 80, "com.roblox.robloxmobile.premium80robux")
					verifyRobuxUpsellProduct(Enum.Platform.Android, 1700, false, 1700, "com.roblox.robloxmobile.premium1700robux")
					verifyMaxRobuxUpsellProduct(Enum.Platform.Android, 1700 + 1, false)
				end)

				it("should select the appropriate premium product when user IS premium", function()
					verifyRobuxUpsellProduct(Enum.Platform.Android, 88, true, 88, "com.roblox.robloxmobile.premium88subscribed")
					verifyRobuxUpsellProduct(Enum.Platform.Android, 1870, true, 1870, "com.roblox.robloxmobile.premium1870subscribed")
					verifyMaxRobuxUpsellProduct(Enum.Platform.Android, 1870 + 1, false)
				end)
			end)
		else
			describe("Android", function()
				it("should select the appropriate premium product when user IS NOT premium", function()
					verifyRobuxUpsellProduct(Enum.Platform.Android, 80, false, 80, "com.roblox.robloxmobile.premium80robux")
					verifyRobuxUpsellProduct(Enum.Platform.Android, 10000, false, 10000, "com.roblox.robloxmobile.premium10000robux")
					verifyMaxRobuxUpsellProduct(Enum.Platform.Android, 10000 + 1, false)
				end)
	
				it("should select the appropriate premium product when user IS premium", function()
					verifyRobuxUpsellProduct(Enum.Platform.Android, 88, true, 88, "com.roblox.robloxmobile.premium88subscribed")
					verifyRobuxUpsellProduct(Enum.Platform.Android, 11000, true, 11000, "com.roblox.robloxmobile.premium11000subscribed")
					verifyMaxRobuxUpsellProduct(Enum.Platform.Android, 11000 + 1, false)
				end)
			end)
		end
	end

	describe("UWP", function()
		it("should select the appropriate premium product when user IS NOT premium", function()
			verifyRobuxUpsellProduct(Enum.Platform.UWP, 80, false, 80, "com.roblox.robloxmobile.premium80robux")
			verifyRobuxUpsellProduct(Enum.Platform.UWP, 1700, false, 1700, "com.roblox.robloxmobile.premium1700robux")
			verifyMaxRobuxUpsellProduct(Enum.Platform.UWP, 1700 + 1, false)
		end)

		it("should select the appropriate premium product when user IS premium", function()
			verifyRobuxUpsellProduct(Enum.Platform.UWP, 88, true, 88, "com.roblox.robloxmobile.premium88subscribed")
			verifyRobuxUpsellProduct(Enum.Platform.UWP, 1870, true, 1870, "com.roblox.robloxmobile.premium1870subscribed")
			verifyMaxRobuxUpsellProduct(Enum.Platform.UWP, 1870 + 1, false)
		end)
	end)

	describe("Windows", function()
		it("should select the appropriate premium product when user IS NOT premium", function()
			verifyRobuxUpsellProduct(Enum.Platform.Windows, 400, false, 400, "")
			verifyRobuxUpsellProduct(Enum.Platform.Windows, 10000, false, 10000, "")
			verifyMaxRobuxUpsellProduct(Enum.Platform.Windows, 10000 + 1, false)
		end)

		it("should select the appropriate premium product when user IS premium", function()
			verifyRobuxUpsellProduct(Enum.Platform.Windows, 440, true, 440, "")
			verifyRobuxUpsellProduct(Enum.Platform.Windows, 11000, true, 11000, "")
			verifyMaxRobuxUpsellProduct(Enum.Platform.Windows, 11000 + 1, false)
		end)
	end)

	describe("OSX", function()
		it("should select the appropriate premium product when user IS NOT premium", function()
			verifyRobuxUpsellProduct(Enum.Platform.OSX, 400, false, 400, "")
			verifyRobuxUpsellProduct(Enum.Platform.OSX, 10000, false, 10000, "")
			verifyMaxRobuxUpsellProduct(Enum.Platform.OSX, 10000 + 1, false)
		end)

		it("should select the appropriate premium product when user IS premium", function()
			verifyRobuxUpsellProduct(Enum.Platform.OSX, 440, true, 440, "")
			verifyRobuxUpsellProduct(Enum.Platform.OSX, 11000, true, 11000, "")
			verifyMaxRobuxUpsellProduct(Enum.Platform.OSX, 11000 + 1, false)
		end)
	end)
end
