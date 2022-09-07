local FFlagToolboxAddVerifiedCreatorToAnalytics = game:GetFastFlag("ToolboxAddVerifiedCreatorToAnalytics")

local Plugin = script.Parent.Parent.Parent

local Util = Plugin.Core.Util
local Analytics = require(Util.Analytics.Analytics)
local AnalyticsTypes = require(Plugin.Core.Types.AnalyticsTypes)
local DebugFlags = require(Util.DebugFlags)
local PageInfoHelper = require(Util.PageInfoHelper)

local UpdateLastLoggedSearchId = require(Plugin.Core.Actions.UpdateLastLoggedSearchId)

local Category = require(Plugin.Core.Types.Category)

if not FFlagToolboxAddVerifiedCreatorToAnalytics then
	local LogMarketplaceSearchAnalytics_DEPRECATED = require(Plugin.Core.Thunks.LogMarketplaceSearchAnalytics_DEPRECATED)
	return LogMarketplaceSearchAnalytics_DEPRECATED
end

return function(keyword: string, isTopKeyword: boolean?)
	return function(store)
		local state = store:getState()
		local pageInfo = state.pageInfo

		local toolboxTab = PageInfoHelper.getCurrentTab(pageInfo)
		local sort = PageInfoHelper.getSortTypeForPageInfo(pageInfo)
		local creator = pageInfo.creator
		local creatorID = creator and creator.Id or nil
		local searchId = pageInfo.searchId or ""
		local categoryName = pageInfo.categoryName
		local includeUnverifiedCreators = pageInfo.includeUnverifiedCreators
		local assetType = Category.getEngineAssetType(Category.getCategoryByName(categoryName).assetType)

		if assetType == Enum.AssetType.Decal then
			assetType = Enum.AssetType.Image
		end
		local assetTypeName = string.lower(assetType.Name)
	
		local lastLoggedSearchId = pageInfo.lastLoggedSearchId
		if lastLoggedSearchId == searchId then
			if DebugFlags.shouldDebugWarnings() then
				warn("SearchId was already logged for ", lastLoggedSearchId)
			end
			return
		end

		local searchInfo: AnalyticsTypes.SearchInfo = {
			assetType = assetTypeName,
			categoryName = categoryName,
			creatorID = creatorID,
			searchId = searchId,
			sort = sort,
			toolboxTab = toolboxTab,
			includeOnlyVerifiedCreators = not includeUnverifiedCreators,
		}

		Analytics.marketplaceSearch(
			keyword,
			isTopKeyword or false,
			searchInfo
		)

		store:dispatch(UpdateLastLoggedSearchId(searchId))
	end
end
