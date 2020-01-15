local applyPivot = require(script.Parent.applyPivot)

local PivotType = require(script.Parent.TerrainEnums).PivotType

return function()
	it("should work for pivot top", function()
		expect(applyPivot(PivotType.Top, Vector3.new(0, 0, 0), 8)).to.equal(Vector3.new(0, -4, 0))
		expect(applyPivot(PivotType.Top, Vector3.new(0, 0, 0), 2)).to.equal(Vector3.new(0, -1, 0))
	end)

	it("should work for pivot bottom", function()
		expect(applyPivot(PivotType.Bottom, Vector3.new(0, 0, 0), 8)).to.equal(Vector3.new(0, 4, 0))
		expect(applyPivot(PivotType.Bottom, Vector3.new(0, 0, 0), 2)).to.equal(Vector3.new(0, 1, 0))
	end)

	it("should work for pivot center", function()
		expect(applyPivot(PivotType.Center, Vector3.new(0, 0, 0), 8)).to.equal(Vector3.new(0, 0, 0))
		expect(applyPivot(PivotType.Center, Vector3.new(0, 0, 0), 2)).to.equal(Vector3.new(0, 0, 0))
	end)

	it("should return the given position for invalid pivot", function()
		expect(applyPivot(nil, Vector3.new(0, 0, 0), 8)).to.equal(Vector3.new(0, 0, 0))
		expect(applyPivot(nil, Vector3.new(0, 0, 0), 2)).to.equal(Vector3.new(0, 0, 0))
	end)
end
