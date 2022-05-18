local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

local supportedMaterials = {
	Enum.Material.Asphalt,
	Enum.Material.Basalt,
	Enum.Material.Brick,
	Enum.Material.Cobblestone,
	Enum.Material.Concrete,
	Enum.Material.CorrodedMetal,
	Enum.Material.CrackedLava,
	Enum.Material.DiamondPlate,
	Enum.Material.Fabric,
	Enum.Material.Foil,
	Enum.Material.Glacier,
	Enum.Material.Granite,
	Enum.Material.Grass,
	Enum.Material.Ground,
	Enum.Material.Ice,
	Enum.Material.LeafyGrass,
	Enum.Material.Limestone,
	Enum.Material.Marble,
	Enum.Material.Metal,
	Enum.Material.Mud,
	Enum.Material.Pavement,
	Enum.Material.Pebble,
	Enum.Material.Plastic,
	Enum.Material.Rock,
	Enum.Material.Salt,
	Enum.Material.Sand,
	Enum.Material.Sandstone,
	Enum.Material.Slate,
	Enum.Material.SmoothPlastic,
	Enum.Material.Snow,
	Enum.Material.Wood,
	Enum.Material.WoodPlanks,
}

return function() : _Types.Array<Enum.Material>
	return supportedMaterials
end
