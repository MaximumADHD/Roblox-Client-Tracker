local FFlagToolboxAssetGridRefactor4 = game:GetFastFlag("ToolboxAssetGridRefactor4")

local Plugin = script.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
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
local ClearPreview = require(Actions.ClearPreview)
local SetCanManageAsset = require(Actions.SetCanManageAsset)
local SetPluginData = require(Actions.SetPluginData)
local SetMostRecentAssetInsertTime = require(Actions.SetMostRecentAssetInsertTime)

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
		local index = #newIdsToRender + 1

		if newIdToAssetMap[id] ~= nil then
			continue
		end

		if asset.Context then
			asset.Context.pagePosition = index
			asset.Context.position = (state.assetsReceived or 0) + index
		end

		newIdToAssetMap[id] = Cryo.Dictionary.join(asset, removeVoting)
		newIdsToRender[index] = id
	end

	-- Use math.max because sometimes the endpoint returns TotalAssets = 0 even if there results
	local newTotalAssets = math.max(state.totalAssets or 0, totalAssets or 0)
	local newAssetsReceived = (state.assetsReceived or 0) + #newIdsToRender
	local newHasReachedBottom = false
	if newCursor then
		newHasReachedBottom = not PagedRequestCursor.isNextPageAvailable(newCursor)
	else
		local haveAllAssets = newAssetsReceived >= newTotalAssets and #assets == 0

		newHasReachedBottom = state.hasReachedBottom or haveAllAssets or (#newIdsToRender == 0 and newTotalAssets > 0)
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
	isLoading = true,

	totalAssets = 0,
	assetsReceived = 0,
	hasReachedBottom = false,
	currentCursor = PagedRequestCursor.createDefaultCursor(),

	previewModel = nil,
	previewAssetId = nil,
	isPreviewing = false,

	mostRecentAssetInsertTime = FFlagToolboxAssetGridRefactor4 and 0 or nil,
	manageableAssets = {},
	-- Will be used to fetch versionId to install the latest plugin.
	previewPluginData = nil,
}, {
	[ClearAssets.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			idsToRender = {},
			totalAssets = 0,
			assetsReceived = 0,
			hasReachedBottom = false,
			currentCursor = PagedRequestCursor.createDefaultCursor(),
			manageableAssets = {},
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
			isPreviewing = action.isPreviewing,
			previewAssetId = FFlagToolboxAssetGridRefactor4 and action.previewAssetId or nil,
		})
	end,

	[SetPreviewModel.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			previewModel = action.previewModel,
		})
	end,

	[ClearPreview.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			previewModel = Cryo.None,
			previewPluginData = Cryo.None,
		})
	end,

	[SetCanManageAsset.name] = function(state, action)
		local canManage = action.canManage
		local assetId = action.assetId
		local manageableAssets = Cryo.Dictionary.join(state.manageableAssets, {
			[tostring(assetId)] = canManage,
		})
		return Cryo.Dictionary.join(state, {
			manageableAssets = manageableAssets,
		})
	end,

	-- We care about only the plugin that in preview, so no need to cache the data.
	[SetPluginData.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			previewPluginData = action.pluginData,
		})
	end,

	[SetMostRecentAssetInsertTime.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			mostRecentAssetInsertTime = action.mostRecentAssetInsertTime,
		})
	end,
})
