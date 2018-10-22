local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Core.Util.Constants)

local Category = require(Plugin.Core.Types.Category)
local Sort = require(Plugin.Core.Types.Sort)

return function(state, action)
	local defaultCategories = Category.CATEGORIES_WITHOUT_GROUPS
	local defaultSorts = Sort.SORT_OPTIONS

	return {
		categories = defaultCategories,
		categoryIndex = 1,
		category = defaultCategories[1].category,

		searchTerm = "",

		sorts = defaultSorts,
		sortIndex = 1,
		sortType = defaultSorts[1].sort,

		groups = {},
		groupIndex = 0,
		groupId = 0,

		page = 1,
		pageSize = Constants.GET_ITEMS_PAGE_SIZE,

		selectedBackgroundIndex = 1,
		hoveredBackgroundIndex = 0,
	}
end
