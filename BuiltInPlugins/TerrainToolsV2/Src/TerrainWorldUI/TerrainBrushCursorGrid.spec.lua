local TerrainBrushCursorGrid = require(script.Parent.TerrainBrushCursorGrid)

return function()
	it("should be creatable", function()
		expect(TerrainBrushCursorGrid.new()).to.be.ok()
	end)
end
