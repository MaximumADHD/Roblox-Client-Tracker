local Plugin = script.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

local getMaterialName = require(Plugin.Src.Resources.Constants.getMaterialName)

local Flags = Plugin.Src.Flags
local getFFlagMaterialManagerGlassNeonForceField = require(Flags.getFFlagMaterialManagerGlassNeonForceField)
local getFFlagMaterialManagerUIUXFixes = require(Flags.getFFlagMaterialManagerUIUXFixes)

return function(material: _Types.Material, localization: any): string
	local materialOrigin
	if getFFlagMaterialManagerGlassNeonForceField() then
		if getFFlagMaterialManagerUIUXFixes() then
			materialOrigin = if material.MaterialVariant then "Variant" else "Material"
		else
			materialOrigin = if material.MaterialVariant then "Material" else "Variant"
		end
	else
		materialOrigin = if material.IsBuiltin then "Material" else "Variant"
	end

	if getFFlagMaterialManagerGlassNeonForceField() then
		return localization:getText("Materials", getMaterialName(material.Material) .. materialOrigin)
	elseif material.MaterialVariant then
		return localization:getText("Materials", getMaterialName(material.MaterialVariant.BaseMaterial) .. materialOrigin)
	else
		-- Remove with the FFlagMaterialManagerGlassNeonForceField check, this is here due to Luau reasons
		assert("Material missing")
		return materialOrigin
	end
end
