local FFlagEnableDefaultSortFix2 = game:GetFastFlag("EnableDefaultSortFix2")
local FFlagUseCategoryNameInToolbox = game:GetFastFlag("UseCategoryNameInToolbox")

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

if FFlagUseCategoryNameInToolbox then
	function Sort.canSort(searchTerm, categoryName)
		return searchTerm ~= "" and Category.categoryIsFreeAsset(categoryName)
	end

	function Sort.getDefaultSortForCategory(categoryName)
		if Category.categoryIsPackage(categoryName) then
			return UPDATED_INDEX
		end
		return RELEVANCE_INDEX
	end
else
	function Sort.canSort(searchTerm, categoryIndex)
		return searchTerm ~= "" and Category.categoryIsFreeAsset(categoryIndex)
	end

	function Sort.getDefaultSortForCategory(currentTab, categoryIndex)
		if Category.categoryIsPackage(categoryIndex, currentTab) then
			return UPDATED_INDEX
		end
		return RELEVANCE_INDEX
	end
end

--[[
	Use the category index to determine the sort because Group Packages are sorted by "updated"
	but other Group Categories (Audio, Meshes, Models, etc) are sorted by Relevance.
]]
function Sort.getDefaultSortForGroups(pageInfo)
	if FFlagUseCategoryNameInToolbox then
		return Sort.getDefaultSortForCategory(pageInfo.categoryName)
	else
		return Sort.getDefaultSortForCategory(
			FFlagEnableDefaultSortFix2 and pageInfo.currentTab or nil,
			pageInfo.categoryIndex
		)
	end
end

return Sort
