local enumToColor = {
	[Enum.Material.Asphalt] = Color3.fromRGB(55, 56, 56),
	[Enum.Material.Basalt] = Color3.fromRGB(43, 44, 35),
	[Enum.Material.Brick] = Color3.fromRGB(121, 86, 70),
	[Enum.Material.Cardboard] = Color3.fromRGB(255, 206, 152),
	[Enum.Material.Carpet] = Color3.fromRGB(163, 162, 165),
	[Enum.Material.CeramicTiles] = Color3.fromRGB(181, 173, 156),
	[Enum.Material.ClayRoofTiles] = Color3.fromRGB(255, 142, 87),
	[Enum.Material.Cobblestone] = Color3.fromRGB(101, 92, 63),
	[Enum.Material.Concrete] = Color3.fromRGB(107, 103, 98),
	[Enum.Material.CorrodedMetal] = Color3.fromRGB(147, 106, 88),
	[Enum.Material.CrackedLava] = Color3.fromRGB(67, 39, 41),
	[Enum.Material.DiamondPlate] = Color3.fromRGB(204, 203, 202),
	[Enum.Material.Fabric] = Color3.fromRGB(145, 137, 129),
	[Enum.Material.Foil] = Color3.fromRGB(236, 236, 236),
	[Enum.Material.Glacier] = Color3.fromRGB(175, 217, 228),
	[Enum.Material.Granite] = Color3.fromRGB(88, 78, 68),
	[Enum.Material.Grass] = Color3.fromRGB(71, 77, 37),
	[Enum.Material.Ground] = Color3.fromRGB(74, 67, 46),
	[Enum.Material.Ice] = Color3.fromRGB(195, 224, 239),
	[Enum.Material.LeafyGrass] = Color3.fromRGB(74, 72, 35),
	[Enum.Material.Leather] = Color3.fromRGB(110, 73, 53),
	[Enum.Material.Limestone] = Color3.fromRGB(217, 185, 142),
	[Enum.Material.Marble] = Color3.fromRGB(168, 171, 181),
	[Enum.Material.Metal] = Color3.fromRGB(192, 192, 192),
	[Enum.Material.Mud] = Color3.fromRGB(83, 73, 57),
	[Enum.Material.Pavement] = Color3.fromRGB(86, 86, 88),
	[Enum.Material.Pebble] = Color3.fromRGB(134, 134, 129),
	[Enum.Material.Plaster] = Color3.fromRGB(204, 142, 105),
	[Enum.Material.Rock] = Color3.fromRGB(62, 59, 58),
	[Enum.Material.RoofShingles] = Color3.fromRGB(66, 66, 66),
	[Enum.Material.Rubber] = Color3.fromRGB(32, 32, 32),
	[Enum.Material.Salt] = Color3.fromRGB(180, 180, 179),
	[Enum.Material.Sand] = Color3.fromRGB(122, 111, 84),
	[Enum.Material.Sandstone] = Color3.fromRGB(118, 77, 61),
	[Enum.Material.Slate] = Color3.fromRGB(118, 126, 142),
	[Enum.Material.Snow] = Color3.fromRGB(179, 185, 195),
	[Enum.Material.Wood] = Color3.fromRGB(136, 101, 71),
	[Enum.Material.WoodPlanks] = Color3.fromRGB(126, 99, 68),
}

return function(material: Enum.Material, use2022Materials: boolean?): Color3
	if enumToColor[material] then
		return enumToColor[material]
	else
		return BrickColor.new("Medium stone gray").Color
	end
end
