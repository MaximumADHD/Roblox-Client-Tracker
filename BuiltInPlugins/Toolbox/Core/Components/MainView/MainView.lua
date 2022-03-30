--[[
	Central part of the toolbox

	Props:
		UDim2 position = UDim2.new(0, 0, 0, 0)
		UDim2 size = UDim2.new(1, 0, 1, 0)

		[number] idsToRender

		number maxWidth

		string categoryName

		Suggestions suggestions

		NetworkErrors networkErrors

		boolean isLoading

		boolean showSearchOptions

		callback selectSort()
		callback requestSearch()
		callback nextPage()
		callback tryOpenAssetConfig, invoke assetConfig page with an assetId.
]]
local FFlagToolboxAssetGridRefactor = game:GetFastFlag("ToolboxAssetGridRefactor6")
local FFlagToolboxRefactorSearchOptions = game:GetFastFlag("ToolboxRefactorSearchOptions")

local GuiService = game:GetService("GuiService")

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local Cryo = require(Packages.Cryo)
local Framework = require(Packages.Framework)

local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Layouter = require(Plugin.Core.Util.Layouter)
local Category = require(Plugin.Core.Types.Category)
local showRobloxCreatedAssets = require(Plugin.Core.Util.ToolboxUtilities).showRobloxCreatedAssets

local getNetwork = ContextGetter.getNetwork
local getSettings = ContextGetter.getSettings
local getModal = ContextGetter.getModal
local withLocalization = ContextHelper.withLocalization

local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext
local Settings = require(Plugin.Core.ContextServices.Settings)

local AssetGridContainer_DEPRECATED = require(Plugin.Core.Components.AssetGridContainer_DEPRECATED)
local AssetGridContainer = require(Plugin.Core.Components.AssetGridContainer)

local InfoBanner = require(Plugin.Core.Components.InfoBanner)
local NoResultsDetail = require(Plugin.Core.Components.NoResultsDetail)
local LoadingIndicator = Framework.UI.LoadingIndicator

local MainViewHeader = require(Plugin.Core.Components.MainView.MainViewHeader)
local StyledScrollingFrame = require(Plugin.Core.Components.StyledScrollingFrame)
local Toast = require(Plugin.Core.Components.Toast)
local SearchOptions = require(Plugin.Core.Components.SearchOptions.SearchOptions)

local NextPageRequest = require(Plugin.Core.Networking.Requests.NextPageRequest)
local UserSearchRequest = require(Plugin.Core.Networking.Requests.UserSearchRequest)
local SearchWithOptions = require(Plugin.Core.Networking.Requests.SearchWithOptions)

local disableNetworkErrorsToasts = true

local MainView = Roact.PureComponent:extend("MainView")

function MainView:init(props)
	local networkInterface = getNetwork(self)
	local settings = getSettings(self)

	if not FFlagToolboxAssetGridRefactor then
		self.state = {
			lowerIndexToRender = 0,
			upperIndexToRender = 0,
			assetIds = {},
		}
	end

	self.headerHeight = 0
	self.containerWidth = 0
	self.scrollingFrameRef = Roact.createRef()

	local function tryRerender(self)
		if not FFlagToolboxAssetGridRefactor then
			local scrollingFrame = self.scrollingFrameRef.current
			if not scrollingFrame then
				return
			end
			local canvasY = scrollingFrame.CanvasPosition.Y
			local windowHeight = scrollingFrame.AbsoluteWindowSize.Y
			local canvasHeight = scrollingFrame.CanvasSize.Y.Offset

			-- Where the bottom of the scrolling frame is relative to canvas size
			local bottom = canvasY + windowHeight
			local dist = canvasHeight - bottom

			if dist < Constants.DIST_FROM_BOTTOM_BEFORE_NEXT_PAGE then
				self.requestNextPage()
			end

			self:calculateRenderBounds()
		end
	end

	self.onScroll = function()
		if FFlagToolboxAssetGridRefactor then
			return
		end
		-- We we are previewing the asset, we shouldn't be able
		-- to scroll tbe main view of the Toolbox
		if not self.props.isPreviewing then
			tryRerender(self)
		end
	end

	self.onAssetGridContainerChanged = function()
		if FFlagToolboxAssetGridRefactor then
			return
		end
		tryRerender(self)
	end

	self.requestNextPage = function()
		settings = self.props.Settings:get("Plugin")
		self.props.nextPage(networkInterface, settings)
	end

	if not FFlagToolboxRefactorSearchOptions then
		self.updateSearch = function(searchTerm, extraDetails)
			if not self.props.isSearching then
				self.props.userSearch(networkInterface, searchTerm, extraDetails)
			end
		end

		self.onSearchOptionsClosed = function(options)
			if options then
				settings = self.props.Settings:get("Plugin")
				self.props.searchWithOptions(networkInterface, settings, options)
			end
			if self.props.onSearchOptionsToggled then
				self.props.onSearchOptionsToggled()
			end
		end
	end
