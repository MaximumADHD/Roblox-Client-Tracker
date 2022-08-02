local Plugin = script.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local enumToPath = {
	[Enum.Material.Aluminum] = {
		"Materials",
		"Metal",
	},
	[Enum.Material.Asphalt] = {
		"Materials",
		"Concrete",
	},
	[Enum.Material.Basalt] = {
		"Materials",
		"Rock",
	},
	[Enum.Material.Brick] = {
		"Materials",
		"Stone",
	},
	[Enum.Material.Cobblestone] = {
		"Materials",
		"Stone",
	},
	[Enum.Material.Concrete] = {
		"Materials",
		"Concrete",
	},
	[Enum.Material.CorrodedMetal] = {
		"Materials",
		"Metal",
	},
	[Enum.Material.CrackedLava] = {
		"Materials",
		"Rock",
	},
	[Enum.Material.DiamondPlate] = {
		"Materials",
		"Metal",
	},
	[Enum.Material.Fabric] = {
		"Materials",
		"Fabric",
	},
	[Enum.Material.ForceField] = {
		"Materials",
		"Special"
	},
	[Enum.Material.Glacier] = {
		"Materials",
		"Organic",
	},
	[Enum.Material.Glass] = {
		"Materials",
		"Translucent",
	},
	[Enum.Material.Granite] = {
		"Materials",
		"Rock",
	},
	[Enum.Material.Grass] = {
		"Materials",
		"Ground",
	},
	[Enum.Material.Ground] = {
		"Materials",
		"Ground",
	},
	[Enum.Material.Ice] = {
		"Materials",
		"Organic",
	},
	[Enum.Material.LeafyGrass] = {
		"Materials",
		"Ground",
	},
	[Enum.Material.Limestone] = {
		"Materials",
		"Rock",
	},
	[Enum.Material.Neon] = {
		"Materials",
		"Special",
	},
	[Enum.Material.Marble] = {
		"Materials",
		"Rock",
	},
	[Enum.Material.Metal] = {
		"Materials",
		"Metal",
	},
	[Enum.Material.Mud] = {
		"Materials",
		"Ground",
	},
	[Enum.Material.Pavement] = {
		"Materials",
		"Concrete",
	},
	[Enum.Material.Pebble] = {
		"Materials",
		"Rock",
	},
	[Enum.Material.Plastic] = {
		"Materials",
		"Plastic",
	},
	[Enum.Material.Rock] = {
		"Materials",
		"Rock",
	},
	[Enum.Material.Salt] = {
		"Materials",
		"Organic",
	},
	[Enum.Material.Sand] = {
		"Materials",
		"Ground",
	},
	[Enum.Material.Sandstone] = {
		"Materials",
		"Rock",
	},
	[Enum.Material.Slate] = {
		"Materials",
		"Rock",
	},
	[Enum.Material.SmoothPlastic] = {
		"Materials",
		"Plastic",
	},
	[Enum.Material.Snow] = {
		"Materials",
		"Ground",
	},
	[Enum.Material.Wood] = {
		"Materials",
		"Wood",
	},
	[Enum.Material.WoodPlanks] = {
		"Materials",
		"Wood",
	},
}

return function(material : Enum.Material) : _Types.Path
	return enumToPath[material]
end
