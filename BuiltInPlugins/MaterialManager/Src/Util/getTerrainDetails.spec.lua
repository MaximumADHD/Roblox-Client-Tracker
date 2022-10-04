local Plugin = script.Parent.Parent.Parent

local getTerrainDetails = require(Plugin.Src.Util.getTerrainDetails)

return function()
	it("Check if getting details works", function()
		local materialVariant = Instance.new("MaterialVariant")
		local terrainDetailTop1 = Instance.new("TerrainDetail")
		local terrainDetailTop2 = Instance.new("TerrainDetail")
		local terrainDetailSide = Instance.new("TerrainDetail")
		local terrainDetailBottom = Instance.new("TerrainDetail")

		terrainDetailTop1.Face = Enum.TerrainFace.Top
		terrainDetailTop2.Face = Enum.TerrainFace.Top
		terrainDetailSide.Face = Enum.TerrainFace.Side
		terrainDetailBottom.Face = Enum.TerrainFace.Bottom

		terrainDetailTop1.Parent = materialVariant
		terrainDetailTop2.Parent = materialVariant
		terrainDetailSide.Parent = materialVariant
		terrainDetailBottom.Parent = materialVariant

		local terrainDetails = getTerrainDetails(materialVariant)

		expect(terrainDetails[Enum.TerrainFace.Top]).to.equal(terrainDetailTop1)
		expect(terrainDetails[Enum.TerrainFace.Side]).to.equal(terrainDetailSide)
		expect(terrainDetails[Enum.TerrainFace.Bottom]).to.equal(terrainDetailBottom)
	end)
end
