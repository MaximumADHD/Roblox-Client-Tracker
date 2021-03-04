return function()
	local Root = script.Parent.Parent

	local GetFFlagIGPPPremiumPrice = require(Root.Flags.GetFFlagIGPPPremiumPrice)

	local getPlayerPrice = require(script.Parent.getPlayerPrice)

	it("should return correct sale price when not premium", function()
		local productInfo = {
			price = 5,
			premiumPrice = 10,
		}

		local price = getPlayerPrice(productInfo, false)

		expect(price).to.equal(5)
	end)

	it("should return correct sale price when premium", function()
		local productInfo = {
			price = 5,
			premiumPrice = 10,
		}

		local price = getPlayerPrice(productInfo, true)

		if GetFFlagIGPPPremiumPrice() then
			expect(price).to.equal(10)
		else
			expect(price).to.equal(5)
		end
	end)
end
