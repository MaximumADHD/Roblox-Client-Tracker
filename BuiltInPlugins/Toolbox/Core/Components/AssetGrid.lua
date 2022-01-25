--[[
	An inifinite scrolling grid of assets which uses the Assets Reducer as a datasource.

	Required Props:
		callback tryInsert: attempt to insert asset.
		callback tryOpenAssetConfig: invoke assetConfig page with an assetId.]
		Vector2 parentSize: The X,Y size of the parent container. This is used for analytics.
		Vector2 parentAbsolutePosition: The X,Y position of the parent container. This is used for analytics.

	Optional Props:
		int LayoutOrder
		UDim2 Size
]]
local FFlagUseNewAssetPermissionEndpoint3 = game:GetFastFlag("UseNewAssetPermissionEndpoint3")

local Plugin = script.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextGetter = require(Util.ContextGetter)

local Category = require(Plugin.Core.Types.Category)

local getNetwork = ContextGetter.getNetwork

local Asset = require(Plugin.Core.Components.Asset.Asset)

local PermissionsConstants = require(Plugin.Core.Components.AssetConfiguration.Permissions.PermissionsConstants)

local GetPackageHighestPermission = require(Plugin.Core.Networking.Requests.DEPRECATED_GetPackageHighestPermission) -- delete with FFlagUseNewAssetPermissionEndpoint3
local PostAssetCheckPermissions = require(Plugin.Core.Networking.Requests.PostAssetCheckPermissions)
local NextPageRequest = require(Plugin.Core.Networking.Requests.NextPageRequest)

local Settings = require(Plugin.Core.ContextServices.Settings)

