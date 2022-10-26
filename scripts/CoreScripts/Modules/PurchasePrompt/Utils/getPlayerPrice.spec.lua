return function()
	local Root = script.Parent.Parent

	local getPlayerPrice = require(script.Parent.getPlayerPrice)

	local GetFFlagRobuxUpsellNRE = require(Root.Flags.GetFFlagRobuxUpsellNRE)

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

		expect(price).to.equal(10)
	end)

	if GetFFlagRobuxUpsellNRE() then
		it("should return 0 when data is corrupted and is not premium", function()
			local productInfo = {}

			local price = getPlayerPrice(productInfo, false)

			expect(price).to.equal(0)
		end)

		it("should return 0 when data is corrupted and is premium", function()
			local productInfo = {}

			local price = getPlayerPrice(productInfo, true)

			expect(price).to.equal(0)
		end)
	else
		it("should return nil when data is corrupted and is not premium", function()
			local productInfo = {}

			local price = getPlayerPrice(productInfo, false)

			expect(price).to.be.equal(nil)
		end)

		it("should return nil when data is corrupted and is premium", function()
			local productInfo = {}

			local price = getPlayerPrice(productInfo, true)

			expect(price).to.be.equal(nil)
		end)
	end
end
