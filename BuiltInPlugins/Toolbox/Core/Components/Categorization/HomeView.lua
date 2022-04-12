--!strict
--[[
	The main home view showcasing swimlanes with categories and assets as well as a infinite-scroll of grid of assets.
]]
local Plugin = script.Parent.Parent.Parent.Parent

local FFlagToolboxUseExpandableTopSearch = game:GetFastFlag("ToolboxUseExpandableTopSearch") -- TODO: Flip when UISYS-1334 is ready
local FintToolboxHomeViewInitialPageSize = game:GetFastInt("ToolboxHomeViewInitialPageSize")
local FFlagToolboxAssetCategorization = game:GetFastFlag("ToolboxAssetCategorization3")

local Libs = Plugin.Packages

local Framework = require(Libs.Framework)
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)
local Dash = Framework.Dash

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Settings = require(Plugin.Core.ContextServices.Settings)
local Layouter = require(Plugin.Core.Util.Layouter)

local LayoutOrderIterator = Framework.Util.LayoutOrderIterator
local LoadingIndicator = Framework.UI.LoadingIndicator
local Pane = Framework.UI.Pane

local Asset = require(Plugin.Core.Components.Asset.Asset)
local AssetGrid = require(Plugin.Core.Components.AssetGrid)
local AssetLogicWrapper = require(Plugin.Core.Components.AssetLogicWrapper)
local IconTile = require(Plugin.Core.Components.Categorization.IconTile)

local ResultsFetcher = require(Plugin.Core.Components.ResultsFetcher)
local Category = require(Plugin.Core.Types.Category)

local AssetSwimlane = require(Plugin.Core.Components.Categorization.AssetSwimlane)
local ExpandableTeaser = require(Plugin.Core.Components.Categorization.ExpandableTeaser)
local SearchList = require(Plugin.Core.Components.Categorization.SearchList)
local SectionHeader = require(Plugin.Core.Components.Categorization.SectionHeader)
local Swimlane = require(Plugin.Core.Components.Categorization.Swimlane)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextGetter = require(Util.ContextGetter)
local getStartupAssetId = require(Util.getStartupAssetId)
local Urls = require(Util.Urls)

local getNetwork = ContextGetter.getNetwork

local GetAssetPreviewDataForStartup = require(Plugin.Core.Thunks.GetAssetPreviewDataForStartup)

local HomeTypes = require(Plugin.Core.Types.HomeTypes)

local ASSET_SECTION_SPACING = 10
local INITIAL_PAGE_SIZE = FintToolboxHomeViewInitialPageSize
local MAIN_VIEW_PADDING = Constants.MAIN_VIEW_PADDING
local SECTION_SPACING = 20
local SWIMLANE_SIZE = 20
local SUBCATEGORY_SIZE = Vector2.new(75, 90)
local THUMBNAIL_SIZE = Constants.ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE
local TOP_KEYWORDS_SECTION_SPACING = 10
local TOP_KEYWORDS_BOTTOM_PADDING = 10
local TOP_SEARCHES_FULL_HEIGHT_CUT_OFF = 475
local TOP_SEARCH_MAX_ROW_COUNT = 2

local HomeView = Roact.PureComponent:extend("HomeView")

type _ExternalProps = {
	AssetSections: { HomeTypes.Subcategory },
	CategoryName: string,
	LayoutOrder: number?,
	OnClickSubcategory: ((
		subcategoryName: string,
		subcategoryDict: HomeTypes.Subcategory,
		categoryName: string?,
		sortName: string?,
		navigation: any
	) -> ()),
	OnClickSeeAllAssets: ((
		sectionName: string?,
		categoryName: string,
		sortName: string?,
		searchTerm: string?,
		navigation: any
	) -> ()),
	OnClickSeeAllSubcategories: ((
		subcategoryDict: { [string]: HomeTypes.Subcategory },
		categoryName: string,
		sortName: string?,
		navigation: any
	) -> ()),
	Position: number?,
	Size: UDim2?,
	SortName: string?,
	SubcategoryDict: { [string]: HomeTypes.Subcategory },
	TopKeywords: { string }?,
}

type _InternalProps = {
	-- mapDispatchToProps
	getAssetPreviewDataForStartup: any,
	-- withContext
	API: any?,
	Localization: any,
	Settings: any,
	Stylizer: any,
}

