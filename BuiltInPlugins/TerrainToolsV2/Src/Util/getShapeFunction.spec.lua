local getShapeFunction = require(script.Parent.getShapeFunction)

local TerrainEnums = require(script.Parent.TerrainEnums)
local Shape = TerrainEnums.Shape

return function()
	it("should be a function", function()
		expect(type(getShapeFunction)).to.equal("function")
	end)

	it("should return a function for valid inputs", function()
		for _, shape in pairs(Shape) do
			expect(type(getShapeFunction(shape))).to.equal("function")
		end
	end)

	it("should throw for invalid inputs", function()
		expect(function()
			getShapeFunction("foo")
		end).to.throw()
	end)
end
