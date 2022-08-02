local Plugin = script.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

local getMaterialName = require(Plugin.Src.Resources.Constants.getMaterialName)

return function(material: _Types.Material, localization: any): string
	local materialOrigin = if material.MaterialVariant then "Variant" else "Material"
	return localization:getText("Materials", getMaterialName(material.Material) .. materialOrigin)
end
