local Plugin = script.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

local getMaterialName = require(Plugin.Src.Resources.Constants.getMaterialName)

return function(material : _Types.Material, localization : any) : string
	local materialOrigin = if material.IsBuiltin then "Material" else "Variant"
	return localization:getText("Materials", getMaterialName(material.MaterialVariant.BaseMaterial) .. materialOrigin)
end
