local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

local enumToType = {
	[Enum.Material.Air] = "Terrain",
	[Enum.Material.Asphalt] = "Terrain",
	[Enum.Material.Basalt] = "Terrain",
	[Enum.Material.Brick] = "Base",
	[Enum.Material.Cobblestone] = "Base",
	[Enum.Material.Concrete] = "Base",
	[Enum.Material.CorrodedMetal] = "Part",
	[Enum.Material.CrackedLava] = "Terrain",
	[Enum.Material.DiamondPlate] = "Part",
	[Enum.Material.Fabric] = "Part",
	[Enum.Material.Foil] = "Part",
	[Enum.Material.ForceField] = "Part",
	[Enum.Material.Glacier] = "Terrain",
	[Enum.Material.Glass] = "Part",
	[Enum.Material.Granite] = "Part",
	[Enum.Material.Grass] = "Base",
	[Enum.Material.Ground] = "Terrain",
	[Enum.Material.Ice] = "Base",
	[Enum.Material.LeafyGrass] = "Terrain",
	[Enum.Material.Limestone] = "Terrain",
	[Enum.Material.Marble] = "Part",
	[Enum.Material.Metal] = "Part",
	[Enum.Material.Mud] = "Terrain",
	[Enum.Material.Neon] = "Part",
	[Enum.Material.Pavement] = "Terrain",
	[Enum.Material.Pebble] = "Part",
	[Enum.Material.Plastic] = "Part",
	[Enum.Material.Rock] = "Terrain",
	[Enum.Material.Salt] = "Terrain",
	[Enum.Material.Sand] = "Base",
	[Enum.Material.Slate] = "Base",
	[Enum.Material.Sandstone] = "Terrain",
	[Enum.Material.SmoothPlastic] = "Part",
	[Enum.Material.Water] = "Terrain",
	[Enum.Material.Wood] = "Part",
	[Enum.Material.WoodPlanks] = "Base",
}

return function(material : Enum.Material) : _Types.MaterialType
	return enumToType[material]
end
