local FFlagTerrainToolsConvertPartTool = game:GetFastFlag("TerrainToolsConvertPartTool")
local FFlagTerrainToolsFlagConvertToolRemoval = game:GetFastFlag("TerrainToolsFlagConvertToolRemoval")
local convertToolRemoval = FFlagTerrainToolsFlagConvertToolRemoval and not FFlagTerrainToolsConvertPartTool

if convertToolRemoval then
	return function() end
end

-- TODO: smkuhne: Remove file with removal of the ShapeFiller
local ShapeFiller = require(script.Parent.ShapeFiller)

return function()
	it("should be a table", function()
		expect(type(ShapeFiller)).to.equal("table")
		expect(type(ShapeFiller.fillBlock)).to.equal("function")
		expect(type(ShapeFiller.fillCylinder)).to.equal("function")
		expect(type(ShapeFiller.fillBall)).to.equal("function")
		expect(type(ShapeFiller.fillWedge)).to.equal("function")
		expect(type(ShapeFiller.fillShapeSlow)).to.equal("function")
	end)
end