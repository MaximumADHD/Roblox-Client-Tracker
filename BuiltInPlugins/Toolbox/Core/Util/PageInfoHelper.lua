local Plugin = script.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local Category = require(Plugin.Core.Types.Category)

local PageInfoHelper = {}

function PageInfoHelper.getCategory(categories, index)
	local category = categories[index]

	if not category or not category.category then
		if DebugFlags.shouldDebugWarnings() then
			warn(("Lua toolbox: No category for category index %s"):format(tostring(index)))
		end
		return ""
	end

	return category.category
end

function PageInfoHelper.getCategoryForPageInfo(pageInfo)
	return PageInfoHelper.getCategory(pageInfo.categories, pageInfo.categoryIndex)
end

function PageInfoHelper.getSortType(sorts, index)
	if not (sorts and index) then return nil end
	local sort = sorts[index]

	if not sort or not sort.sort then
		if DebugFlags.shouldDebugWarnings() then
			warn(("Lua Toolbox: no sort for sort index %s"):format(tostring(index)))
		end
		return ""
	end

	return sort.sort
end

function PageInfoHelper.getSortTypeForPageInfo(pageInfo)
	return PageInfoHelper.getSortType(pageInfo.sorts, pageInfo.sortIndex)
end

function PageInfoHelper.getGroupId(groups, index)
	if index == 0 then
		return 0
	end

	if index < 1 or index > #groups or not groups[index].id then
		if DebugFlags.shouldDebugWarnings() then
			warn(("Lua Toolbox: no group for group index %s"):format(tostring(index)))
		end
		return 0
	end

	return groups[index].id
end

function PageInfoHelper.getGroupIdForPageInfo(pageInfo)
	return PageInfoHelper.getGroupId(pageInfo.groups, pageInfo.groupIndex)
end

function PageInfoHelper.getEngineAssetTypeForPageInfoCategory(pageInfo)
	local category = pageInfo.categories[pageInfo.categoryIndex]

	if not category or not category.assetType then
		if DebugFlags.shouldDebugWarnings() then
			warn(("Lua toolbox: No assetType for category index %s"):format(tostring(pageInfo.categoryIndex)))
		end
		return nil
	end

	return Category.getEngineAssetType(category.assetType)
end

function PageInfoHelper.getBackendNameForPageInfoCategory(pageInfo)
	local category = pageInfo.categories[pageInfo.categoryIndex]

	if not category or not category.assetType then
		if DebugFlags.shouldDebugWarnings() then
			warn(("Lua toolbox: No assetType for category index %s"):format(tostring(pageInfo.categoryIndex)))
		end
		return nil
	end

	return Category.getBackendNameForAssetTypeEnd(Category.getEngineAssetType(category.assetType))
end

return PageInfoHelper
