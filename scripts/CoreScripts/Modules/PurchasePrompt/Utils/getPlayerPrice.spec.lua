return function()
	local Root = script.Parent.Parent
	local getPlayerPrice = require(script.Parent.getPlayerPrice)
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	it("should return correct sale price when not premium", function()
		local productInfo = {
			price = 5,
			premiumPrice = 10,
		}

		local price = getPlayerPrice(productInfo, false)

		expect(price).toBe(5)
	end)

	it("should return correct sale price when premium", function()
		local productInfo = {
			price = 5,
			premiumPrice = 10,
		}

		local price = getPlayerPrice(productInfo, true)

		expect(price).toBe(10)
	end)

	it("should return nil when data is corrupted and is not premium", function()
		local productInfo = {}

		local price = getPlayerPrice(productInfo, false)

		expect(price).toBeNil()
	end)

	it("should return nil when data is corrupted and is premium", function()
		local productInfo = {}

		local price = getPlayerPrice(productInfo, true)

		expect(price).toBeNil()
	end)
end
