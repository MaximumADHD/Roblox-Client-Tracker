--!strict
--[[
	The main home view showcasing swimlanes with categories and assets as well as a infinite-scroll of grid of assets.
]]
local Plugin = script.Parent.Parent.Parent.Parent

local FFlagToolboxGetItemsDetailsUsesSingleApi = game:GetFastFlag("ToolboxGetItemsDetailsUsesSingleApi")
local FintToolboxHomeViewInitialPageSize = game:GetFastInt("ToolboxHomeViewInitialPageSize")
local Libs = Plugin.Packages

local Framework = require(Libs.Framework)
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Settings = require(Plugin.Core.ContextServices.Settings)
local Layouter = require(Plugin.Core.Util.Layouter)

local LoadingIndicator = Framework.UI.LoadingIndicator
local Pane = Framework.UI.Pane

local Asset = require(Plugin.Core.Components.Asset.Asset)
local AssetGrid = require(Plugin.Core.Components.AssetGrid)
local AssetLogicWrapper = require(Plugin.Core.Components.AssetLogicWrapper)
local IconTile = require(Plugin.Core.Components.Categorization.IconTile)

local ResultsFetcher = require(Plugin.Core.Components.ResultsFetcher)
local Category = require(Plugin.Core.Types.Category)

local Swimlane = require(Plugin.Core.Components.Categorization.Swimlane)
local AssetSwimlane = require(Plugin.Core.Components.Categorization.AssetSwimlane)

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

local HomeView = Roact.PureComponent:extend("HomeView")

type _ExternalProps = {
	AssetSections: { HomeTypes.Subcategory },
	CategoryName: string,
	LayoutOrder: number?,
	OnClickSubcategory: ((
		subcategoryPath: { string },
		subcategoryDict: { [string]: HomeTypes.Subcategory },
		categoryName: string?,
		sortName: string?
	) -> ()),
	OnClickSeeAllAssets: ((
		sectionName: string?,
		categoryName: string,
		sortName: string?,
		searchTerm: string?
	) -> ()),
	OnClickSeeAllSubcategories: ((
		subcategoryDict: { [string]: HomeTypes.Subcategory },
		categoryName: string,
		sortName: string?
	) -> ()),
	Position: number?,
	Size: UDim2?,
	SortName: string?,
	SubcategoryDict: { [string]: HomeTypes.Subcategory },
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

HomeView.defaultProps = {
	Size = UDim2.new(1, 0, 0, 0),
}

function HomeView:didMount()
	local props: HomeViewProps = self.props
	local assetIdStr = getStartupAssetId()
	local assetId = tonumber(assetIdStr)

	if assetId then
		if FFlagToolboxGetItemsDetailsUsesSingleApi then
			props.getAssetPreviewDataForStartup(assetId, self.tryInsert, props.Localization, getNetwork(self))
		else
			if props.API ~= nil then
				props.getAssetPreviewDataForStartup(assetId, self.tryInsert, props.Localization, props.API:get())
			end
		end
	end
end

function HomeView:init()
	self.onAbsoluteSizeChange = function(rbx)
		self:setState({
			swimlaneWidth = Layouter.getSwimlaneWidth(rbx.AbsoluteSize.X),
		})
	end

	self.onClickSubcategory = function(subcategoryName)
		local props: HomeViewProps = self.props
		local categoryName = props.CategoryName
		local onClickSubcategory = props.OnClickSubcategory
		local onClickSeeAllAssets = props.OnClickSeeAllAssets
		local sortName = props.SortName
		local subcategoryDict = props.SubcategoryDict
		
		local subcategoryData = subcategoryDict[subcategoryName]

		if subcategoryData.childCount == 0 and onClickSeeAllAssets then
			onClickSeeAllAssets(nil, categoryName, sortName, subcategoryData.searchKeywords)
		elseif onClickSubcategory then
			onClickSubcategory({ subcategoryName }, subcategoryData.children, categoryName, sortName)
		end
	end

	self.onClickSeeAllSubcategories = function()
		local props: HomeViewProps = self.props
		local categoryName = props.CategoryName
		local onClickSeeAllSubcategories = props.OnClickSeeAllSubcategories
		local sortName = props.SortName
		local subcategoryDict = props.SubcategoryDict

		if onClickSeeAllSubcategories then
			onClickSeeAllSubcategories(subcategoryDict, categoryName, sortName)
		end
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
		local tryInsert = props.TryInsert
		local tryOpenAssetConfig = props.TryOpenAssetConfig
		local swimlaneWidth = state.swimlaneWidth

		local subcategoryDict = props.SubcategoryDict
		local subcategoryCount = 0
		if subcategoryDict then
			for _ in pairs(subcategoryDict) do
				subcategoryCount += 1
			end
		end
		local theme = props.Stylizer

		local sectionHeaderTheme = theme.sectionHeader

		local categoriesHeaderText = localization:getText("General", "Categories")
		local gridHeaderText = localization:getText("HomeView", "TheEssentials")

		local assetSectionsElems = {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, ASSET_SECTION_SPACING),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
		}
		-- Get asset sections
		for i, section in pairs(assetSections) do
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
				Title = localization:getText("HomeView", section.name),
				TryInsert = tryInsert,
				TryOpenAssetConfig = tryOpenAssetConfig,
			})
		end

		return Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Layout = Enum.FillDirection.Vertical,
			Size = UDim2.new(1, 0, 0, 0),
			Spacing = SECTION_SPACING,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			[Roact.Change.AbsoluteSize] = self.onAbsoluteSizeChange,
		}, {
			SubcategorySwimlane = Roact.createElement(Swimlane, {
				Data = subcategoryDict,
				LayoutOrder = 1,
				OnClickSeeAll = self.onClickSeeAllSubcategories,
				OnRenderItem = self.renderSubcategory,
				Size = UDim2.new(0, swimlaneWidth, 0, 0),
				Title = categoriesHeaderText,
				Total = subcategoryCount,
			}),

			AssetSections = Roact.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, 0),
			}, assetSectionsElems),

			GridHeader = Roact.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.XY,
				BackgroundTransparency = 1,
				Font = sectionHeaderTheme.font,
				LayoutOrder = 3,
				Size = UDim2.new(1, 0, 0, sectionHeaderTheme.textSize),
				Text = gridHeaderText,
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

	return ResultsFetcher.Generator({
		networkInterface = getNetwork(self),
		categoryName = categoryName,
		sortName = sortName,
		searchTerm = nil,
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
					})
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
		end
	})
end

HomeView = AssetLogicWrapper(HomeView)

local function mapDispatchToProps(dispatch)
	return {
		getAssetPreviewDataForStartup = function(assetId, tryInsert, localization, api)
			-- TODO when removing FFlagToolboxGetItemsDetailsUsesSingleApi: rename api to networkInterface
			dispatch(GetAssetPreviewDataForStartup(assetId, tryInsert, localization, api))
		end,
	}
end

HomeView = withContext({
	API = if FFlagToolboxGetItemsDetailsUsesSingleApi then nil else ContextServices.API,
	Localization = ContextServices.Localization,
	Settings = Settings,
	Stylizer = ContextServices.Stylizer,
})(HomeView)

return RoactRodux.connect(nil, mapDispatchToProps)(HomeView)
