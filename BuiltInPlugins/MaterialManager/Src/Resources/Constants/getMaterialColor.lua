local enumToColor = {
	[Enum.Material.Asphalt] = {
		Color = Color3.fromRGB(55, 56, 56),
		OldColor = Color3.fromRGB(115, 123, 107),
	},
	[Enum.Material.Basalt] = {
		Color = Color3.fromRGB(43, 44, 35),
		OldColor = Color3.fromRGB(30, 30, 37),
	},
	[Enum.Material.Brick] = {
		Color = Color3.fromRGB(121, 86, 70),
		OldColor = Color3.fromRGB(198, 195, 194),
	},
	[Enum.Material.Cobblestone] = {
		Color = Color3.fromRGB(101, 92, 63),
		OldColor = Color3.fromRGB(207, 193, 180),
	},
	[Enum.Material.Concrete] = {
		Color = Color3.fromRGB(107, 103, 98),
		OldColor = Color3.fromRGB(203, 203, 203),
	},
	[Enum.Material.CorrodedMetal] = {
		Color = Color3.fromRGB(147, 106, 88),
		OldColor = Color3.fromRGB(150, 109 , 86),
	},
	[Enum.Material.CrackedLava] = {
		Color = Color3.fromRGB(67, 39, 41),
		OldColor = Color3.fromRGB(232, 156, 74),
	},
	[Enum.Material.DiamondPlate] = {
		Color = Color3.fromRGB(204, 203, 202),
		OldColor = Color3.fromRGB(161, 161, 161),
	},
	[Enum.Material.Fabric] = {
		Color = Color3.fromRGB(145, 137, 129),
		OldColor = Color3.fromRGB(96, 95, 93),
	},
	[Enum.Material.Foil] = {
		Color = Color3.fromRGB(236, 236, 236),
		OldColor = Color3.fromRGB(255, 255, 255),
	},
	[Enum.Material.Glacier] = {
		Color = Color3.fromRGB(175, 217, 228),
		OldColor = Color3.fromRGB(101, 176, 234),
	},
	[Enum.Material.Granite] = {
		Color = Color3.fromRGB(88, 78, 68),
		OldColor = Color3.fromRGB(104, 104, 104),
	},
	[Enum.Material.Grass] = {
		Color = Color3.fromRGB(71, 77, 37),
		OldColor = Color3.fromRGB(157, 157, 150),
	},
	[Enum.Material.Ground] = {
		Color = Color3.fromRGB(74, 67, 46),
		OldColor = Color3.fromRGB(112, 87, 43),
	},
	[Enum.Material.Ice] = {
		Color = Color3.fromRGB(195, 224, 239),
		OldColor = Color3.fromRGB(255, 255, 255),
	},
	[Enum.Material.LeafyGrass] = {
		Color = Color3.fromRGB(74, 72, 35),
		OldColor = Color3.fromRGB(115, 132, 74),
	},
	[Enum.Material.Limestone] = {
		Color = Color3.fromRGB(217, 185, 142),
		OldColor = Color3.fromRGB(206, 173, 148),
	},
	[Enum.Material.Marble] = {
		Color = Color3.fromRGB(168, 171, 181),
		OldColor = Color3.fromRGB(193, 193, 193)
	},
	[Enum.Material.Metal] = {
		Color = Color3.fromRGB(192, 192, 192),
		OldColor = Color3.fromRGB(193, 192, 193),
	},
	[Enum.Material.Mud] = {
		Color = Color3.fromRGB(83, 73, 57),
		OldColor = Color3.fromRGB(44, 20, 11),
	},
	[Enum.Material.Pavement] = {
		Color = Color3.fromRGB(86, 86, 88),
		OldColor = Color3.fromRGB(148, 148, 140),
	},
	[Enum.Material.Pebble] = {
		Color = Color3.fromRGB(134, 134, 129),
		OldColor = Color3.fromRGB(203, 203, 203),
	},
	[Enum.Material.Rock] = {
		Color = Color3.fromRGB(62, 59, 58),
		OldColor = Color3.fromRGB(102, 108, 111),
	},
	[Enum.Material.Salt] = {
		Color = Color3.fromRGB(180, 180, 179),
		OldColor = Color3.fromRGB(198, 189, 181),
	},
	[Enum.Material.Sand] = {
		Color = Color3.fromRGB(122, 111, 84),
		OldColor = Color3.fromRGB(216, 216, 216),
	},
	[Enum.Material.Sandstone] = {
		Color = Color3.fromRGB(118, 77, 61),
		OldColor = Color3.fromRGB(137, 90, 71),
	},
	[Enum.Material.Slate] = {
		Color = Color3.fromRGB(118, 126, 142),
		OldColor = Color3.fromRGB(186, 186, 186),
	},
	[Enum.Material.Snow] = {
		Color = Color3.fromRGB(179, 185, 195),
		OldColor = Color3.fromRGB(195, 199, 218),
	},
	[Enum.Material.Wood] = {
		Color = Color3.fromRGB(136, 101, 71),
		OldColor = Color3.fromRGB(224, 224, 224),
	},
	[Enum.Material.WoodPlanks] = {
		Color = Color3.fromRGB(126, 99, 68),
		OldColor = Color3.fromRGB(207, 203, 197),
	},
}

return function(material : Enum.Material, uses2022Materials : boolean) : Color3?
	if enumToColor[material] then
		return enumToColor[material].Color
	else
		return nil
	end
end
