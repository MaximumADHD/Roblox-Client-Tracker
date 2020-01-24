local isPositiveVector2 = require(script.Parent.isPositiveVector2)

return function()
	it("should return false for non-Vector2s", function()
		expect(isPositiveVector2(0)).to.equal(false)
	end)

	it("should return false for Vector2s with a negative component", function()
		expect(isPositiveVector2(Vector2.new(-100, 100))).to.equal(false)
		expect(isPositiveVector2(Vector2.new(100, -100))).to.equal(false)
		expect(isPositiveVector2(Vector2.new(-100, -100))).to.equal(false)
	end)

	it("should return true for Vector2s with positive components", function()
		assert(isPositiveVector2(Vector2.new(100, 100)))
	end)
end