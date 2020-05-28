local Plugin = script.Parent.Parent.Parent

local deepEqual = require(Plugin.Libs.Framework.Util.deepEqual)

local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local AssetConfigConstants = require(Plugin.Core.Util.AssetConfigConstants)
local Category = require(Plugin.Core.Types.Category)

local FFlagUseCategoryNameInToolbox = game:GetFastFlag("UseCategoryNameInToolbox")

local PageInfoHelper = {}

if FFlagUseCategoryNameInToolbox then

	function PageInfoHelper.getCategory(categoryName)
		local category = Category.getCategoryByName(categoryName)

		if not category or not category.category then
			if DebugFlags.shouldDebugWarnings() then
				warn(("Lua toolbox: No category for category name %s"):format(tostring(categoryName)))
			end
			return ""
		end

		return category.category
	end

	function PageInfoHelper.getCategoryForPageInfo(pageInfo)
		return PageInfoHelper.getCategory(pageInfo.categoryName)
	end

else

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
	local category = FFlagUseCategoryNameInToolbox
		and Category.getCategoryByName(pageInfo.categoryName)
		or pageInfo.categories[pageInfo.categoryIndex]

	if not category or not category.assetType then
		if DebugFlags.shouldDebugWarnings() then
			if FFlagUseCategoryNameInToolbox then
				warn(("Lua toolbox: No assetType for category name %s"):format(tostring(pageInfo.categoryName)))
			else
				warn(("Lua toolbox: No assetType for category index %s"):format(tostring(pageInfo.categoryIndex)))
			end
		end
		return nil
	end

	return Category.getEngineAssetType(category.assetType)
end

function PageInfoHelper.getBackendNameForPageInfoCategory(pageInfo)
	local engineAssetType = PageInfoHelper.getEngineAssetTypeForPageInfoCategory(pageInfo)
	return engineAssetType and engineAssetType.Name or nil
end

function PageInfoHelper.isDeveloperCategory(pageInfo)
	local currentCategory = PageInfoHelper.getCategoryForPageInfo(pageInfo)
	return AssetConfigConstants.developCategoryType[currentCategory]
end

function PageInfoHelper.isPackagesCategory(pageInfo)
	local currentCategory = PageInfoHelper.getCategoryForPageInfo(pageInfo)
	return AssetConfigConstants.packagesCategoryType[currentCategory]
end

--[[
	This is useful for checking whether pageInfo has been changed while a request was in flight.
]]
function PageInfoHelper.isPageInfoStale(pageInfo, store)
	local newPageInfo = store:getState().pageInfo
	return not deepEqual(pageInfo, newPageInfo)
end

return PageInfoHelper
