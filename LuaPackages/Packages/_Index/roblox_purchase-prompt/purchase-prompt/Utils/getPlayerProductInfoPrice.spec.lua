return function()
	local Root = script.Parent.Parent

	local GetFFlagIGPPPremiumPrice = require(Root.Flags.GetFFlagIGPPPremiumPrice)

	local getPlayerProductInfoPrice = require(script.Parent.getPlayerProductInfoPrice)

	it("should return correct sale price when not premium", function()
		local productInfo = {
			PriceInRobux = 5,
			PremiumPriceInRobux = 10,
		}

		local price = getPlayerProductInfoPrice(productInfo, false)

		expect(price).to.equal(5)
	end)

	it("should return correct sale price when premium", function()
		local productInfo = {
			PriceInRobux = 5,
			PremiumPriceInRobux = 10,
		}

		local price = getPlayerProductInfoPrice(productInfo, true)

		if GetFFlagIGPPPremiumPrice() then
			expect(price).to.equal(10)
		else
			expect(price).to.equal(5)
		end
	end)
end
