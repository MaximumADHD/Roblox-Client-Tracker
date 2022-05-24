local Plugin = script.Parent.Parent.Parent.Parent

local Constants = Plugin.Src.Resources.Constants
local getSupportedMaterials = require(Constants.getSupportedMaterials)
local getMaterialName = require(Constants.getMaterialName)

local _Types = require(Plugin.Src.Types)

local enumToTexture = {
	[Enum.Material.Asphalt] = {
		ColorMap = "rbxassetid://7547349715",
		NormalMap = "rbxassetid://7547350415",
		RoughnessMap = "rbxassetid://7551984908",
	},
	[Enum.Material.Basalt] = {
		ColorMap = "rbxassetid://7551975939",
		NormalMap = "rbxassetid://7547348152",
		RoughnessMap = "rbxassetid://7551977581",
	},
	[Enum.Material.Concrete] = {
		ColorMap = "rbxassetid://7547196561",
		NormalMap = "rbxassetid://7547337919",
		RoughnessMap = "rbxassetid://7547197958",
	},
	[Enum.Material.CrackedLava] = {
		ColorMap = "rbxassetid://7551980711",
		NormalMap = "rbxassetid://7547320674",
		RoughnessMap = "rbxassetid://7551982079",
	},
	[Enum.Material.Glacier] = {
		ColorMap = "rbxassetid://7547646888",
		NormalMap = "rbxassetid://7551930815",
		RoughnessMap = "rbxassetid://7551932698",
	},
	[Enum.Material.Ground] = {
		ColorMap = "rbxassetid://7547348623",
		NormalMap = "rbxassetid://7547348887",
		RoughnessMap = "rbxassetid://7547349016",
	},
	[Enum.Material.LeafyGrass] = {
		ColorMap = "rbxassetid://7546663659",
		NormalMap = "rbxassetid://7546664288",
		RoughnessMap = "rbxassetid://7546664614",
	},
	[Enum.Material.Limestone] = {
		ColorMap = "rbxassetid://7547206319",
		NormalMap = "rbxassetid://7547670319",
		RoughnessMap = "rbxassetid://7547671387",
	},
	[Enum.Material.Mud] = {
		ColorMap = "rbxassetid://7551972606",
		NormalMap = "rbxassetid://7552022188",
		RoughnessMap = "rbxassetid://7552023936",
	},
	[Enum.Material.Pavement] = {
		ColorMap = "rbxassetid://7547678151",
		NormalMap = "rbxassetid://7547207799",
		RoughnessMap = "rbxassetid://7547207869",
	},
	[Enum.Material.Rock] = {
		ColorMap = "rbxassetid://7546659890",
		NormalMap = "rbxassetid://7546660701",
		RoughnessMap = "rbxassetid://7547643804",
	},
	[Enum.Material.Salt] = {
		ColorMap = "rbxassetid://7546666647",
		NormalMap = "rbxassetid://7547660879",
		RoughnessMap = "rbxassetid://7547661939",
	},
	[Enum.Material.Sandstone] = {
		ColorMap = "rbxassetid://7547202858",
		NormalMap = "rbxassetid://7547204511",
		RoughnessMap = "rbxassetid://7551954003",
	},
	[Enum.Material.Slate] = {
		ColorMap = "rbxassetid://7547309616",
		NormalMap = "rbxassetid://7546656859",
		RoughnessMap = "rbxassetid://7547626537",
	},
	[Enum.Material.Snow] = {
		ColorMap = "rbxassetid://7547315875",
		NormalMap = "rbxassetid://7547201338",
		RoughnessMap = "rbxassetid://7547316776",
	}
}

local builtInMaterialVariants : _Types.Array<MaterialVariant> = {}

for _, material in ipairs(getSupportedMaterials()) do
	local materialVariant = Instance.new("MaterialVariant")

	materialVariant.Name = getMaterialName(material)
	materialVariant.BaseMaterial = material

	local textures = enumToTexture[material]

	if textures then
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
	end

	table.insert(builtInMaterialVariants, materialVariant)
end

return function() : _Types.Array<MaterialVariant>
	return builtInMaterialVariants
end