end

function MainView.getDerivedStateFromProps(nextProps, lastState)
	if not FFlagToolboxAssetGridRefactor then
		local lowerBound = lastState.lowerIndexToRender or 0
		local upperBound = lastState.upperIndexToRender or 0

		local assetIds = Layouter.sliceAssetsFromBounds(nextProps.idsToRender or {}, lowerBound, upperBound)

		return {
			assetIds = assetIds,
			lowerIndexToRender = lowerBound,
			upperIndexToRender = upperBound,
		}
	end
end

function MainView:didMount()
	if not FFlagToolboxAssetGridRefactor then
		self.scrollingFrameRef.current:GetPropertyChangedSignal("AbsoluteSize"):connect(function()
			self:calculateRenderBounds()
		end)
		self:calculateRenderBounds()
	end
end

function MainView:calculateRenderBounds()
	if FFlagToolboxAssetGridRefactor then
		return
	end
	local props = self.props
	local showPrices = Category.shouldShowPrices(props.categoryName)
	local lowerBound, upperBound = Layouter.calculateRenderBoundsForScrollingFrame(
		self.scrollingFrameRef.current,
		self.containerWidth,
		self.headerHeight,
		showPrices
	)

	-- If either bound has changed then recalculate the assets
	if lowerBound ~= self.state.lowerIndexToRender or upperBound ~= self.state.upperIndexToRender then
		local assetIds = Layouter.sliceAssetsFromBounds(self.props.idsToRender or {}, lowerBound, upperBound)

		self:setState({
			assetIds = assetIds,
			lowerIndexToRender = lowerBound,
			upperIndexToRender = upperBound,
		})
	end
end

