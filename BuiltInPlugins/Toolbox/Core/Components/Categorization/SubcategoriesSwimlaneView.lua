--!strict
--[[
	A view wrapper displaying a list of swimlanes.
]]
local FFlagDevFrameworkAddUnobtrusiveLinkTextStyle = game:GetFastFlag("DevFrameworkAddUnobtrusiveLinkTextStyle")
local FFlagDevFrameworkScrollingFrameAddPadding = game:GetFastFlag("DevFrameworkScrollingFrameAddPadding")

local Plugin = script:FindFirstAncestor("Toolbox")
local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)
local Sort = require(Plugin.Core.Types.Sort)

local Dash = Framework.Dash
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local LoadingIndicator = Framework.UI.LoadingIndicator
local LinkText = Framework.UI.LinkText
local Pane = Framework.UI.Pane
local TextLabel = Framework.UI.Decoration.TextLabel

local Asset = require(Plugin.Core.Components.Asset.Asset)
local AssetLogicWrapper = require(Plugin.Core.Components.AssetLogicWrapper)
local AssetGrid = require(Plugin.Core.Components.AssetGrid)
local ResultsFetcher = require(Plugin.Core.Components.ResultsFetcher)
local AssetSwimlane = require(Plugin.Core.Components.Categorization.AssetSwimlane)
local HomeTypes = require(Plugin.Core.Types.HomeTypes)
local Layouter = require(Plugin.Core.Util.Layouter)

local ScrollingFrame = Framework.UI.ScrollingFrame

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextGetter = require(Util.ContextGetter)
local getNetwork = ContextGetter.getNetwork

local Category = require(Plugin.Core.Types.Category)

local ASSET_SECTION_SPACING = 20
local INITIAL_PAGE_SIZE = 20
local SECTION_SPACING = 10

export type _ExternalProps = {
	CategoryName: string,
	LayoutOrder: number?,
	OnClickBack: (() -> ()),
	OnClickSeeAllAssets: ((
		sectionName: string?,
		categoryName: string,
		sortName: string?,
		searchTerm: string?
	) -> ()),
	Position: UDim2?,
	SectionName: string?,
	SortName: string?,
	SubcategoryDict: { [string]: HomeTypes.Subcategory },
	Size: UDim2?,
}

export type _InternalProps = {
	Localization: any,
	Stylizer: any,
}

type SubcategoriesSwimlaneViewProps = _ExternalProps & _InternalProps & AssetLogicWrapper.AssetLogicWrapperProps

local SubcategoriesSwimlaneView = Roact.PureComponent:extend("SubcategoriesSwimlaneView")

SubcategoriesSwimlaneView.defaultProps = {
	Size = UDim2.new(1, 0, 1, 0),
}

function SubcategoriesSwimlaneView:init()
	self.onAbsoluteSizeChange = function(rbx)
		self:setState({
			swimlaneWidth = Layouter.getSwimlaneWidth(rbx.AbsoluteSize.X),
		})
	end

	self.onClickBack = function(key)
		local props: SubcategoriesSwimlaneViewProps = self.props
		local onClickBack = props.OnClickBack
		if onClickBack then
			onClickBack()
		end
	end

	self.onClickSeeAllAssets =
		function(_, categorName: string, sortName: string, searchTerm: string, subcategory: HomeTypes.Subcategory)
			local props: SubcategoriesSwimlaneViewProps = self.props
			local categoryName = props.CategoryName
			local onClickSeeAllAssets = props.OnClickSeeAllAssets
			local sortName = props.SortName

			if onClickSeeAllAssets then
				onClickSeeAllAssets(nil, categoryName, sortName, subcategory.searchKeywords)
			end
		end

	self.renderSwimlanes = function()
		local props: SubcategoriesSwimlaneViewProps = self.props
		local state = self.state

		local categoryName = props.CategoryName
		local layoutOrder = props.LayoutOrder
		local localization = props.Localization
		local size = props.Size
		local sectionName = props.SectionName
		local sortName = props.SortName or Sort.getDefaultSortNameForCategory(categoryName)
		local subcategoryDict = props.SubcategoryDict
		local theme = props.Stylizer
		-- Props from AssetLogicWrapper
		local canInsertAsset = props.CanInsertAsset
		local tryInsert = props.TryInsert
		local tryOpenAssetConfig = props.TryOpenAssetConfig
		local onClickSeeAllAssets = props.OnClickSeeAllAssets
		local swimlaneWidth = state.swimlaneWidth
		local onAssetPreviewButtonClicked = props.OnAssetPreviewButtonClicked

		local assetSectionsElems = {}
		-- Get asset sections
		for i, subcategory in pairs(subcategoryDict) do
			assetSectionsElems["AssetSwimlane_" .. i] = Roact.createElement(AssetSwimlane, {
				CanInsertAsset = canInsertAsset,
				CategoryName = categoryName,
				OnClickSeeAll = function(sectionName: string, categorName: string, sortName: string, searchTerm: string)
					return self.onClickSeeAllAssets(sectionName, categorName, sortName, searchTerm, subcategory)
				end,
				NetworkInterface = getNetwork(self),
				SortName = sortName,
				SearchTerm = subcategory.searchKeywords,
				InitialPageSize = INITIAL_PAGE_SIZE,
				OnClickSeeAllAssets = onClickSeeAllAssets,
				SwimlaneWidth = swimlaneWidth,
				OnAssetPreviewButtonClicked = onAssetPreviewButtonClicked,
				Title = subcategory.displayName,
				TryInsert = tryInsert,
				TryOpenAssetConfig = tryOpenAssetConfig,
			})
		end
		return assetSectionsElems
	end
