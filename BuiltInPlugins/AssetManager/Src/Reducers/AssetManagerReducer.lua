local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)

local View = require(Plugin.Src.Util.View)

local Framework = Plugin.Packages.Framework
local Util = require(Framework.Util)
local deepJoin = Util.deepJoin

local FFlagStudioAssetManagerAssetModeration = game:GetFastFlag("StudioAssetManagerAssetModeration")

return Rodux.createReducer({
	-- Contains table of assets, associated preview data, and next page/cursor
	assetsTable = {
		assets = {},
		assetPreviewData = {},
		assetModerationData = {},
		index = 0,
	},
	bulkImporterRunning = false,
	-- Contains list of assets that are currently editing keyed by id
	editingAssets = {},
	isFetchingAssets = false,
	recentAssets = {},
	recentViewToggled = false,
	searchTerm = "",
	-- Contains list of selected keyed by id
	selectedAssets = {},
	selectionIndex = 0,
	universeName = "",
	view = View.LIST,
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

	SetRecentAssets = function(state, action)
		return Cryo.Dictionary.join(state, {
			recentAssets = action.recentAssets,
		})
	end,

	SetRecentViewToggled = function(state, action)
		return Cryo.Dictionary.join(state, {
			recentViewToggled = action.recentViewToggled,
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

	SetView = function(state, action)
		return Cryo.Dictionary.join(state, {
			view = action.view,
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
		local newState = deepJoin(state, {
			assetsTable = {
				assetPreviewData = {
					[action.assetId] = {
						Creator = {
							Name = action.username,
						}
					}
				}
			}
		})
		return newState
	end,

	SetRootTreeViewInstance = function(state, action)
		local newState = deepJoin(state, {
			assetsTable = {
				assetPreviewData = {
					[action.assetId] = {
						rootTreeViewInstance = action.rootTreeViewInstance,
					}
				}
			}
		})
		return newState
	end,

	SetHasLinkedScripts = function(state, action)
		return Cryo.Dictionary.join(state, {
			hasLinkedScripts = action.hasLinkedScripts,
		})
	end,

	SetAssetFavorited = function(state, action)
		local newState = deepJoin(state, {
			assetsTable = {
				assetPreviewData = {
					[action.assetId] = {
						favorited = action.isAssetFavorited,
					}
				}
			}
		})
		return newState
	end,

	SetAssetFavoriteCount = function(state, action)
		local newState = deepJoin(state, {
			assetsTable = {
				assetPreviewData = {
					[action.assetId] = {
						favoriteCount = action.favoriteCount,
					}
				}
			}
		})
		return newState
	end,

	IncrementAssetFavoriteCount = function(state, action)
		local asset = state.assetsTable.assetPreviewData[action.assetId]
		local newAssetPreviewData
		if asset then
			newAssetPreviewData = {
				[action.assetId] = Cryo.Dictionary.join(state.assetsTable.assetPreviewData[action.assetId], {
					favoriteCount = asset.favoriteCount + action.incrementCount,
				})
			}
		else
			newAssetPreviewData = {
				[action.assetId] = {
					favoriteCount = action.incrementCount,
				}
			}
		end
		local newState = deepJoin(state, {
			assetsTable = {
				assetPreviewData = newAssetPreviewData
			}
		})
		return newState
	end,

	SetAssetModerationData = FFlagStudioAssetManagerAssetModeration and function(state, action)
		return Cryo.Dictionary.join(state, {
			assetsTable = Cryo.Dictionary.join(state.assetsTable, {
				assetModerationData = Cryo.Dictionary.join(state.assetsTable.assetModerationData, action.assetModerationData)
			})
		})
	end or nil,
})