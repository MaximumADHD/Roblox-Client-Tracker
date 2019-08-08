local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Core.Util.Constants)

local Category = require(Plugin.Core.Types.Category)
local Sort = require(Plugin.Core.Types.Sort)

local FFlagStudioMarketplaceTabsEnabled = settings():GetFFlag("StudioMarketplaceTabsEnabled")

local defaultTab = Category.MARKETPLACE_KEY
local defaultSorts = Sort.SORT_OPTIONS
local defaultCategories = FFlagStudioMarketplaceTabsEnabled and Category.MARKETPLACE or Category.CATEGORIES_WITHOUT_GROUPS

return function(state, action)
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

		currentTab = defaultTab,

		page = 1,
		pageSize = Constants.GET_ITEMS_PAGE_SIZE,

		selectedBackgroundIndex = 1,
		hoveredBackgroundIndex = 0,
	}
end
