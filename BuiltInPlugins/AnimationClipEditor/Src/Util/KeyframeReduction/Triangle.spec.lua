return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Framework = require(Plugin.Packages.Framework)
	local MathUtil = Framework.Util.Math

	local Triangle = require(script.Parent.Triangle)

	describe("Triangle", function()
		-- Note that the value returned in triangle.area is 16 * area * area
		it("should calculate the area", function()
			local triangle = Triangle.new({ 2, 1 }, { 2, 5 }, { 7, 1 })
			expect(MathUtil.fuzzyEq(triangle.area, 16 * 10 * 10)).to.equal(true)
		end)

		it("should work in more dimensions", function()
			local triangle

			triangle = Triangle.new({ 0, 0, 0 }, { 0, 0, 2 }, { 4, 3, 0 })
			expect(MathUtil.fuzzyEq(triangle.area, 16 * 5 * 5)).to.equal(true)

			-- Find a segment in 3d of length n-squared. 12*12 + 4*4 + 3*3 = 13*13
			-- Then add any length in a 4th dimension (I picked 6). Area is 13*6/2
			triangle = Triangle.new({ 0, 0, 0, 0 }, { 12, 4, 3, 0 }, { 0, 0, 0, 6 })
			expect(MathUtil.fuzzyEq(triangle.area, 16 * 39 * 39)).to.equal(true)
		end)
	end)
end
