local Plugin = script.Parent.Parent.Parent

local Category = require(Plugin.Core.Types.Category)

local Sort = {}

Sort.SORT_OPTIONS = {
	{name = "Relevance", sort = "Relevance"},
	{name = "Most Taken", sort = "MostTaken"},
	{name = "Favorites", sort = "Favorites"},
	{name = "Updated", sort = "Updated"},
	{name = "Ratings", sort = "Ratings"}
}

function Sort.canSort(searchTerm, categoryIndex)
	return searchTerm ~= "" and Category.categoryIsFreeAsset(categoryIndex)
end

return Sort
