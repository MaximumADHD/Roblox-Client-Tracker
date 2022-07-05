local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

local Util = Plugin.Src.Util
local CopyPath = require(Util.CopyPath)

local function recurseCategories(categoriesSource: _Types.Category, categoriesPath: _Types.Path, localization)
	local categoriesTarget = {}

	for _, name in ipairs(categoriesSource.CategoryNames) do
		local category = categoriesSource.Categories[name]
		local localizedName = if category.Builtin then localization:getText("Categories", name) else name
		local path = CopyPath(categoriesPath)
		table.insert(path, name)

		if #category.CategoryNames > 0 then
			table.insert(categoriesTarget, {
				children = recurseCategories(category, path, localization),
				path = path,
				text = localizedName,
			})
		else
			table.insert(categoriesTarget, {
				path = path,
				text = localizedName,
			})
		end
	end

	return categoriesTarget
end

return function(categoriesSource: _Types.Category, localization)
	local categories = recurseCategories(categoriesSource, {}, localization)

	return categories
end
