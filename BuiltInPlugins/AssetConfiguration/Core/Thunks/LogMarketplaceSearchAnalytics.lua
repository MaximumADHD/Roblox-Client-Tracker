local Plugin = script.Parent.Parent.Parent

local Util = Plugin.Core.Util
local Analytics = require(Util.Analytics.Analytics)
local AnalyticsTypes = require(Plugin.Core.Types.AnalyticsTypes)
local PageInfoHelper = require(Util.PageInfoHelper)

return function(keyword, assetType, prefix, keyCount, delCount, autocompleteShown)
	return function(store)
        local state = store:getState()

        local pageInfo = state.pageInfo

        local toolboxTab = PageInfoHelper.getCurrentTab(pageInfo)
        local sort = PageInfoHelper.getSortTypeForPageInfo(pageInfo)
        local creator = pageInfo.creator
        local creatorID = creator and creator.Id or nil
        local searchId = pageInfo.searchId or ""

        local searchInfo: AnalyticsTypes.SearchInfo = {
            assetType = assetType,
            creatorID = creatorID,
            searchId = searchId,
            sort = sort,
            toolboxTab = toolboxTab,
        }

        Analytics.marketplaceSearch(
            keyword,
            prefix,
            keyCount,
            delCount,
            autocompleteShown,
            searchInfo
        )
	end
end