type HomeViewProps = _ExternalProps & _InternalProps & AssetLogicWrapper.AssetLogicWrapperProps

type HomeViewState = {
	showTopSearchesFullHeight: boolean,
	swimlaneWidth: number,
}

HomeView.defaultProps = {
	Size = UDim2.new(1, 0, 0, 0),
}

function HomeView:didMount()
	local props: HomeViewProps = self.props
	local assetIdStr = getStartupAssetId()
	local assetId = tonumber(assetIdStr)

	if assetId then
		props.getAssetPreviewDataForStartup(assetId, self.tryInsert, props.Localization, getNetwork(self))
	end

	self.onOverallAbsoluteSizeChange()
end

function HomeView:init()
	self.sizerRef = Roact.createRef()

	self.state = {
		showTopSearchesFullHeight = false,
		swimlaneWidth = 0,
	}

	self.onOverallAbsoluteSizeChange = function()
		self:setState(function(prevState: HomeViewState)
			local rbx = self.sizerRef.current
			if not rbx then
				return
			end
			local swimlaneWidth = Layouter.getSwimlaneWidth(rbx.AbsoluteSize.X)
			local showTopSearchesFullHeight = rbx.AbsoluteSize.Y > TOP_SEARCHES_FULL_HEIGHT_CUT_OFF
			if
				showTopSearchesFullHeight ~= prevState.showTopSearchesFullHeight
				or swimlaneWidth ~= prevState.swimlaneWidth
			then
				return {
					showTopSearchesFullHeight = showTopSearchesFullHeight,
					swimlaneWidth = swimlaneWidth,
				}
			else
				return
			end
		end)
	end

	self.onClickSubcategory = function(subcategoryName)
		local props: HomeViewProps = self.props
		local categoryName = props.CategoryName
		local onClickSubcategory = props.OnClickSubcategory
		local onClickSeeAllAssets = props.OnClickSeeAllAssets
		local sortName = props.SortName
		local subcategoryDict = props.SubcategoryDict

		local subcategoryData = subcategoryDict[subcategoryName]
		onClickSubcategory(subcategoryName, subcategoryData, subcategoryData.searchKeywords, categoryName, sortName)
	end

	self.onClickSeeAllSubcategories = function()
		local props: HomeViewProps = self.props
		local categoryName = props.CategoryName
		local sortName = props.SortName
		local subcategoryDict = props.SubcategoryDict
		local onClickSeeAllSubcategories = props.OnClickSeeAllSubcategories

		if onClickSeeAllSubcategories then
			onClickSeeAllSubcategories(subcategoryDict, categoryName, sortName)
		end
	end

	self.onClickSearchPill = function(searchText: string)
		local props: HomeViewProps = self.props
		local categoryName = props.CategoryName
		local onClickSeeAllAssets = props.OnClickSeeAllAssets
		local sortName = props.SortName

		onClickSeeAllAssets(nil, categoryName, sortName, searchText)
	end

	self.renderSubcategory = function(index, subcategory)
		local image = ""
		local backgroundColor
		if subcategory and subcategory.thumbnail then
			image = Urls.constructAssetThumbnailUrl(subcategory.thumbnail.assetId, THUMBNAIL_SIZE, THUMBNAIL_SIZE)
			backgroundColor = Color3.fromHex(subcategory.thumbnail.backgroundColor)
		end

		return Roact.createElement(IconTile, {
			BackgroundColor = backgroundColor,
			Image = image,
			LayoutOrder = subcategory.index,
			Key = subcategory.name,
			OnClick = self.onClickSubcategory,
			Size = UDim2.new(0, SUBCATEGORY_SIZE.X, 0, SUBCATEGORY_SIZE.Y),
			Title = subcategory.displayName,
		})
	end

	self.createTopContent = function()
		local state = self.state
		local props: HomeViewProps = self.props

		local assetSections = props.AssetSections
		local canInsertAsset = props.CanInsertAsset
		local categoryName = props.CategoryName
		local localization = props.Localization
		local onClickSeeAllAssets = props.OnClickSeeAllAssets
		local onAssetPreviewButtonClicked = props.OnAssetPreviewButtonClicked
		local sortName = props.SortName
		local topKeywords = props.TopKeywords
		local tryInsert = props.TryInsert
		local tryOpenAssetConfig = props.TryOpenAssetConfig
		local swimlaneWidth = state.swimlaneWidth

		local orderIterator = LayoutOrderIterator.new()

		local subcategoryDict = props.SubcategoryDict
		local subcategoryCount = 0
		if subcategoryDict then
			for _ in pairs(subcategoryDict) do
				subcategoryCount += 1
			end
		end
		local theme = props.Stylizer
		local searchListTheme = theme.searchList
		local searchPillTheme = theme.searchPill

		local sectionHeaderTheme = theme.sectionHeader

		local categoriesHeaderText = localization:getText("General", "Categories")
		local gridHeaderText = localization:getText("HomeView", "TheEssentials")
		local topKeywordsText = localization:getText("HomeView", "TopSearches")

		local assetSectionsElems = {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, ASSET_SECTION_SPACING),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
		}
		-- Get asset sections
		local assetSectionCount = #assetSections
		for i, section in pairs(assetSections) do
			if i == assetSectionCount then
				break
			end
			assetSectionsElems["AssetSwimlane_" .. i] = Roact.createElement(AssetSwimlane, {
				CanInsertAsset = canInsertAsset,
				CategoryName = categoryName,
				InitialPageSize = SWIMLANE_SIZE,
				SortName = sortName,
				SearchTerm = nil,
				SectionName = section.name,
				SwimlaneWidth = swimlaneWidth,
				OnClickSeeAllAssets = onClickSeeAllAssets,
				OnAssetPreviewButtonClicked = onAssetPreviewButtonClicked,
				LayoutOrder = i,
				Title = localization:getText("HomeView", section.name),
				TryInsert = tryInsert,
				TryOpenAssetConfig = tryOpenAssetConfig,
				ZIndex = assetSectionCount - i + 1,
			})
		end

		local showTopKeywords = topKeywords and #topKeywords > 0

		local searchPillRowHeight = searchPillTheme.textSize
			+ searchPillTheme.padding.left
			+ searchPillTheme.padding.right
		local topSearchesRowCount = 1
		if state.showTopSearchesFullHeight then
			topSearchesRowCount = TOP_SEARCH_MAX_ROW_COUNT
		end

		-- HACK: Add a minTopKeywordSize because a race condition is causing the resizing of the AssetGrid's
		-- topContents to sometimes be inaccurrate due to the resizing of the SearchList.
		local minTopKeywordsHeight = (
					searchPillTheme.textSize
					+ searchPillTheme.padding.top
					+ searchPillTheme.padding.bottom
				)
				* topSearchesRowCount
			+ searchListTheme.buttonSpacing

		return Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Layout = Enum.FillDirection.Vertical,
			Size = UDim2.new(1, 0, 0, 0),
			Spacing = SECTION_SPACING,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}, {
			SubcategorySwimlane = Roact.createElement(Swimlane, {
				Data = subcategoryDict,
				LayoutOrder = orderIterator:getNextOrder(),
				OnClickSeeAll = self.onClickSeeAllSubcategories,
				OnRenderItem = self.renderSubcategory,
				Size = UDim2.new(0, swimlaneWidth, 0, 0),
				Title = categoriesHeaderText,
				Total = subcategoryCount,
			}),

			TopKeywords = if FFlagToolboxAssetCategorization
					and not FFlagToolboxUseExpandableTopSearch
					and showTopKeywords
				then Roact.createElement(Pane, {
					AutomaticSize = Enum.AutomaticSize.Y,
					Layout = Enum.FillDirection.Vertical,
					LayoutOrder = orderIterator:getNextOrder(),
					Padding = {
						Bottom = TOP_KEYWORDS_BOTTOM_PADDING,
					},
					Size = UDim2.new(0, swimlaneWidth, 0, minTopKeywordsHeight),
					Spacing = TOP_KEYWORDS_SECTION_SPACING,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Top,
				}, {
					SectionHeader = Roact.createElement(SectionHeader, {
						OnClickSeeAll = function() end,
						LayoutOrder = orderIterator:getNextOrder(),
						SeeAllText = "",
						Title = topKeywordsText,
					}),

					SearchList = Roact.createElement(SearchList, {
						Items = topKeywords,
						ItemMinWidth = searchPillTheme.padding.left + searchPillTheme.padding.right,
						LayoutOrder = orderIterator:getNextOrder(),
						MaxRowCount = topSearchesRowCount,
						OnClick = self.onClickSearchPill,
					}),
				})
				else nil,

			TopKeywordsExpandable = if FFlagToolboxAssetCategorization
					and FFlagToolboxUseExpandableTopSearch
					and showTopKeywords
				then Roact.createElement(ExpandableTeaser, {
					LayoutOrder = orderIterator:getNextOrder(),
					Size = UDim2.new(0, swimlaneWidth, 0, minTopKeywordsHeight),
					Title = topKeywordsText,
					TeaserSize = Vector2.new(0, searchPillRowHeight),
				}, {
					SearchList = Roact.createElement(SearchList, {
						Items = topKeywords,
						ItemMinWidth = searchPillTheme.padding.left + searchPillTheme.padding.left,
						MaxRowCount = topSearchesRowCount,
						OnClick = self.onClickSearchPill,
					}),
				})
				else nil,

			AssetSections = Roact.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				LayoutOrder = orderIterator:getNextOrder(),
				Size = UDim2.new(1, 0, 0, 0),
			}, assetSectionsElems),

			GridHeader = assetSections[assetSectionCount] and Roact.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.XY,
				BackgroundTransparency = 1,
				Font = sectionHeaderTheme.font,
				LayoutOrder = orderIterator:getNextOrder(),
				Size = UDim2.new(1, 0, 0, sectionHeaderTheme.textSize),
				Text = localization:getText("HomeView", assetSections[assetSectionCount].name),
				TextColor3 = sectionHeaderTheme.textColor,
				TextSize = sectionHeaderTheme.textSize,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
		})
	end
