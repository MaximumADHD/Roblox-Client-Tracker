local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local _Types = require(Plugin.Src.Types)

local filter = Framework.Dash.filter

local Flags = Plugin.Src.Flags
local getFFlagMaterialManagerGlassNeonForceField = require(Flags.getFFlagMaterialManagerGlassNeonForceField)

local Util = Plugin.Src.Util
local MapMaterials = require(Util.MapMaterials)

return function(category: _Types.Category, name: string, baseMaterial: Enum.Material): boolean
	local materials = {}

	if getFFlagMaterialManagerGlassNeonForceField() then
		MapMaterials(category, materials, function(material)
			return material.MaterialVariant and material.MaterialVariant.Name == name and material.Material == baseMaterial
		end)
	else
		MapMaterials(category, materials, function(material)
			return material.MaterialVariant.Name == name and material.MaterialVariant.BaseMaterial == baseMaterial and not material.IsBuiltin
		end)
	end

	local filtered = filter(materials, function(material)
		return material ~= false
	end)
	return #filtered ~= 0
end
