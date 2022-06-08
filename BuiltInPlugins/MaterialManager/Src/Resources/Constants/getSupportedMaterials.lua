local Plugin = script.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

local Flags = Plugin.Src.Flags
local getFFlagMaterialManagerGlassNeonForceField = require(Flags.getFFlagMaterialManagerGlassNeonForceField)

local supportedMaterials = {
	[Enum.Material.Asphalt] = true,
	[Enum.Material.Basalt] = true,
	[Enum.Material.Brick] = true,
	[Enum.Material.Cobblestone] = true,
	[Enum.Material.Concrete] = true,
	[Enum.Material.CorrodedMetal] = true,
	[Enum.Material.CrackedLava] = true,
	[Enum.Material.DiamondPlate] = true,
	[Enum.Material.Fabric] = true,
	[Enum.Material.Foil] = true,
	[Enum.Material.ForceField] = false,
	[Enum.Material.Glacier] = true,
	[Enum.Material.Glass] = false,
	[Enum.Material.Granite] = true,
	[Enum.Material.Grass] = true,
	[Enum.Material.Ground] = true,
	[Enum.Material.Ice] = true,
	[Enum.Material.LeafyGrass] = true,
	[Enum.Material.Limestone] = true,
	[Enum.Material.Marble] = true,
	[Enum.Material.Metal] = true,
	[Enum.Material.Mud] = true,
	[Enum.Material.Neon] = false,
	[Enum.Material.Pavement] = true,
	[Enum.Material.Pebble] = true,
	[Enum.Material.Plastic] = true,
	[Enum.Material.Rock] = true,
	[Enum.Material.Salt] = true,
	[Enum.Material.Sand] = true,
	[Enum.Material.Sandstone] = true,
	[Enum.Material.Slate] = true,
	[Enum.Material.SmoothPlastic] = true,
	[Enum.Material.Snow] = true,
	[Enum.Material.Wood] = true,
	[Enum.Material.WoodPlanks] = true,
}

local supportedMaterialsList = {
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

if getFFlagMaterialManagerGlassNeonForceField() then
	return function(isList : boolean?) : _Types.Map<any, any>
		if isList then
			return supportedMaterialsList
		else
			return supportedMaterials
		end
	end
else
	return function() : _Types.Array<Enum.Material>
		return supportedMaterialsList
	end
end
