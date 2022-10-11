return function()
	local VisvalingamWhyatt = require(script.Parent.VisvalingamWhyatt)

	describe("VisvalingamWhyatt", function()
		it("should work with fewer than three points", function()
			local ticks = VisvalingamWhyatt({})
			expect(#ticks).to.equal(0)

			ticks = VisvalingamWhyatt({ { 1, 2 } })
			expect(#ticks).to.equal(1)
			expect(ticks[1]).to.equal(1)

			ticks = VisvalingamWhyatt({ { 1, 2 }, { 3, 4 } })
			expect(#ticks).to.equal(2)
			expect(ticks[1]).to.equal(1)
			expect(ticks[2]).to.equal(3)
		end)

		it("should reuse the previous point's area if needed", function()
			local points = { { 0, 0 }, { 6, 2 }, { 8, 7 }, { 10, 2 }, { 18, 0 } }
			local ticks = VisvalingamWhyatt(points)
			expect(#ticks).to.equal(5)
			expect(ticks[1]).to.equal(0)
			expect(ticks[2]).to.equal(18)
			expect(ticks[3]).to.equal(10)
			expect(ticks[4]).to.equal(6)
			expect(ticks[5]).to.equal(8)
		end)
	end)
end
