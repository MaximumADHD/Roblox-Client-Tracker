local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)

return Rodux.createReducer({
	assetsTable = {
		assets = {},
		assetPreviewData = {},
	},
	bulkImporterRunning = false,
	isFetchingAssets = false,
	searchTerm = "",
	selectedAssets = {},
	universeName = "",
}, {
	SetAssets = function(state, action)
		return Cryo.Dictionary.join(state, {
			assetsTable = Cryo.Dictionary.join(state.assetsTable, action.assetsTable),
		})
	end,

    SetBulkImporterRunning = function(state, action)
        return Cryo.Dictionary.join(state, {
			bulkImporterRunning = action.bulkImporterRunning,
		})
	end,

	SetIsFetchingAssets = function(state, action)
        return Cryo.Dictionary.join(state, {
			isFetchingAssets = action.isFetchingAssets,
		})
	end,

    SetSearchTerm = function(state, action)
		return Cryo.Dictionary.join(state, {
			searchTerm = action.searchTerm,
		})
	end,

	SetSelectedAssets = function(state, action)
		return Cryo.Dictionary.join(state, {
			selectedAssets = action.selectedAssets,
		})
	end,

	SetUniverseName = function(state, action)
		return Cryo.Dictionary.join(state, {
			universeName = action.universeName,
		})
	end,

	SetAssetPreviewData = function(state, action)
		return Cryo.Dictionary.join(state, {
			assetsTable = Cryo.Dictionary.join(state.assetsTable, {
				assetPreviewData = Cryo.Dictionary.join(state.assetsTable.assetPreviewData, action.assetPreviewData)
			})
		})
	end,

	SetAssetOwnerName = function(state, action)
		local newState = state
		newState.assetsTable.assetPreviewData[action.assetId].Creator.Name = action.username
		return newState
	end,

	SetRootTreeViewInstance = function(state, action)
		return Cryo.Dictionary.join(state,{
			assetsTable = Cryo.Dictionary.join(state.assetsTable, {
				assetPreviewData = Cryo.Dictionary.join(state.assetsTable.assetPreviewData, {
					[action.assetId] = Cryo.Dictionary.join(state.assetsTable.assetPreviewData[action.assetId], {
						rootTreeViewInstance = action.rootTreeViewInstance,
					})
				})
			})
		})
	end,
})