local Framework = require(Libs.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local InfiniteScrollingFrame = Framework.UI.InfiniteScrollingFrame

local Layouter = require(Plugin.Core.Util.Layouter)
local Pane = Framework.UI.Pane

local AssetGrid = Roact.PureComponent:extend("AssetGrid")

AssetGrid.defaultProps = {
	Size = UDim2.new(1, 0, 1, 0),
}

function AssetGrid:init(props)
	self.ref = Roact.createRef()

	self.requestNextPage = function()
		if self.props.isLoading or self.props.isPreviewing then
			return
		end

		local settings = self.props.Settings:get("Plugin")
		local networkInterface = getNetwork(self)
		self.props.nextPage(networkInterface, settings)
	end

	self.getAssetRowSize = function()
		local result
		local showPrices = Category.shouldShowPrices(self.props.categoryName)
		if showPrices then
			result = UDim2.new(1, 0, 0, Constants.ASSET_HEIGHT + Constants.PRICE_HEIGHT)
		else
			result = UDim2.new(1, 0, 0, Constants.ASSET_HEIGHT)
		end
		return result
	end

	self.renderGridItem = function(item)
		local props = self.props
		local canInsertAsset = self.props.canInsertAsset
		local parentSize = props.parentSize
		local parentAbsolutePosition = props.parentAbsolutePosition
		local tryOpenAssetConfig = props.tryOpenAssetConfig
		local tryInsert = props.tryInsert

		local rowSize = self.getAssetRowSize()

		local falseGridRow = {}
		for index,assetId in ipairs(item._assetIds) do
			falseGridRow[tostring(assetId)] = Roact.createElement(Asset, {
				assetId = assetId,
				canInsertAsset = canInsertAsset,
				LayoutOrder = index,
				parentSize = parentSize,
				parentAbsolutePosition = parentAbsolutePosition,
				tryInsert = tryInsert,
				tryOpenAssetConfig = tryOpenAssetConfig,
			})
		end

		return Roact.createElement(Pane, {
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			LayoutOrder = item._index,
			Layout = Enum.FillDirection.Horizontal,
			Padding = {
				Left = Constants.MAIN_VIEW_PADDING,
				Right = Constants.MAIN_VIEW_PADDING,
			},
			Spacing = Constants.BETWEEN_ASSETS_HORIZONTAL_PADDING,
			Size = rowSize,
			ZIndex = 1,
		}, falseGridRow)
	end
end

function AssetGrid:render(modalStatus, localizedContent)
	local props = self.props

	local assetIds = props.assetIds
	local isPreviewing = props.isPreviewing
	local parentSize = props.parentSize
	local size = props.Size

	local rowSize = self.getAssetRowSize()
	local isPackages = Category.categoryIsPackage(props.categoryName)

	if isPackages and #assetIds ~= 0 then
		local assetIdList = {}
		local index = 1
		while index < PermissionsConstants.MaxPackageAssetIdsForHighestPermissionsRequest and assetIds[index] ~= nil do
			local assetId = assetIds[index]
			if not self.props.currentUserPackagePermissions[assetId] then
				table.insert(assetIdList, assetId)
			end
			index = index + 1
		end

		if #assetIdList ~= 0 then
			if FFlagUseNewAssetPermissionEndpoint3 then
				self.props.dispatchPostAssetCheckPermissions(getNetwork(self), assetIdList)
			else
				self.props.dispatchGetPackageHighestPermission(getNetwork(self), assetIdList)
			end
		end
	end

	local assetsPerRow = Layouter.getAssetsPerRow(parentSize.x)
	local assetDict = {}
	local currentFalseGridRow = {}
	local formattedAssets = {} -- This is list of currentFalseGridRows
	for index, assetId in ipairs(assetIds) do
		if not assetDict[assetId] then -- If the asset is in the grid multiple times, show it in the position of the first occurrence
			assetDict[assetId] = true
			table.insert(currentFalseGridRow, assetId)

			-- HACK: fake a grid by making rows since InfiniteScroller doesn't support UIGridLayout.
			-- TODO: Replace with GridLayout once InifintieScroller supports it.
			if #currentFalseGridRow >= assetsPerRow then
				table.insert(formattedAssets, {
					_index = index,
					_assetIds = currentFalseGridRow
				})
				currentFalseGridRow = {}
			end
		end
	end
	if #currentFalseGridRow > 0 then
		table.insert(formattedAssets, {
			_index = #assetIds,
			_assetIds = currentFalseGridRow
		})
	end

	return (#formattedAssets > 0) and Roact.createElement(InfiniteScrollingFrame, {
		EstimatedItemSize = rowSize.Y.Offset,
		Items = formattedAssets,
		ItemIdentifier = function(item)
			return item and item._assetIds[1] or nil
		end,
		ItemPadding = UDim.new(0, Constants.BETWEEN_ASSETS_VERTICAL_PADDING),
		LoadNext = self.requestNextPage,
		RenderItem = self.renderGridItem,
		ScrollingEnabled = (not isPreviewing),
		Size = size,
	})
end

AssetGrid = withContext({
	Settings = Settings,
})(AssetGrid)

local function mapStateToProps(state, props)
	state = state or {}
	local assets = state.assets or {}
	local pageInfo = state.pageInfo or {}
	local categoryName = pageInfo.categoryName or Category.DEFAULT.name

	return {
		assetIds = assets.idsToRender or {},
		categoryName = categoryName,
		currentUserPackagePermissions = state.packages.permissionsTable or {},
		isLoading = assets.isLoading or false,
		isPreviewing = assets.isPreviewing or false,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		nextPage = function(networkInterface, settings)
			dispatch(NextPageRequest(networkInterface, settings))
		end,
		dispatchGetPackageHighestPermission = (not FFlagUseNewAssetPermissionEndpoint3) and function(networkInterface, assetIds)
			dispatch(GetPackageHighestPermission(networkInterface, assetIds))
		end,
		dispatchPostAssetCheckPermissions = FFlagUseNewAssetPermissionEndpoint3 and function(networkInterface, assetIds)
			dispatch(PostAssetCheckPermissions(networkInterface, assetIds))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetGrid)