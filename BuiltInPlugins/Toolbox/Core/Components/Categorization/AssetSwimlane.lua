--!strict
local Plugin = script.Parent.Parent.Parent.Parent
local Packages = Plugin.Packages
local Framework = require(Packages.Framework)
local Roact = require(Packages.Roact)
local Dash = Framework.Dash

local CategorizationFolder = Plugin.Core.Components.Categorization
local Swimlane = require(CategorizationFolder.Swimlane)
local HorizontalList = require(CategorizationFolder.HorizontalList)
local ResultsFetcher = require(Plugin.Core.Components.ResultsFetcher)
local Asset = require(Plugin.Core.Components.Asset.Asset)
local Util = Plugin.Core.Util
local ContextGetter = require(Util.ContextGetter)
local Constants = require(Util.Constants)
local HomeTypes = require(Plugin.Core.Types.HomeTypes)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Category = require(Plugin.Core.Types.Category)

local getNetwork = ContextGetter.getNetwork

type HoverState = {
	hoveredAssetId: number,
	onAssetHovered: ((assetId: number) -> ()),
	onAssetHoverEnded: (() -> ()),
}

type AssetSwimlaneState = {
	hoveredAssetId: number,
}

export type AssetSwimlaneProps = Swimlane.SwimlaneProps & {
	CanInsertAsset: () -> (),
	CategoryName: string,
	InitialPageSize: number,
	LayoutOrder: number,
	SectionName: string,
	SearchTerm: string?,
	SortName: string?,
	SwimlaneWidth: number,
	OnAssetPreviewButtonClicked: ((assetData: any) -> ()),
	OnClickSeeAllAssets: ((
		sectionName: string?,
		categoryName: string,
		sortName: string?,
		searchTerm: string?
	) -> ()),
	Title: string?,
	TryInsert: () -> (),
	TryOpenAssetConfig: () -> (),
}

local AssetSwimlane = Roact.PureComponent:extend("AssetSwimlane")

function AssetSwimlane:init()
	self.ref = Roact.createRef()
	self.state = {
		hoveredAssetId = 0,
	}
end

function AssetSwimlane:render()
	local props: AssetSwimlaneProps = self.props
	local state: AssetSwimlaneState = self.state

	local canInsertAsset = props.CanInsertAsset
	local categoryName = props.CategoryName
	local initialPageSize = props.InitialPageSize
	local layoutOrder = props.LayoutOrder
	local localization = props.Localization
	local networkInterface = getNetwork(self)
	local onClickSeeAllAssets = props.OnClickSeeAllAssets
	local onAssetPreviewButtonClicked = props.OnAssetPreviewButtonClicked
	local searchTerm = props.SearchTerm
	local sectionName = props.SectionName
	local sortName = props.SortName
	local title = props.Title
	local tryInsert = props.TryInsert
	local tryOpenAssetConfig = props.TryOpenAssetConfig
	local swimlaneWidth = props.SwimlaneWidth

	local onAssetHovered = function(assetId)
		self:setState({ hoveredAssetId = assetId })
	end

	local onAssetHoverEnded = function(assetId)
		self:setState({ hoveredAssetId = 0 })
	end

	local onRenderItem = function(index, assetData)
		local assetId = assetData.Asset.Id
		return Roact.createElement(Asset, {
			assetId = assetId,
			assetData = assetData,
			canInsertAsset = canInsertAsset,
			isHovered = state.hoveredAssetId == assetId,
			LayoutOrder = layoutOrder,
			onAssetHovered = onAssetHovered,
			onAssetHoverEnded = onAssetHoverEnded,
			onAssetPreviewButtonClicked = onAssetPreviewButtonClicked,
			tryInsert = tryInsert,
			tryOpenAssetConfig = tryOpenAssetConfig,
		})
	end

	local renderSwimlane = function(resultsState)
		local showPrices = Category.shouldShowPrices(categoryName)
		local assetHeight
		if showPrices then
			assetHeight = Constants.ASSET_HEIGHT + Constants.PRICE_HEIGHT
		else
			assetHeight = Constants.ASSET_HEIGHT
		end

		return Roact.createElement(Swimlane, {
			Data = resultsState.assets,
			IsLoading = resultsState.loading,
			LayoutOrder = layoutOrder,
			OnClickSeeAll = function()
				return onClickSeeAllAssets(sectionName, categoryName, sortName, searchTerm)
			end,
			OnRenderItem = onRenderItem,
			Size = UDim2.new(0, swimlaneWidth, 0, assetHeight),
			Total = resultsState.total,
			Title = title,
		})
	end

	return ResultsFetcher.Generator({
		networkInterface = networkInterface,
		categoryName = categoryName,
		sortName = sortName,
		searchTerm = searchTerm,
		sectionName = sectionName,
		initialPageSize = initialPageSize,
		render = renderSwimlane,
	})
end

withContext({
	Localization = ContextServices.Localization,
})(AssetSwimlane)

return AssetSwimlane
