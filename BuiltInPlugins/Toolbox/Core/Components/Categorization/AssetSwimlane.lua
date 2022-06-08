--!strict
local FFlagToolboxHomeViewAnalyticsUpdate = game:GetFastFlag("ToolboxHomeViewAnalyticsUpdate")

local Plugin = script.Parent.Parent.Parent.Parent
local Packages = Plugin.Packages
local Framework = require(Packages.Framework)
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
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
	IncludeOnlyVerifiedCreators: boolean?,
	InitialPageSize: number,
	LayoutOrder: number,
	SwimlaneCategory: string,
	SectionName: string,
	SearchTerm: string?,
	SortName: string?,
	SwimlaneWidth: number,
	OnAssetPreviewButtonClicked: ((assetData: any) -> ()),
	OnClickSeeAllAssets: ((
		sectionName: string?,
		categoryName: string,
		sortName: string?,
		searchTerm: string?,
		navigation: any
	) -> ()),
	PathName: string,
	Title: string?,
	TryInsert: () -> (),
	TryOpenAssetConfig: () -> (),
	ZIndex: number?,
}

local AssetSwimlane = Roact.PureComponent:extend("AssetSwimlane")

function AssetSwimlane:init()
	self.ref = Roact.createRef()
	self.state = {
		hoveredAssetId = 0,
	}

	self.onClickSeeAllAssets = function()
		local props = self.props
		local sectionName = self.props.SectionName
		local categoryName = self.props.CategoryName
		local sortName = self.props.SortName
		local searchTerm = self.props.SearchTerm
		local pathName = self.props.PathName

		local onClickSeeAllAssets = props.OnClickSeeAllAssets

		onClickSeeAllAssets(sectionName or pathName, categoryName, sortName, searchTerm)
	end
end

function AssetSwimlane:render()
	local props: AssetSwimlaneProps = self.props
	local state: AssetSwimlaneState = self.state

	local canInsertAsset = props.CanInsertAsset
	local categoryName = props.CategoryName
	local initialPageSize = props.InitialPageSize
	local layoutOrder = props.LayoutOrder
	local networkInterface = getNetwork(self)

	local onAssetPreviewButtonClicked = props.OnAssetPreviewButtonClicked
	local searchTerm = props.SearchTerm
	local sectionName = props.SectionName
	local swimlaneCategory = props.SwimlaneCategory
	local sortName = props.SortName
	local title = props.Title
	local tryInsert = props.TryInsert
	local tryOpenAssetConfig = props.TryOpenAssetConfig
	local zIndex = props.ZIndex
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
			onAssetHovered = onAssetHovered,
			onAssetHoverEnded = onAssetHoverEnded,
			onAssetPreviewButtonClicked = onAssetPreviewButtonClicked,
			swimlaneCategory = if FFlagToolboxHomeViewAnalyticsUpdate then swimlaneCategory else title,
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
			OnClickSeeAll = self.onClickSeeAllAssets,
			OnRenderItem = onRenderItem,
			Size = UDim2.new(0, swimlaneWidth, 0, assetHeight),
			Total = resultsState.total,
			Title = title,
			ZIndex = zIndex,
		})
	end

	return ResultsFetcher.Generator({
		networkInterface = networkInterface,
		categoryName = categoryName,
		includeOnlyVerifiedCreators = props.IncludeOnlyVerifiedCreators,
		sortName = sortName,
		searchTerm = searchTerm,
		sectionName = sectionName,
		initialPageSize = initialPageSize,
		render = renderSwimlane,
	})
end

return AssetSwimlane
