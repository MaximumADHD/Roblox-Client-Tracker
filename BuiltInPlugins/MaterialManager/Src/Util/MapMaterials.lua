local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

export type T = any

local function mapMaterials(category: _Types.Category, array: _Types.Array<T>, map: ((material: _Types.Material) -> T)?)
	for _, material in ipairs(category.Materials) do
		table.insert(array, if map then map(material) else material)
	end

	for _, categoryName in ipairs(category.CategoryNames) do
		mapMaterials(category.Categories[categoryName], array, map)
	end
end

return mapMaterials
