return function()
	local selectRobuxProduct = require(script.Parent.selectRobuxProduct)

	it("should select a platform-appropriate option WITHOUT Builders Club", function()
		selectRobuxProduct(Enum.Platform.IOS, 80, false, false)
			:andThen(function(iosProduct)
				expect(iosProduct).to.be.ok()
				expect(iosProduct.productId).to.equal("com.roblox.robloxmobile.80RobuxNonBC")
			end)

		selectRobuxProduct(Enum.Platform.Android, 80, false, false)
			:andThen(function(androidProduct)
				expect(androidProduct).to.be.ok()
				expect(androidProduct.productId).to.equal("com.roblox.client.robux80")
			end)

		selectRobuxProduct(Enum.Platform.UWP, 80, false, false)
			:andThen(function(uwpProduct)
				expect(uwpProduct).to.be.ok()
				expect(uwpProduct.productId).to.equal("com.roblox.client.robux80")
			end)
	end)

	it("should select a platform-appropriate option WITH Builders Club", function()
		selectRobuxProduct(Enum.Platform.IOS, 90, true, false)
			:andThen(function(iosProduct)
				expect(iosProduct).to.be.ok()
				expect(iosProduct.productId).to.equal("com.roblox.robloxmobile.90RobuxBC")
			end)

		selectRobuxProduct(Enum.Platform.Android, 90, true, false)
			:andThen(function(androidProduct)
				expect(androidProduct).to.be.ok()
				expect(androidProduct.productId).to.equal("com.roblox.client.robux90bc")
			end)

		selectRobuxProduct(Enum.Platform.UWP, 90, true, false)
			:andThen(function(uwpProduct)
				expect(uwpProduct).to.be.ok()
				expect(uwpProduct.productId).to.equal("com.roblox.client.robux90bc")
			end)
	end)

	-- Need to work out final product names
	describe("premium products", function()
		it("should select the appropriate premium product when premium is enabled", function()
			selectRobuxProduct(Enum.Platform.IOS, 80, true, false)
				:andThen(function(iosProduct)
					expect(iosProduct).to.be.ok()
					expect(iosProduct.productId).to.equal("com.roblox.robloxmobile.Premium80Robux")
				end)

			selectRobuxProduct(Enum.Platform.Android, 80, true, false)
				:andThen(function(androidProduct)
					expect(androidProduct).to.be.ok()
					expect(androidProduct.productId).to.equal("com.roblox.client.premium80robux")
				end)

			selectRobuxProduct(Enum.Platform.UWP, 80, true, false)
				:andThen(function(uwpProduct)
					expect(uwpProduct).to.be.ok()
					expect(uwpProduct.productId).to.equal("com.roblox.client.premium80robux")
				end)
		end)

		it("should select the appropriate premium product when premium is enabled and user has BC", function()
			selectRobuxProduct(Enum.Platform.IOS, 88, true, false)
				:andThen(function(iosProduct)
					expect(iosProduct).to.be.ok()
					expect(iosProduct.productId).to.equal("com.roblox.robloxmobile.Premium88Subscribed")
				end)

			selectRobuxProduct(Enum.Platform.Android, 88, true, false)
				:andThen(function(androidProduct)
					expect(androidProduct).to.be.ok()
					expect(androidProduct.productId).to.equal("com.roblox.client.premium88subscribed")
				end)

			selectRobuxProduct(Enum.Platform.UWP, 88, true, false)
				:andThen(function(uwpProduct)
					expect(uwpProduct).to.be.ok()
					expect(uwpProduct.productId).to.equal("com.roblox.client.premium88subscribed")
				end)
		end)
	end)
end