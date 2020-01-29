return function()
	local selectRobuxProduct = require(script.Parent.selectRobuxProduct)
	local largerRobuxUpsell = game:GetFastFlag("EnableLargeRobuxAndroidUpsellV3")

	describe("premium products", function()
		it("should select the appropriate premium product when user IS NOT premium", function()
			selectRobuxProduct(Enum.Platform.IOS, 80, false)
				:andThen(function(iosProduct)
					expect(iosProduct).to.be.ok()
					expect(iosProduct.productId).to.equal("com.roblox.robloxmobile.Premium80Robux")
				end)

			selectRobuxProduct(Enum.Platform.Android, 80, false)
				:andThen(function(androidProduct)
					expect(androidProduct).to.be.ok()
					expect(androidProduct.productId).to.equal("com.roblox.robloxmobile.premium80robux")
				end)

			if largerRobuxUpsell then
				selectRobuxProduct(Enum.Platform.Android, 9000, false)
					:andThen(function(androidProduct)
						expect(androidProduct).to.be.ok()
						expect(androidProduct.productId).to.equal("com.roblox.robloxmobile.premium11000subscribed")
					end)
			else
				selectRobuxProduct(Enum.Platform.Android, 9000, false)
					:andThen(function(androidProduct)
						assert(false, "Should have failed the promise")
					end, function() end)
			end

			selectRobuxProduct(Enum.Platform.UWP, 80, false)
				:andThen(function(uwpProduct)
					expect(uwpProduct).to.be.ok()
					expect(uwpProduct.productId).to.equal("com.roblox.robloxmobile.premium80robux")
				end)
		end)

		it("should select the appropriate premium product when user IS premium", function()
			selectRobuxProduct(Enum.Platform.IOS, 88, true)
				:andThen(function(iosProduct)
					expect(iosProduct).to.be.ok()
					expect(iosProduct.productId).to.equal("com.roblox.robloxmobile.Premium88Subscribed")
				end)

			selectRobuxProduct(Enum.Platform.Android, 88, true)
				:andThen(function(androidProduct)
					expect(androidProduct).to.be.ok()
					expect(androidProduct.productId).to.equal("com.roblox.robloxmobile.premium88subscribed")
				end)

			if largerRobuxUpsell then
				selectRobuxProduct(Enum.Platform.Android, 9000, true)
					:andThen(function(androidProduct)
						expect(androidProduct).to.be.ok()
						expect(androidProduct.productId).to.equal("com.roblox.robloxmobile.premium11000subscribed")
					end)
			else
				selectRobuxProduct(Enum.Platform.Android, 9000, true)
					:andThen(function(androidProduct)
						assert(false, "Should have failed the promise")
					end, function() end)
			end

			selectRobuxProduct(Enum.Platform.UWP, 88, true)
				:andThen(function(uwpProduct)
					expect(uwpProduct).to.be.ok()
					expect(uwpProduct.productId).to.equal("com.roblox.robloxmobile.premium88subscribed")
				end)
		end)
	end)
end