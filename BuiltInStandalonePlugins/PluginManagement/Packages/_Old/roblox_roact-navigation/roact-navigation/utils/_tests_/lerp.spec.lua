return function()
	local lerp = require(script.Parent.Parent.lerp)

	it("should return bottom of range for bottom input", function()
		expect(lerp(0, 1, 0)).to.equal(0)
		expect(lerp(1, 0, 0)).to.equal(1)
		expect(lerp(-1, 0, 0)).to.equal(-1)
	end)

	it("should return middle of range for middle input", function()
		expect(lerp(0, 1, 0.5)).to.equal(0.5)
		expect(lerp(1, 0, 0.5)).to.equal(0.5)
		expect(lerp(-1, 0, 0.5)).to.equal(-0.5)
	end)

	it("should return top of range for top input", function()
		expect(lerp(0, 1, 1)).to.equal(1)
		expect(lerp(1, 0, 1)).to.equal(0)
		expect(lerp(-1, 0, 1)).to.equal(0)
	end)
end
