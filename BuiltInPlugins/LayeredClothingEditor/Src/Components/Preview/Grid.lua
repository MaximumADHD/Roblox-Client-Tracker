--[[
	Shows the Preview Panel grid

	Required Props:
		table Localization: A Localization ContextItem, which is provided via withContext.
		table API: Roblox API from Devframework for calling end points
		table PrebuiltAssetsInfo: from the rodux state, info about each prebuilt asset (name/description etc)
		callback GetPrebuiltAssetsInfo: function provided via dispatch to get name/description etc info for prebuilt assets
		callback UpdatePreviewAssetsSelected: function provided via dispatch to add/remove an asset from the selected assets
		string SelectedTab: the preview tab selection (this is an entry from PreviewConstants.TABS_KEYS)
		table SelectedAssets: which assets are selected in the grid, which is provided via mapStateToProps.
		Plugin Plugin: A Plugin ContextItem, which is provided via withContext.
		table UserAddedAssets: the table of assets added by the user
		callback UpdateUserAddedAssets: function called when user added assets are changed

	Optional Props:
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		number layoutOrder: render order of component in layout
		number zIndex: the z sorting order of the component
		Instance EditingItem: layered clothes item that is editing now, which is provided via mapStateToProps.
		table EditingItemContext: An EditingItemContext, which is provided via withContext.
		table AssetServiceWrapper: An AssetServiceWrapper context item, provided via withContext.
]]

local FFlagEnablePreviewTiles = game:GetFastFlag("EnablePreviewTiles")

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Cryo = require(Plugin.Packages.Cryo)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local Components = AvatarToolsShared.Components
local ScrollableGrid = Components.ScrollableGrid
local AssetThumbnailTiles = Components.AssetThumbnailTiles

local AccessoryAndBodyToolSharedUtil = AvatarToolsShared.Util.AccessoryAndBodyToolShared
local AvatarToolsSharedConstants = AccessoryAndBodyToolSharedUtil.Constants
local PreviewConstants = AccessoryAndBodyToolSharedUtil.PreviewConstants
local PreviewConstantsInterface = AccessoryAndBodyToolSharedUtil.PreviewConstantsInterface

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator
local Typecheck = Util.Typecheck
local deepCopy = Util.deepCopy

local UpdatePreviewAssetsSelected = require(Plugin.Src.Thunks.UpdatePreviewAssetsSelected)
local GetPrebuiltAssetsInfo = require(Plugin.Src.Thunks.GetPrebuiltAssetsInfo)

local EditingItemContext = AvatarToolsShared.Contexts.EditingItemContext
local AssetServiceWrapper = AvatarToolsShared.Contexts.AssetServiceWrapper

local Constants = require(Plugin.Src.Util.Constants)
local ShowDialog = require(Plugin.Src.Util.ShowDialog)

local PreviewGrid = Roact.PureComponent:extend("PreviewGrid")
Typecheck.wrap(PreviewGrid, script)

local GetFFlagAccessoryFittingToolAnalytics = require(Plugin.Src.Flags.GetFFlagAccessoryFittingToolAnalytics)

local function getSelectedIds(self)
	local props = self.props
	local selectedAssets = props.SelectedAssets
	local selectedTab = props.SelectedTab

	local selectedAssetsforTab = selectedAssets[selectedTab] or {}

	return Cryo.List.toSet(Cryo.Dictionary.keys(selectedAssetsforTab))
end

local function getUserAddedAssets(self, selectedTab)
	local props = self.props
	local userAddedAssets = props.UserAddedAssets

	return userAddedAssets and userAddedAssets[selectedTab] or {}
end

function PreviewGrid:init()
	self.gridRef = Roact.createRef()

	self.onThumbnailClick = function(id, selected)
		self.props.UpdatePreviewAssetsSelected(id, not selected)
		if not selected then
			local selectedTab = self.props.SelectedTab
			local prebuiltAssetsInfo = self.props.PrebuiltAssetsInfo
			local analytics = self.props.Analytics
			local usingCustomAssets = prebuiltAssetsInfo[id] == nil
			if selectedTab == PreviewConstants.TABS_KEYS.Clothing or selectedTab == PreviewConstants.TABS_KEYS.Animations then
				analytics:getHandler("PreviewAssetSelected")(usingCustomAssets, selectedTab == PreviewConstants.TABS_KEYS.Animations)
			end
		end
	end
end

local function getUserAddedAssetIds(self, selectedTab)
	local userAddedAssetsForTab = getUserAddedAssets(self, selectedTab)

	local ids = {}

	for _, asset in ipairs(userAddedAssetsForTab) do
		table.insert(ids, asset.uniqueId)
	end

	return ids
end

