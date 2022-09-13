local enumToName = {
	[Enum.TerrainFace.Top] = "Top",
	[Enum.TerrainFace.Side] = "Side",
	[Enum.TerrainFace.Bottom] = "Bottom",
}

return function(terrainDetail: Enum.TerrainFace): string
	return enumToName[terrainDetail]
end
