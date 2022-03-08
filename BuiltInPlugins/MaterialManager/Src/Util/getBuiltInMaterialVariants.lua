local Plugin = script.Parent.Parent.Parent

local Util = Plugin.Src.Util

local getSupportedMaterials = require(Util.getSupportedMaterials)
local getMaterialName = require(Util.getMaterialName)

local _Types = require(Plugin.Src.Types)

local enumToTexture = {
	[Enum.Material.Asphalt] = {
		ColorMap = "rbxassetid://8699720861",
		NormalMap = "rbxassetid://8699721717",
		RoughnessMap = "rbxassetid://8699722514",
	},
	[Enum.Material.Basalt] = {
		ColorMap = "rbxassetid://8706345277",
		MetalnessMap = "rbxassetid://8207243574",
		NormalMap = "rbxassetid://8706416568",
		RoughnessMap = "rbxassetid://8706417425",
	},
	[Enum.Material.Brick] = {
		ColorMap = "rbxassetid://8706292927",
		MetalnessMap = "rbxassetid://8207243574",
		NormalMap = "rbxassetid://8706295234",
		RoughnessMap = "rbxassetid://8706296565",
	},
	[Enum.Material.Cobblestone] = {
		ColorMap = "rbxassetid://8699695299",
		MetalnessMap = "rbxassetid://8207243574",
		NormalMap = "rbxassetid://8699696047",
		RoughnessMap = "rbxassetid://8699697002",
	},
	[Enum.Material.Concrete] = {
		ColorMap = "rbxassetid://8699698151",
		NormalMap = "rbxassetid://8699698794",
		RoughnessMap = "rbxassetid://8699699735",
	},
	[Enum.Material.CorrodedMetal] = {
		ColorMap = "rbxassetid://8207284135",
		MetalnessMap = "rbxassetid://8207411794",
		NormalMap = "rbxassetid://8207285294",
		RoughnessMap = "rbxassetid://8207286421",
	},
	[Enum.Material.CrackedLava] = {
		ColorMap = "rbxassetid://8699750558",
		NormalMap = "rbxassetid://8699751425",
		RoughnessMap = "rbxassetid://8699752050",
	},
	[Enum.Material.DiamondPlate] = {
		ColorMap = "rbxassetid://8207254706",
		MetalnessMap = "rbxassetid://8207256697",
		NormalMap = "rbxassetid://8207255545",
		RoughnessMap = "rbxassetid://8207257588",
	},
	[Enum.Material.Fabric] = {
		ColorMap = "rbxassetid://8207250638",
		NormalMap = "rbxassetid://8207251739",
		RoughnessMap = "rbxassetid://8207252770",
	},
	[Enum.Material.Foil] = {
		ColorMap = "rbxassetid://8699691494",
		MetalnessMap = "rbxassetid://7546644642",
		NormalMap = "rbxassetid://8207233270",
		RoughnessMap = "rbxassetid://8207234486",
	},
	[Enum.Material.Glacier] = {
		ColorMap = "rbxassetid://8699753804",
		NormalMap = "rbxassetid://8699754512",
		RoughnessMap = "rbxassetid://8699755232",
	},
	[Enum.Material.Glass] = {
		ColorMap = "rbxassetid://7547304577",
		NormalMap = "rbxassetid://7547304785",
		RoughnessMap = "rbxassetid://7547304892",
	},
	[Enum.Material.Granite] = {
		ColorMap = "rbxassetid://8207259439",
		NormalMap = "rbxassetid://8207260094",
		RoughnessMap = "rbxassetid://8207260803",
	},
	[Enum.Material.Grass] = {
		ColorMap = "rbxassetid://8699701024",
		NormalMap = "rbxassetid://8699701641",
		RoughnessMap = "rbxassetid://8699702370",
	},
	[Enum.Material.Ground] = {
		ColorMap = "rbxassetid://8699756357",
		NormalMap = "rbxassetid://8699757147",
		RoughnessMap = "rbxassetid://8699758000",
	},
	[Enum.Material.Ice] = {
		ColorMap = "rbxassetid://8699703879",
		NormalMap = "rbxassetid://8699704767",
		RoughnessMap = "rbxassetid://8699705798",
	},
	[Enum.Material.LeafyGrass] = {
		ColorMap = "rbxassetid://8699726195",
		NormalMap = "rbxassetid://8699726972",
		RoughnessMap = "rbxassetid://8699727667",
	},
	[Enum.Material.Limestone] = {
		ColorMap = "rbxassetid://8699746900",
		NormalMap = "rbxassetid://8699747906",
		RoughnessMap = "rbxassetid://8699748930",
	},
	[Enum.Material.Marble] = {
		ColorMap = "rbxassetid://8207270978",
		NormalMap = "rbxassetid://8207272151",
		RoughnessMap = "rbxassetid://8207272864",
	},
	[Enum.Material.Metal] = {
		ColorMap = "rbxassetid://8207274836",
		MetalnessMap = "rbxassetid://8207277076",
		NormalMap = "rbxassetid://8207275930",
		RoughnessMap = "rbxassetid://8207278264",
	},
	[Enum.Material.Mud] = {
		ColorMap = "rbxassetid://8699744005",
		NormalMap = "rbxassetid://8699744717",
		RoughnessMap = "rbxassetid://8699745519",
	},
	[Enum.Material.Pavement] = {
		ColorMap = "rbxassetid://8699741126",
		NormalMap = "rbxassetid://8699741792",
		RoughnessMap = "rbxassetid://8699742402",
	},
	[Enum.Material.Pebble] = {
		ColorMap = "rbxassetid://8699707421",
		NormalMap = "rbxassetid://8699708413",
		RoughnessMap = "rbxassetid://8699709345",
	},
	[Enum.Material.Plastic] = {},
	[Enum.Material.Rock] = {
		ColorMap = "rbxassetid://8699729048",
		MetalnessMap = "rbxassetid://8207321622",
		NormalMap = "rbxassetid://8699729960",
		RoughnessMap = "rbxassetid://8699730636",
	},
	[Enum.Material.Salt] = {
		ColorMap = "rbxassetid://8699732244",
		NormalMap = "rbxassetid://8699733025",
		RoughnessMap = "rbxassetid://8699733755",
	},
	[Enum.Material.Sand] = {
		ColorMap = "rbxassetid://8699711248",
		NormalMap = "rbxassetid://8699712047",
		RoughnessMap = "rbxassetid://8699712757",
	},
	[Enum.Material.Sandstone] = {
		ColorMap = "rbxassetid://8699738611",
		NormalMap = "rbxassetid://8699739273",
		RoughnessMap = "rbxassetid://8699739720",
	},
	[Enum.Material.Slate] = {
		ColorMap = "rbxassetid://8699714522",
		NormalMap = "rbxassetid://8699715379",
		RoughnessMap = "rbxassetid://8699716497",
	},
	[Enum.Material.SmoothPlastic] = {},
	[Enum.Material.Snow] = {
		ColorMap = "rbxassetid://8699735283",
		NormalMap = "rbxassetid://8699736036",
		RoughnessMap = "rbxassetid://8699736853",
	},
	[Enum.Material.Wood] = {
		ColorMap = "rbxassetid://8207298915",
		MetalnessMap = "rbxassetid://7547190619",
		NormalMap = "rbxassetid://8207300071",
		RoughnessMap = "rbxassetid://8207300845",
	},
	[Enum.Material.WoodPlanks] = {
		ColorMap = "rbxassetid://8699718193",
		MetalnessMap = "rbxassetid://8207238349",
		NormalMap = "rbxassetid://8699718923",
		RoughnessMap = "rbxassetid://8699719485",
	},
}

local builtInMaterialVariants : _Types.Array<MaterialVariant> = {}

for _, material in ipairs(getSupportedMaterials()) do
	local materialVariant = Instance.new("MaterialVariant")

	materialVariant.Name = getMaterialName(material)
	materialVariant.BaseMaterial = material

	local textures = enumToTexture[material]
	if textures.ColorMap then
		materialVariant.ColorMap = textures.ColorMap
	end

	if textures.MetalnessMap then
		materialVariant.MetalnessMap = textures.MetalnessMap
	end

	if textures.NormalMap then
		materialVariant.NormalMap = textures.NormalMap
	end

	if textures.RoughnessMap then
		materialVariant.RoughnessMap = textures.RoughnessMap
	end

	table.insert(builtInMaterialVariants, materialVariant)
end

return function() : _Types.Array<MaterialVariant>
	return builtInMaterialVariants
end
