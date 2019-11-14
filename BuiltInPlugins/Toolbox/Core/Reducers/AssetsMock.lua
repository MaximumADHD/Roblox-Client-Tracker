return function(state, action)
	return {
		idToAssetMap = {},
		idsToRender = {},
		isLoading = false,

		totalAssets = 0,
		assetsReceived = 0,
		hasReachedBottom = false,

		manageableAssets = {},
	}
end
