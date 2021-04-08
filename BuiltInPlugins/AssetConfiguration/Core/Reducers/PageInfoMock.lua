local Plugin = script.Parent.Parent.Parent

local Category = require(Plugin.Core.Types.Category)
local Sort = require(Plugin.Core.Types.Sort)

local defaultSorts = Sort.SORT_OPTIONS
local defaultCategories = Category.MARKETPLACE

return function(state, action)
	return {
		categories = defaultCategories,
		category = defaultCategories[1].category,
		categoryName = defaultCategories[1].name,

		searchTerm = "",

		sorts = defaultSorts,
		sortIndex = 1,
		sortType = defaultSorts[1].sort,

		groups = {},
		groupIndex = 0,
		groupId = 0,

		targetPage = 1,
		curentPage = 0,

		selectedBackgroundIndex = 1,
		hoveredBackgroundIndex = 0,
	}
end
