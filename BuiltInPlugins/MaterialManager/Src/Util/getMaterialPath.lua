local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

local enumToPath = {
	[Enum.Material.Aluminum] = {
		"HumanMade",
		"Metal",
	},
	[Enum.Material.Asphalt] = {
		"Natural",
		"Asphalt",
	},
	[Enum.Material.Basalt] = {
		"Natural",
		"Rock",
	},
	[Enum.Material.Brick] = {
		"HumanMade",
		"Stone",
	},
	[Enum.Material.Cobblestone] = {
		"HumanMade",
		"Stone",
	},
	[Enum.Material.Concrete] = {
		"HumanMade",
		"Stone",
	},
	[Enum.Material.CorrodedMetal] = {
		"HumanMade",
		"Metal",
	},
	[Enum.Material.CrackedLava] = {
		"Natural",
		"Rock",
	},
	[Enum.Material.DiamondPlate] = {
		"HumanMade",
		"Metal",
	},
	[Enum.Material.Fabric] = {
		"HumanMade",
		"Fabric",
	},
	[Enum.Material.Glacier] = {
		"Natural",
		"Glacier",
	},
	[Enum.Material.Glass] = {
		"HumanMade",
		"Translucent",
	},
	[Enum.Material.Granite] = {
		"Natural",
		"Rock",
	},
	[Enum.Material.Grass] = {
		"Ground",
		"Grass",
	},
	[Enum.Material.Ground] = {
		"Ground",
		"Dirt",
	},
	[Enum.Material.Ice] = {
		"Natural",
		"Mineral",
	},
	[Enum.Material.LeafyGrass] = {
		"HumanMade",
		"Metal",
	},
	[Enum.Material.Limestone] = {
		"Ground",
		"Grass",
	},
	[Enum.Material.Marble] = {
		"HumanMade",
		"Stone",
	},
	[Enum.Material.Metal] = {
		"HumanMade",
		"Metal",
	},
	[Enum.Material.Mud] = {
		"Ground",
		"Mud",
	},
	[Enum.Material.Pavement] = {
		"HumanMade",
		"Stone",
	},
	[Enum.Material.Pebble] = {
		"Natural",
		"Rock",
	},
	[Enum.Material.Plastic] = {
		"HumanMade",
		"Synthetic",
	},
	[Enum.Material.Rock] = {
		"Natural",
		"Rock",
	},
	[Enum.Material.Salt] = {
		"Natural",
		"Mineral",
	},
	[Enum.Material.Sand] = {
		"Ground",
		"Salt",
	},
	[Enum.Material.Sandstone] = {
		"Natural",
		"Rock",
	},
	[Enum.Material.Slate] = {
		"Natural",
		"Rock",
	},
	[Enum.Material.SmoothPlastic] = {
		"HumanMade",
		"Synthetic",
	},
	[Enum.Material.Snow] = {
		"Ground",
		"Snow",
	},
	[Enum.Material.Wood] = {
		"Natural",
		"Wood",
	},
	[Enum.Material.WoodPlanks] = {
		"HumanMade",
		"FinishedWood",
	},
}

return function(materialVariant : MaterialVariant) : _Types.Path
	return enumToPath[materialVariant.BaseMaterial]
end