function MainView:didUpdate(prevProps, prevState)
	if FFlagToolboxAssetGridRefactor then
		return
	end
	-- Check if the toolbox has empty space
	-- If there is then request the next page
	local spaceToDisplay = self.state.upperIndexToRender - self.state.lowerIndexToRender
	local displayed = #self.state.assetIds

	local networkErrors = self.props.networkErrors or {}
	local networkError = networkErrors[#networkErrors]

	-- If I have recieved an error code, I should not request more data
	-- And user's action to request more data will reset my network error status
	if not networkError and displayed < spaceToDisplay and displayed ~= 0 then
		self.requestNextPage()
	end

	if prevProps.idsToRender ~= self.props.idsToRender then
		self:calculateRenderBounds()
	end
end

function MainView:render()
	return withLocalization(function(localization, localizedContent)
		local props = self.props
		local state = self.state

		local position = props.Position or UDim2.new(0, 0, 0, 0)
		local size = props.Size or UDim2.new(1, 0, 1, 0)

		local categoryName = props.categoryName
		local suggestions = localization:getLocalizedSuggestions(props.suggestions) or {}

		local isCategoryAudio = Category.categoryIsAudio(categoryName)

		local isLoading = props.isLoading or false

		local maxWidth = props.maxWidth or 0

		local networkErrors = props.networkErrors or {}
		local networkError = networkErrors[#networkErrors]

		local idsToRender
		local assetIds
		local assetCount
		local allAssetCount
		if FFlagToolboxAssetGridRefactor then
			allAssetCount = props.allAssetCount
			assetCount = props.allAssetCount
		else
			-- Need to calculate height for both rendered assets and all assets
			idsToRender = props.idsToRender or {}
			assetIds = state.assetIds or {}
			assetCount = #assetIds
			allAssetCount = #idsToRender
		end

		local lowerIndexToRender = state.lowerIndexToRender or 0

		local containerWidth = maxWidth - (2 * Constants.MAIN_VIEW_PADDING) - Constants.SCROLLBAR_PADDING

		local showPrices = Category.shouldShowPrices(props.categoryName)

		local allAssetsHeight
		if not FFlagToolboxAssetGridRefactor then
			-- Add a bit extra to the container so we can see the details of the assets on the last row
			allAssetsHeight = Layouter.calculateAssetsHeight(allAssetCount, containerWidth, showPrices)
				+ Constants.ASSET_OUTLINE_EXTRA_HEIGHT
		end

		local suggestionIntro = localizedContent.Sort.ByText

		local creatorName = props.creator and props.creator.Name
		local searchTerm = props.searchTerm
		local showTags = (creatorName ~= nil) or (#searchTerm > 0) or (props.audioSearchInfo ~= nil)

		local showCreatorSearch
		if not FFlagToolboxRefactorSearchOptions then
			showCreatorSearch = true
			if showRobloxCreatedAssets() then
				showCreatorSearch = false
			end
		end

		local headerHeight, headerToBodyPadding = Layouter.calculateMainViewHeaderHeight(
			showTags,
			suggestionIntro,
			suggestions,
			containerWidth
		)

		local canvasHeight
		if not FFlagToolboxAssetGridRefactor then
			local fullInnerHeight = headerHeight + allAssetsHeight + headerToBodyPadding
			canvasHeight = fullInnerHeight + (2 * Constants.MAIN_VIEW_PADDING)
		end

		local hasResults = allAssetCount > 0

		local showInfoBanner = not hasResults and not isLoading

		local noResultsDetailProps = nil

		local isPlugin = Category.categoryIsPlugin(props.categoryName)
		if showInfoBanner and isPlugin then
			noResultsDetailProps = {
				onLinkClicked = function()
					GuiService:OpenBrowserWindow(Constants.PLUGIN_LIBRARY_URL)
				end,
				content = localizedContent.NoPluginsFound,
			}
		end

		local assetsPerRow
		local assetHeight
		local gridContainerOffset
		local scrollingEnabled
		if not FFlagToolboxAssetGridRefactor then
			-- Need to shift the position of AssetGridContainer depending on how many rows we've cut off the start
			assetsPerRow = Layouter.getAssetsPerRow(containerWidth)
			assetHeight = Layouter.getAssetCellHeightWithPadding(showPrices)
			gridContainerOffset = math.max(math.floor(lowerIndexToRender / assetsPerRow) * assetHeight, 0)
			scrollingEnabled = not props.isPreviewing
		end

		local showSearchOptions
		if not FFlagToolboxRefactorSearchOptions then
			showSearchOptions = props.showSearchOptions
			getModal(self).onSearchOptionsToggled(showSearchOptions)
		end

		local tryOpenAssetConfig = props.tryOpenAssetConfig

		self.containerWidth = containerWidth
		self.headerHeight = headerHeight

		return Roact.createElement("Frame", {
			Position = position,
			Size = size,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			ScrollingFrame = Roact.createElement(
				FFlagToolboxAssetGridRefactor and "Frame" or StyledScrollingFrame,
				FFlagToolboxAssetGridRefactor
						and {
							BackgroundTransparency = 1,
							Size = UDim2.new(1, 0, 1, 0),
						}
					or {
						Position = UDim2.new(0, 0, 0, 0),
						Size = UDim2.new(1, 0, 1, 0),
						CanvasSize = UDim2.new(0, 0, 0, canvasHeight),
						ZIndex = 1,

						scrollingEnabled = scrollingEnabled,

						[Roact.Ref] = self.scrollingFrameRef,
						onScroll = self.onScroll,
					},
				{
					UIPadding = Roact.createElement("UIPadding", {
						PaddingBottom = UDim.new(0, Constants.MAIN_VIEW_PADDING),
						PaddingLeft = UDim.new(0, Constants.MAIN_VIEW_PADDING),
						PaddingRight = UDim.new(0, Constants.MAIN_VIEW_PADDING),
						PaddingTop = UDim.new(0, Constants.MAIN_VIEW_PADDING),
					}),

					Header = Roact.createElement(MainViewHeader, {
						suggestions = suggestions,
						containerWidth = containerWidth,
						showTags = showTags,
					}),

					NoResultsDetail = noResultsDetailProps and Roact.createElement(
						NoResultsDetail,
						Cryo.Dictionary.join({
							Position = UDim2.new(0, 0, 0, 66 + headerHeight),
							ZIndex = 2,
						}, noResultsDetailProps)
					),

					AssetGridContainer = not FFlagToolboxAssetGridRefactor and Roact.createElement(
						AssetGridContainer_DEPRECATED,
						{
							Position = UDim2.new(0, 0, 0, headerHeight + headerToBodyPadding + gridContainerOffset),

							assetIds = assetIds,
							searchTerm = searchTerm,
							categoryName = categoryName,

							ZIndex = 1,

							onAssetGridContainerChanged = self.onAssetGridContainerChanged,
							tryOpenAssetConfig = tryOpenAssetConfig,
							onAssetInsertionSuccesful = self.props.onAssetInsertionSuccesful,
						}
					),
				}
			),

			AssetGridContainerNew = FFlagToolboxAssetGridRefactor and Roact.createElement(AssetGridContainer, {
				Position = UDim2.new(0, 0, 0, headerHeight + headerToBodyPadding),
				Size = UDim2.new(1, 0, 1, -headerHeight - headerToBodyPadding),
				TryOpenAssetConfig = tryOpenAssetConfig,
			}),

			SearchOptions = if not FFlagToolboxRefactorSearchOptions and showSearchOptions then Roact.createElement(SearchOptions, {
				LiveSearchData = props.liveSearchData,
				SortIndex = props.sortIndex,
				updateSearch = self.updateSearch,
				onClose = self.onSearchOptionsClosed,
				showAudioSearch = isCategoryAudio,
				showCreatorSearch = showCreatorSearch,
			}) else nil,

			InfoBanner = showInfoBanner and Roact.createElement(InfoBanner, {
				Position = UDim2.new(0, 0, 0, 16 + headerHeight),
				Text = localizedContent.InfoBannerText,
			}),

			LoadingIndicator = isLoading and Roact.createElement(LoadingIndicator, {
				AnchorPoint = Vector2.new(0.5, 1),
				Position = UDim2.new(0.5, 0, 1, -16),
				Size = UDim2.new(0, 92, 0, 24),
				ZIndex = 3,
			}),

			-- TODO CLIDEVSRVS-1591: Temporarily disable until finished
			NetworkError = not disableNetworkErrorsToasts and networkError and Roact.createElement(Toast, {
				Text = ("Network Error: %s"):format(networkError and networkError.responseBody or ""),
			}),
		})
	end)
end

MainView = withContext({
	Settings = Settings,
})(MainView)

local function mapStateToProps(state, props)
	state = state or {}

	local assets = state.assets or {}
	local pageInfo = state.pageInfo or {}

	local liveSearchData
	if not FFlagToolboxRefactorSearchOptions then
		if state.liveSearch then
			liveSearchData = {
				searchTerm = state.liveSearch.searchTerm,
				isSearching = state.liveSearch.isSearching,
				results = state.liveSearch.results,
			}
		end
	end

	local isPreviewing
	if not FFlagToolboxAssetGridRefactor then
		isPreviewing = assets.isPreviewing or false
	end
	return {
		idsToRender = not FFlagToolboxAssetGridRefactor and assets.idsToRender or {} or nil,

		allAssetCount = FFlagToolboxAssetGridRefactor and #assets.idsToRender or nil,
		isLoading = assets.isLoading or false,

		isPreviewing = isPreviewing,

		networkErrors = state.networkErrors or {},

		audioSearchInfo = pageInfo.audioSearchInfo,
		categoryName = pageInfo.categoryName or Category.DEFAULT.name,
		sortIndex = if not FFlagToolboxRefactorSearchOptions then pageInfo.sortIndex or 1 else nil,
		searchTerm = pageInfo.searchTerm or "",
		creator = pageInfo.creator,

		liveSearchData = if not FFlagToolboxRefactorSearchOptions then liveSearchData or {} else nil,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		nextPage = function(networkInterface, settings)
			dispatch(NextPageRequest(networkInterface, settings))
		end,

		-- User search (searching as the user types in the search bar)
		userSearch = if not FFlagToolboxRefactorSearchOptions then function(networkInterface, searchTerm)
			dispatch(UserSearchRequest(networkInterface, searchTerm))
		end else nil,

		searchWithOptions = if not FFlagToolboxRefactorSearchOptions then function(networkInterface, settings, options)
			dispatch(SearchWithOptions(networkInterface, settings, options))
		end else nil,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(MainView)
