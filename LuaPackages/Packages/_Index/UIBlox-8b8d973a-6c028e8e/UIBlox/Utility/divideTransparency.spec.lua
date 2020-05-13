return function()
	local divideTransparency = require(script.Parent.divideTransparency)

	it("should divide transparency", function()
		expect(divideTransparency(0, 2)).to.equal(0.5)
		expect(divideTransparency(0.5, 2)).to.equal(0.75)
		expect(divideTransparency(0, 4)).to.equal(0.75)
	end)
end