local function combineAssetInfo(self, selectedTab)
	local props = self.props

	local filter = props.SearchFilter
	local categoryFilter = props.CategoryFilter
	local prebuiltAssetsInfo = deepCopy(props.PrebuiltAssetsInfo)
	local userAddedAssetsForTab = getUserAddedAssets(self, selectedTab)
	local tabInfo = PreviewConstantsInterface.getTabInfo(selectedTab)
	if tabInfo then
		local guids = getUserAddedAssetIds(self, selectedTab)
		local assetIds = {}
		local bundleIds = {}

		if categoryFilter == "" or categoryFilter == PreviewConstants.CategoryPrefixes.Default then
			if tabInfo.AssetIds then
				for _, id in pairs(tabInfo.AssetIds) do
					local info = prebuiltAssetsInfo[id]
					if info then
						info.ThumbnailType = "Asset"
						if filter == "" or string.find(info.Name or info.name, filter) then
							table.insert(assetIds, id)
						end
					end
				end
			end

			if tabInfo.BundleIds then
				for _, id in pairs(tabInfo.BundleIds) do
					local info = prebuiltAssetsInfo[id]
					if info then
						info.ThumbnailType = "BundleThumbnail"
						if filter == "" or string.find(info.Name or info.name, filter) then
							table.insert(bundleIds, id)
						end
					end
				end
			end
		end

		local userAddedAssetsById = {}
		if categoryFilter == "" or categoryFilter == PreviewConstants.CategoryPrefixes.Custom then
			for _, asset in ipairs(userAddedAssetsForTab) do
				if filter == "" or string.find(asset.instance.Name, filter) then
					userAddedAssetsById[asset.uniqueId] = {
						Name = asset.instance.Name,
						ThumbnailType = "",
						Instance = if FFlagEnablePreviewTiles then asset.instance else nil,
					}
				end
			end
		end

		local combinedAssetInfo = Cryo.Dictionary.join(prebuiltAssetsInfo, userAddedAssetsById)
		local combinedAssetIds = Cryo.List.join(guids, assetIds, bundleIds)

		return combinedAssetIds, combinedAssetInfo
	end
end

function PreviewGrid:render()
	local props = self.props
	local size = props.size
	local layoutOrder = props.layoutOrder
	local theme = props.Stylizer
	local analytics = props.Analytics
	local selectedTab = props.SelectedTab

	local orderIterator = LayoutOrderIterator.new()

	local children = {}
	local tabInfo = PreviewConstantsInterface.getTabInfo(selectedTab)
	if tabInfo then
		local ids, info = combineAssetInfo(self, selectedTab)
		children = Cryo.Dictionary.join(
			children,
			AssetThumbnailTiles({
				AssetIds = ids,
				AssetsInfo = info,
				LayoutOrder = orderIterator:getNextOrder(),
				SelectedTiles = getSelectedIds(self),
				DefaultThumbnail = theme.DefaultTileImages[selectedTab],
				OnThumbnailClick = if GetFFlagAccessoryFittingToolAnalytics() 
					then
						function(id, selected)
							self.props.UpdatePreviewAssetsSelected(id, not selected)
						end
					else
						self.onThumbnailClick,
			})
		)
	end

	return Roact.createElement(ScrollableGrid, {
		Size = size,
		CellSize = theme.TileSize,
		LayoutOrder = layoutOrder,
	}, children)
end

function PreviewGrid:didMount()
	local props = self.props
	local API = props.API

	local assetService = self.props.AssetServiceWrapper:get()

	local arrayOfAssetIds = PreviewConstantsInterface.getAllAssetIds()
	local arrayOfBundleIds = PreviewConstantsInterface.getAllBundleIds()
	self.props.GetPrebuiltAssetsInfo(API, assetService, arrayOfAssetIds, arrayOfBundleIds)

	-- will select a default avatar if there are none selected
	self.props.UpdatePreviewAssetsSelected()
end

PreviewGrid = withContext({
	Analytics = ContextServices.Analytics,
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	API = ContextServices.API,
	Plugin = ContextServices.Plugin,
	EditingItemContext = EditingItemContext,
	AssetServiceWrapper = AssetServiceWrapper,
})(PreviewGrid)

local function mapStateToProps(state, props)
	local previewAssets = state.previewAssets
	local previewStatus = state.previewStatus

	return {
		PrebuiltAssetsInfo = previewAssets.prebuiltAssetsInfo,
		SelectedTab = previewStatus.selectedTab,
		SearchFilter = previewStatus.searchFilter,
		CategoryFilter = previewStatus.categoryFilter,
		SelectedAssets = previewStatus.selectedAssets,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		GetPrebuiltAssetsInfo = function(robloxApi, assetService, arrayOfAssetIds, arrayOfBundleIds)
			dispatch(GetPrebuiltAssetsInfo(robloxApi, assetService, arrayOfAssetIds, arrayOfBundleIds))
		end,
		UpdatePreviewAssetsSelected = function(id, addAsset)
			dispatch(UpdatePreviewAssetsSelected(id, addAsset))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PreviewGrid)