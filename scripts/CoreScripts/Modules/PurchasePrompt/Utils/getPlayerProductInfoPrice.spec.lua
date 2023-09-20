return function()
	local getPlayerProductInfoPrice = require(script.Parent.getPlayerProductInfoPrice)
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	it("should return correct sale price when not premium", function()
		local productInfo = {
			PriceInRobux = 5,
			PremiumPriceInRobux = 10,
		}

		local price = getPlayerProductInfoPrice(productInfo, false)

		expect(price).toBe(5)
	end)

	it("should return correct sale price when premium", function()
		local productInfo = {
			PriceInRobux = 5,
			PremiumPriceInRobux = 10,
		}

		local price = getPlayerProductInfoPrice(productInfo, true)

		expect(price).toBe(10)
	end)
end
