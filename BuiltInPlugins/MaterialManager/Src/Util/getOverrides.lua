local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)
local filter = Framework.Dash.filter

local Constants = Plugin.Src.Resources.Constants
local getMaterialName = require(Constants.getMaterialName)

local Util = Plugin.Src.Util
local MapMaterials = require(Util.MapMaterials)

return function(currentOverride: string, category: _Types.Category, material: Enum.Material): (_Types.Array<string>, number)
	local materialIndex = 0
	local materials = {}
	local materialNames = {}
	MapMaterials(category, materials, function(materialWrapper)
		if materialWrapper.MaterialVariant and materialWrapper.Material == material then
			return materialWrapper.MaterialVariant.Name
		else
			return ""
		end
	end)

	table.insert(materials, getMaterialName(material))
	table.sort(materials)

	materials = filter(materials, function(name: string)
		if name == "" or materialNames[name] then
			return false
		end

		if not materialNames[currentOverride] then
			materialIndex += 1
		end

		materialNames[name] = true
		return true
	end)

	table.insert(materials, 1, "None")

	if currentOverride == "" or not materialNames[currentOverride] then
		return materials, 1
	end

	return materials, materialIndex + 1
end
