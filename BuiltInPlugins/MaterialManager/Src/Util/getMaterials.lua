local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local _Types = require(Plugin.Src.Types)

local filter = Framework.Dash.filter

local Constants = Plugin.Src.Resources.Constants
local getMaterialName = require(Constants.getMaterialName)
local getMaterialPath = require(Constants.getMaterialPath)

local Util = Plugin.Src.Util
local ContainsPath = require(Util.ContainsPath)
local DamerauLevenshteinDistance = require(Util.DamerauLevenshteinDistance)
local MapMaterials = require(Util.MapMaterials)

return function(category: _Types.Category, path: _Types.Path, search: string?)
	assert(category, "Tried to get materials for path which does not exist")

	local materials = {}

	MapMaterials(category, materials)

	local baseMaterials = filter(materials, function(material)
		return not material.MaterialVariant
	end)
	local variantMaterials = filter(materials, function(material)
		return material.MaterialVariant
	end)

	table.sort(baseMaterials, function(a, b)
		return getMaterialName(a.Material) < getMaterialName(b.Material)
	end)

	table.sort(variantMaterials, function(a, b)
		return a.MaterialVariant.Name < b.MaterialVariant.Name
	end)

	local variantMaterialsMap = {}

	for _, materialVariant in variantMaterials do
		if not variantMaterialsMap[materialVariant.Material] then
			variantMaterialsMap[materialVariant.Material] = {}
		end

		table.insert(variantMaterialsMap[materialVariant.Material], materialVariant)
	end

	local sortedMaterials = {}
	for _, baseMaterial in baseMaterials do
		table.insert(sortedMaterials, baseMaterial)

		if variantMaterialsMap[baseMaterial.Material] then
			for _, variantMaterial in variantMaterialsMap[baseMaterial.Material] do
				table.insert(sortedMaterials, variantMaterial)
			end
		end
	end

	materials = sortedMaterials

	if search and search ~= "" then
		local tolerance = 0
		search = string.lower(search)

		local function searchFilter(material)
			local name
			if material.MaterialVariant then
				name = string.lower(material.MaterialVariant.Name)
			else
				name = string.lower(getMaterialName(material.Material))
			end
			local findName = string.find(name, search) or DamerauLevenshteinDistance(name, search) == tolerance
			return findName and (#path == 0 or ContainsPath(path, getMaterialPath(material.Material)))
		end
		local filtered = filter(materials, searchFilter)

		if #filtered == 0 then
			tolerance = 1
			materials = filter(materials, searchFilter)
		else
			materials = filtered
		end
	else
		local function pathFilter(material)
			return #path == 0 or ContainsPath(path, getMaterialPath(material.Material))
		end

		materials = filter(materials, pathFilter)
	end

	return materials
end
