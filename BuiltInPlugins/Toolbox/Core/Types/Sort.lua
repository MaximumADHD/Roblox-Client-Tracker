local Plugin = script.Parent.Parent.Parent

local Category = require(Plugin.Core.Types.Category)

local Sort = {}

Sort.SORT_OPTIONS = {
	{ name = "Relevance", sort = "Relevance" },
	{ name = "MostTaken", sort = "MostTaken" },
	{ name = "Favorites", sort = "Favorites" },
	{ name = "Updated", sort = "Updated" },
	{ name = "Ratings", sort = "Ratings" },
}

local RELEVANCE_INDEX = 1
local UPDATED_INDEX = 4

function Sort.canSort(searchTerm, categoryName)
	return searchTerm ~= "" and Category.categoryIsFreeAsset(categoryName)
end

function Sort.getDefaultSortForCategory(categoryName)
	if Category.categoryIsPackage(categoryName) then
		return UPDATED_INDEX
	end
	return RELEVANCE_INDEX
end

function Sort.getDefaultSortNameForCategory(categoryName)
	return Sort.SORT_OPTIONS[Sort.getDefaultSortForCategory(categoryName)]
end

--[[
	Use the category index to determine the sort because Group Packages are sorted by "updated"
	but other Group Categories (Audio, Meshes, Models, etc) are sorted by Relevance.
]]
function Sort.getDefaultSortForGroups(pageInfo)
	return Sort.getDefaultSortForCategory(pageInfo.categoryName)
end

return Sort
