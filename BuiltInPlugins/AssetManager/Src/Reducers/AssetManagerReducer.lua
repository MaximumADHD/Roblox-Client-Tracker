local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)

return Rodux.createReducer({
	-- Contains table of assets, associated preview data, and next page/cursor
	assetsTable = {
		assets = {},
		assetPreviewData = {},
		index = 0,
	},
	bulkImporterRunning = false,
	-- Contains list of assets that are currently editing keyed by id
	editingAssets = {},
	isFetchingAssets = false,
	searchTerm = "",
	-- Contains list of selected keyed by id
	selectedAssets = {},
	selectionIndex = 0,
	universeName = "",
	-- only show the scripts folder if the place has linked scripts because linked scripts are deprecated.
	hasLinkedScripts = false,
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

	SetEditingAssets = function(state, action)
		return Cryo.Dictionary.join(state, {
			editingAssets = action.editingAssets,
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

	SetSelectionIndex = function(state, action)
		return Cryo.Dictionary.join(state, {
			selectionIndex = action.selectionIndex,
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
		if newState.assetsTable.assetPreviewData[action.assetId] == nil then
			newState.assetsTable.assetPreviewData[action.assetId] = {
				Creator = {}
			}
		end
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

	SetHasLinkedScripts = function(state, action)
		return Cryo.Dictionary.join(state, {
			hasLinkedScripts = action.hasLinkedScripts,
		})
	end,

	SetAssetFavorited = function(state, action)
		return Cryo.Dictionary.join(state,{
			assetsTable = Cryo.Dictionary.join(state.assetsTable, {
				assetPreviewData = Cryo.Dictionary.join(state.assetsTable.assetPreviewData, {
					[action.assetId] = Cryo.Dictionary.join(state.assetsTable.assetPreviewData[action.assetId], {
						favorited = action.isAssetFavorited,
					})
				})
			})
		})
	end,

	SetAssetFavoriteCount = function(state, action)
		return Cryo.Dictionary.join(state,{
			assetsTable = Cryo.Dictionary.join(state.assetsTable, {
				assetPreviewData = Cryo.Dictionary.join(state.assetsTable.assetPreviewData, {
					[action.assetId] = Cryo.Dictionary.join(state.assetsTable.assetPreviewData[action.assetId], {
						favoriteCount = action.favoriteCount,
					})
				})
			})
		})
	end,
})