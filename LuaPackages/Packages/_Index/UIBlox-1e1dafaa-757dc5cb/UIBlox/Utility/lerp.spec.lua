return function()
	local lerp = require(script.Parent.lerp)

	it("should linearly interpolate numbers", function()
		expect(lerp(0, 4, 0)).to.equal(0)
		expect(lerp(0, 4, 1)).to.equal(4)
		expect(lerp(0, 4, 0.5)).to.equal(2)
		expect(lerp(0, 4, 0.75)).to.equal(3)
	end)
end