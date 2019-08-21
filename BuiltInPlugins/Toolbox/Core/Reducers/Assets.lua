local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)
local Rodux = require(Libs.Rodux)

local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local PagedRequestCursor = require(Plugin.Core.Util.PagedRequestCursor)

local Actions = Plugin.Core.Actions
local ClearAssets = require(Actions.ClearAssets)
local GetAssets = require(Actions.GetAssets)
local SetLoading = require(Actions.SetLoading)
local SetCachedCreatorInfo = require(Actions.SetCachedCreatorInfo)
local SetAssetPreview = require(Actions.SetAssetPreview)
local SetPreviewModel = require(Actions.SetPreviewModel)
local SetVersionHistoryData = require(Actions.SetVersionHistoryData)
local SetAssetConfigData = require(Actions.SetAssetConfigData)
local ClearPreview = require(Actions.ClearPreview)
local SetAssetVersionId = require(Actions.SetAssetVersionId)

local function handleAssetsAddedToState(state, assets, totalAssets, newCursor)
	if not assets then
		if DebugFlags.shouldDebugWarnings() then
			warn("Lua Toolbox: handleAssetsAddedToState() got assets = nil")
		end
		return state
	end

	local newIdToAssetMap = {}
	local newIdsToRender = {}

	local removeVoting = {
		Voting = Cryo.None,
	}

	for _, asset in ipairs(assets) do
		local id = asset.Asset.Id

		newIdToAssetMap[id] = Cryo.Dictionary.join(asset, removeVoting)
		newIdsToRender[#newIdsToRender + 1] = id
	end

	-- Use math.max because sometimes the endpoint returns TotalAssets = 0 even if there results
	local newTotalAssets = math.max(state.totalAssets or 0, totalAssets or 0)
	local newAssetsReceived = (state.assetsReceived or 0) + #newIdsToRender
	local newHasReachedBottom = false
	if newCursor then
		newHasReachedBottom = not PagedRequestCursor.isNextPageAvailable(newCursor)
	else
		newHasReachedBottom = state.hasReachedBottom or (newAssetsReceived >= newTotalAssets) or (#newIdsToRender == 0 and newTotalAssets > 0)
	end

	return Cryo.Dictionary.join(state, {
		idToAssetMap = Cryo.Dictionary.join(state.idToAssetMap or {}, newIdToAssetMap),
		idsToRender = Cryo.List.join(state.idsToRender or {}, newIdsToRender),

		totalAssets = newTotalAssets,
		assetsReceived = newAssetsReceived,
		hasReachedBottom = newHasReachedBottom,
		currentCursor = newCursor or PagedRequestCursor.createDefaultCursor(),
	})
end

return Rodux.createReducer({
	idToAssetMap = {},
	idsToRender = {},
	isLoading = false,

	totalAssets = 0,
	assetsReceived = 0,
	hasReachedBottom = false,
	currentCursor = PagedRequestCursor.createDefaultCursor(),

	previewModel = nil,
	isPreviewing = false,
}, {
	[ClearAssets.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			idsToRender = {},
			totalAssets = 0,
			assetsReceived = 0,
			hasReachedBottom = false,
			currentCursor = PagedRequestCursor.createDefaultCursor(),
		})
	end,

	[SetLoading.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isLoading = action.isLoading,
		})
	end,

	[SetCachedCreatorInfo.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			cachedCreatorInfo = action.cachedCreatorInfo,
		})
	end,

	[GetAssets.name] = function(state, action)
		return handleAssetsAddedToState(state, action.assets, action.totalResults, action.cursor)
	end,

	[SetAssetPreview.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isPreviewing = action.isPreviewing
		})
	end,

	[SetPreviewModel.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			previewModel = action.previewModel
		})
	end,

	[ClearPreview.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			previewModel = Cryo.None,
			assetVersionId = Cryo.None
		})
	end,

	[SetAssetVersionId.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			assetVersionId = action.assetVersionId
		})
	end
})
