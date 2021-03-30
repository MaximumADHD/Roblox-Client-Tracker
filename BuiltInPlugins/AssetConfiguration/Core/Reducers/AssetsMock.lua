local FFlagToolboxMarkLoadingInitially = game:GetFastFlag("ToolboxMarkLoadingInitially")
local Plugin = script.Parent.Parent.Parent

local PagedRequestCursor = require(Plugin.Core.Util.PagedRequestCursor)

return function(state, action)
	return {
		idToAssetMap = {},
		idsToRender = {},
		isLoading = FFlagToolboxMarkLoadingInitially,
		currentCursor = PagedRequestCursor.createDefaultCursor(),

		totalAssets = 0,
		assetsReceived = 0,
		hasReachedBottom = false,

		manageableAssets = {},
	}
end
