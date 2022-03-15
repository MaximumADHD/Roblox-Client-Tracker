local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

return function(material : _Types.Material, localization : any) : string
	local materialOrigin = if material.IsBuiltin then "Material" else "Variant"
	return localization:getText("MaterialTile", material.MaterialType .. materialOrigin)
end
