return function()
	local Color = require(script.Parent.Color)

	describe("RgbFromHex", function()
		it("should convert a hex color to rgb correctly", function()
			local r, g, b = Color.RgbFromHex(0x232527)
			expect(r).to.equal(35)
			expect(g).to.equal(37)
			expect(b).to.equal(39)

			r, g, b = Color.RgbFromHex(0x0)
			expect(r).to.equal(0)
			expect(g).to.equal(0)
			expect(b).to.equal(0)

			r, g, b = Color.RgbFromHex(0xffffff)
			expect(r).to.equal(255)
			expect(g).to.equal(255)
			expect(b).to.equal(255)
		end)


		it("should assert if given a hex color out of range", function()
			expect(function()
				Color.RgbFromHex(-1)
			end).to.throw()

			expect(function()
				Color.RgbFromHex(0x1000000)
			end).to.throw()
		end)
	end)
end