end

function HomeView:render()
	local props: HomeViewProps = self.props

	local categoryName = props.CategoryName
	local layoutOrder = props.LayoutOrder
	local position = props.Position
	local sortName = props.SortName
	local size = props.Size
	local theme = props.Stylizer
	local assetSections = props.AssetSections
	local sectionName = assetSections[#assetSections] and assetSections[#assetSections].name or nil

	-- Props from AssetLogicWrapper
	local canInsertAsset = props.CanInsertAsset
	local onAssetPreviewButtonClicked = props.OnAssetPreviewButtonClicked
	local tryInsert = props.TryInsert
	local tryOpenAssetConfig = props.TryOpenAssetConfig

	-- NOTE: We must call createTopContent here to prevent ResultsFetcher from
	-- being called multiple times on AssetGrid re-render.
	local topContentElems = self.createTopContent()
	local renderTopContent = function()
		return topContentElems
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 0,
		Size = UDim2.new(1, 0, 1, 0),
		[Roact.Ref] = self.sizerRef,
		[Roact.Change.AbsoluteSize] = self.onOverallAbsoluteSizeChange,
	}, {
		ResultsFetcher.Generator({
			networkInterface = getNetwork(self),
			categoryName = categoryName,
			sortName = sortName,
			searchTerm = nil,
			sectionName = sectionName,
			initialPageSize = INITIAL_PAGE_SIZE,
			render = function(resultsState)
				if resultsState.loading and #resultsState.assetIds == 0 then
					return Roact.createElement("Frame", {
						BackgroundColor3 = theme.backgroundColor,
						LayoutOrder = layoutOrder,
						Position = position,
						Size = size,
					}, {
						LoadingIndicator = Roact.createElement(LoadingIndicator, {
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.new(0.5, 0, 0.5, 0),
						}),
					})
				else
					return AssetGrid({
						AssetIds = resultsState.assetIds,
						AssetMap = resultsState.assetMap,
						LayoutOrder = layoutOrder,
						Position = position,
						RenderTopContent = renderTopContent,
						RequestNextPage = resultsState.fetchNextPage,
						Size = size,

						-- Props from AssetLogicWrapper
						CanInsertAsset = canInsertAsset,
						OnAssetPreviewButtonClicked = onAssetPreviewButtonClicked,
						TryInsert = tryInsert,
						TryOpenAssetConfig = tryOpenAssetConfig,
					})
				end
			end,
		}),
	})
end

local function mapDispatchToProps(dispatch)
	return {
		getAssetPreviewDataForStartup = function(assetId, tryInsert, localization, networkInterface)
			dispatch(GetAssetPreviewDataForStartup(assetId, tryInsert, localization, networkInterface))
		end,
	}
end

HomeView = withContext({
	Localization = ContextServices.Localization,
	Settings = Settings,
	Stylizer = ContextServices.Stylizer,
})(HomeView)

return RoactRodux.connect(nil, mapDispatchToProps)(HomeView)