end

function SubcategoriesSwimlaneView:render()
	local props: SubcategoriesSwimlaneViewProps = self.props

	local categoryName = props.CategoryName
	local layoutOrder = props.LayoutOrder
	local localization = props.Localization
	local size = props.Size
	local sectionName = props.SectionName
	local sortName = props.SortName or Sort.getDefaultSortNameForCategory(categoryName)
	local subcategoryDict = props.SubcategoryDict
	local theme = props.Stylizer
	-- Props from AssetLogicWrapper
	local canInsertAsset = props.CanInsertAsset
	local tryInsert = props.TryInsert
	local tryOpenAssetConfig = props.TryOpenAssetConfig
	local onClickSeeAllAssets = props.OnClickSeeAllAssets

	local assetSectionsElems = self.renderSwimlanes()

	local backText = "< " .. localization:getText("General", "AllModels")

	return Roact.createElement(Pane, {
		BackgroundColor3 = theme.backgroundColor,
		LayoutOrder = layoutOrder,
		Size = size,
		[Roact.Change.AbsoluteSize] = self.onAbsoluteSizeChange,
	}, {
		ScrollingFrame = Roact.createElement(ScrollingFrame, {
			AutoSizeCanvas = true,
			EnableScrollBarBackground = true,
			LayoutOrder = layoutOrder,
			Padding = if FFlagDevFrameworkScrollingFrameAddPadding then Constants.MAIN_VIEW_PADDING else nil,
			Size = size,
		}, {
			Contents = Roact.createElement(
				Pane,
				{
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundColor3 = theme.backgroundColor,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					Layout = Enum.FillDirection.Vertical,
					LayoutOrder = 2,
					Spacing = ASSET_SECTION_SPACING,
					Size = UDim2.new(1, 0, 0, 0),
					VerticalAlignment = Enum.VerticalAlignment.Top,
				},
				Dash.join({
					UIPadding = Roact.createElement("UIPadding", {
						PaddingBottom = UDim.new(0, Constants.MAIN_VIEW_PADDING),
						PaddingLeft = UDim.new(0, Constants.MAIN_VIEW_PADDING),
						PaddingRight = UDim.new(0, Constants.MAIN_VIEW_PADDING),
						PaddingTop = UDim.new(0, Constants.MAIN_VIEW_PADDING),
					}),
					BackButton = Roact.createElement(LinkText, {
						LayoutOrder = -1,
						OnClick = self.onClickBack,
						Style = if FFlagDevFrameworkAddUnobtrusiveLinkTextStyle then "Unobtrusive" else nil,
						Text = backText,
					}),
				}, assetSectionsElems)
			),
		}),
	})
end

SubcategoriesSwimlaneView = AssetLogicWrapper(SubcategoriesSwimlaneView)

SubcategoriesSwimlaneView = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(SubcategoriesSwimlaneView)

return SubcategoriesSwimlaneView
