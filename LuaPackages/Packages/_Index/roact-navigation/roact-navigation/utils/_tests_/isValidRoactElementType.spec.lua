return function()
	local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
	local isValidRoactElementType = require(script.Parent.Parent.isValidRoactElementType)

	it("should return true for valid element types", function()
		expect(isValidRoactElementType("foo")).to.equal(true)
		expect(isValidRoactElementType(function() return "foo" end)).to.equal(true)
		expect(isValidRoactElementType(Roact.Portal)).to.equal(true)
		expect(isValidRoactElementType(
			{ render = function() return "foo" end })).to.equal(true)
	end)

	it("should return false for invalid element types", function()
		expect(isValidRoactElementType(5)).to.equal(false)
		expect(isValidRoactElementType({ render = "bad" })).to.equal(false)
		expect(isValidRoactElementType(
			{ notRender = function() return "foo" end })).to.equal(false)
	end)
end
