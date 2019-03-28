local Plugin = script.Parent.Parent.Parent

local Category = require(Plugin.Core.Types.Category)

local Sort = {}

Sort.SORT_OPTIONS = {
	{name = "Relevance", sort = "Relevance"},
	{name = "MostTaken", sort = "MostTaken"},
	{name = "Favorites", sort = "Favorites"},
	{name = "Updated", sort = "Updated"},
	{name = "Ratings", sort = "Ratings"}
}

local RELEVANCE_INDEX = 1
local UPDATED_INDEX = 4

function Sort.canSort(searchTerm, categoryIndex)
	return searchTerm ~= "" and Category.categoryIsFreeAsset(categoryIndex)
end

function Sort.getDefaultSortForCategory(categoryIndex)
	if Category.categoryIsPackage(categoryIndex) then
		return UPDATED_INDEX
	end
	return RELEVANCE_INDEX
end

function Sort.getDefaultSortForGroups()
	return RELEVANCE_INDEX
end

return Sort
