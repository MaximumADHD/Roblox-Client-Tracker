--!strict
--[[
	A view wrapper displaying a list of swimlanes.
]]
local FFlagToolboxUseQueryForCategories2 = game:GetFastFlag("ToolboxUseQueryForCategories2")
local FFlagToolboxIncludeSearchSource = game:GetFastFlag("ToolboxIncludeSearchSource")

local Plugin = script:FindFirstAncestor("Toolbox")
local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)
local Sort = require(Plugin.Core.Types.Sort)
local RoactRodux = require(Packages.RoactRodux)

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
		searchTerm: string?,
		navigation: any,
		queryParams: HomeTypes.SubcategoryQueryParams?
	) -> ()),
	Position: UDim2?,
	SectionName: string?,
	SortName: string?,
	SubcategoryDict: { [string]: HomeTypes.Subcategory },
	Size: UDim2?,
}

export type _InternalProps = {
	-- mapStateToProps
	IncludeUnverifiedCreators: boolean?,
	-- withContext
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
			if FFlagToolboxUseQueryForCategories2 and onClickSeeAllAssets then
				onClickSeeAllAssets(nil, categoryName, sortName, nil, subcategory.queryParams)
			elseif onClickSeeAllAssets then
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

		local includeUnverifiedCreators = props.IncludeUnverifiedCreators

		-- Props from AssetLogicWrapper
		local canInsertAsset = props.CanInsertAsset
		local tryInsert = props.TryInsert
		local tryOpenAssetConfig = props.TryOpenAssetConfig
		local onClickSeeAllAssets = props.OnClickSeeAllAssets
		local swimlaneWidth = state.swimlaneWidth
		local onAssetPreviewButtonClicked = props.OnAssetPreviewButtonClicked

		local assetSectionsElems = {}
		-- Get asset sections

		local assetSectionCount = Dash.reduce(subcategoryDict, function(current: number)
			return current + 1
		end, 1)
		for i, subcategory in pairs(subcategoryDict) do
			assetSectionsElems["AssetSwimlane_" .. i] = Roact.createElement(AssetSwimlane, {
				CanInsertAsset = canInsertAsset,
				CategoryName = categoryName,
				SwimlaneCategory = subcategory.name,
				OnClickSeeAll = function(sectionName: string, categorName: string, sortName: string, searchTerm: string)
					if FFlagToolboxUseQueryForCategories2 then
						return self.onClickSeeAllAssets(
							sectionName,
							categorName,
							sortName,
							nil,
							subcategory,
							subcategory.queryParams
						)
					else
						return self.onClickSeeAllAssets(sectionName, categorName, sortName, searchTerm, subcategory)
					end
				end,
				NetworkInterface = getNetwork(self),
				SortName = sortName,
				SearchTerm = subcategory.searchKeywords,
				IncludeUnverifiedCreators = includeUnverifiedCreators,
				QueryParams = if FFlagToolboxUseQueryForCategories2 then subcategory.queryParams else nil,
				InitialPageSize = INITIAL_PAGE_SIZE,
				LayoutOrder = subcategory.index,
				OnClickSeeAllAssets = onClickSeeAllAssets,
				OnAssetPreviewButtonClicked = onAssetPreviewButtonClicked,
				PathName = subcategory.name,
				SwimlaneWidth = swimlaneWidth,
				Title = subcategory.displayName,
				TryInsert = tryInsert,
				TryOpenAssetConfig = tryOpenAssetConfig,
				ZIndex = assetSectionCount - subcategory.index,
				searchSource = if FFlagToolboxIncludeSearchSource then Constants.SEARCH_SOURCE.CATEGORY else nil,
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
			Padding = Constants.MAIN_VIEW_PADDING,
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
					BackButton = Roact.createElement(LinkText, {
						LayoutOrder = -1,
						OnClick = self.onClickBack,
						Style = "Unobtrusive",
						Text = backText,
					}),
				}, assetSectionsElems)
			),
		}),
	})
end

function mapStateToProps(state: any, props)
	state = state or {}
	local pageInfo = state.pageInfo or {}
	return {
		IncludeUnverifiedCreators = pageInfo.includeUnverifiedCreators,
	}
end

SubcategoriesSwimlaneView = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(SubcategoriesSwimlaneView)

return RoactRodux.connect(mapStateToProps)(SubcategoriesSwimlaneView)
