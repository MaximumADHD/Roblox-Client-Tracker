local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local _Types = require(Plugin.Src.Types)

local filter = Framework.Dash.filter

local Util = Plugin.Src.Util
local MapMaterials = require(Util.MapMaterials)

local Flags = Plugin.Src.Flags
local getFFlagMaterialManagerVariantCreatorOverhaul = require(Flags.getFFlagMaterialManagerVariantCreatorOverhaul)

return function(category: _Types.Category, name: string, baseMaterial: Enum.Material): boolean
	local materials = {}
	MapMaterials(category, materials, function(material)
		return material.MaterialVariant and material.MaterialVariant.Name == name and material.Material == baseMaterial
	end)

	local filtered = filter(materials, function(material)
		return material ~= false
	end)
	if getFFlagMaterialManagerVariantCreatorOverhaul() then 
		return #filtered > 1 
	else 
		return #filtered ~= 0
	end
end
