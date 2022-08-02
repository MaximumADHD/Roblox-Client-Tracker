local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local _Types = require(Plugin.Src.Types)

local filter = Framework.Dash.filter

local Util = Plugin.Src.Util
local MapMaterials = require(Util.MapMaterials)

return function(category: _Types.Category, name: string, baseMaterial: Enum.Material): boolean
	local materials = {}
	MapMaterials(category, materials, function(material)
		return material.MaterialVariant and material.MaterialVariant.Name == name and material.Material == baseMaterial
	end)

	local filtered = filter(materials, function(material)
		return material ~= false
	end)
	return #filtered ~= 0
end
