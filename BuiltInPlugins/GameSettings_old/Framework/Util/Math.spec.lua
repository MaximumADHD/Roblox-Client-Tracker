return function()
	local Util = script.Parent
	local Math = require(Util.Math)

	describe("round", function()
		it("should round to specified place", function()
			local num = 101.39901
			expect(Math.round(num, 0)).to.be.equal(101)
			expect(Math.round(num, 1)).to.be.equal(101.4)
			expect(Math.round(num, 2)).to.be.equal(101.40)
			expect(Math.round(num, 3)).to.be.equal(101.399)
			expect(Math.round(num, 4)).to.be.equal(101.3990)
		end)

		it("round should work for negative numbers", function()
			local num = -0.99095
			expect(Math.round(num, 0)).to.be.equal(-1)
			expect(Math.round(num, 1)).to.be.equal(-1)
			expect(Math.round(num, 2)).to.be.equal(-0.99)
			expect(Math.round(num, 3)).to.be.equal(-0.991)
			expect(Math.round(num, 4)).to.be.equal(-0.9909)
		end)
	end)
end