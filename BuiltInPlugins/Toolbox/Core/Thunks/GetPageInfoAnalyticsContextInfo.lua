local Plugin = script.Parent.Parent.Parent

local PageInfoHelper = require(Plugin.Core.Util.PageInfoHelper)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)

return function()
	return function(store)
		local state = store:getState()
		local pageInfo = state.pageInfo or {}

		if DebugFlags.shouldDebugWarnings() and not pageInfo.searchId then
			warn("no searchId in pageInfo, analytics won't be tracked for asset")
		end

		return {
			category = "Studio",
			currentCategory = PageInfoHelper.getCategoryForPageInfo(pageInfo),
			page = pageInfo.targetPage,
			sort = PageInfoHelper.getSortTypeForPageInfo(pageInfo),
			searchId = pageInfo.searchId,
			searchKeyword = pageInfo.searchTerm,
			toolboxTab = PageInfoHelper.getCurrentTab(pageInfo),
			isTopKeyword = pageInfo.isTopKeyword,
		}
	end
end
