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

local FFlagFixToolboxEmptyRender = game:DefineFastFlag("FixToolboxEmptyRender", false)
local FFlagUseCategoryNameInToolbox = game:GetFastFlag("UseCategoryNameInToolbox")

local GuiService = game:GetService("GuiService")

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)
local Cryo = require(Libs.Cryo)

local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Layouter = require(Plugin.Core.Util.Layouter)
local Category = require(Plugin.Core.Types.Category)

local getNetwork = ContextGetter.getNetwork
local getSettings = ContextGetter.getSettings
local getModal = ContextGetter.getModal
local withLocalization = ContextHelper.withLocalization

local ContextServices = require(Libs.Framework.ContextServices)
local Settings = require(Plugin.Core.ContextServices.Settings)

local AssetGridContainer = require(Plugin.Core.Components.AssetGridContainer)
local InfoBanner = require(Plugin.Core.Components.InfoBanner)
local NoResultsDetail = require(Plugin.Core.Components.NoResultsDetail)
local LoadingIndicator = require(Plugin.Core.Components.LoadingIndicator)
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

	self.state = {
		lowerIndexToRender = 0,
		upperIndexToRender = 0,
		assetIds = {},
	}

	self.headerHeight = 0
	self.containerWidth = 0
	self.scrollingFrameRef = Roact.createRef()

	local function tryRerender(self)
		local scrollingFrame = self.scrollingFrameRef.current
		if not scrollingFrame then return end
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

	self.onScroll = function()
		-- We we are previewing the asset, we shouldn't be able
		-- to scroll tbe main view of the Toolbox
		if not self.props.isPreviewing then
			tryRerender(self)
		end
	end

	self.onAssetGridContainerChanged = function()
		tryRerender(self)
	end

	self.requestNextPage = function()
		settings = self.props.Settings:get("Plugin")
		self.props.nextPage(networkInterface, settings)
	end

	self.updateSearch = function(searchTerm)
		if not self.props.isSearching then
			self.props.userSearch(networkInterface, searchTerm)
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

function MainView.getDerivedStateFromProps(nextProps, lastState)
	local lowerBound = lastState.lowerIndexToRender or 0
	local upperBound = lastState.upperIndexToRender or 0

	local assetIds = Layouter.sliceAssetsFromBounds(nextProps.idsToRender or { }, lowerBound, upperBound)

	return {
		assetIds = assetIds,
		lowerIndexToRender = lowerBound,
		upperIndexToRender = upperBound,
	}
end

function MainView:didMount()
	self.scrollingFrameRef.current:GetPropertyChangedSignal("AbsoluteSize"):connect(function()
		self:calculateRenderBounds()
	end)
	self:calculateRenderBounds()
end

function MainView:calculateRenderBounds()
	local props = self.props
	local showPrices
	if FFlagUseCategoryNameInToolbox then
		showPrices = Category.shouldShowPrices(props.categoryName)
	else
		showPrices = Category.shouldShowPrices(props.currentTab, props.categoryIndex)
	end
	local lowerBound, upperBound = Layouter.calculateRenderBoundsForScrollingFrame(self.scrollingFrameRef.current, 
		self.containerWidth, self.headerHeight, showPrices)

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
	-- Check if the toolbox has empty space
	-- If there is then request the next page
	local spaceToDisplay = self.state.upperIndexToRender - self.state.lowerIndexToRender
	local displayed = #self.state.assetIds

	local networkErrors = self.props.networkErrors or {}
	local networkError = networkErrors[#networkErrors]

	-- If I have recieved an error code, I should not request more data
	-- And user's action to request more data will reset my network error status
	if (not networkError) and displayed < spaceToDisplay and displayed ~= 0 then
		self.requestNextPage()
	end

	if FFlagFixToolboxEmptyRender then
		if prevProps.idsToRender ~= self.props.idsToRender then
			self:calculateRenderBounds()
		end
	end
end

function MainView:render()
	return withLocalization(function(localization, localizedContent)
		local props = self.props
		local state = self.state

		local position = props.Position or UDim2.new(0, 0, 0, 0)
		local size = props.Size or UDim2.new(1, 0, 1, 0)

		local categoryIndex = (not FFlagUseCategoryNameInToolbox) and (props.categoryIndex or 0)
		local categoryName = props.categoryName
		local suggestions = localization:getLocalizedSuggestions(props.suggestions) or {}

		local isCategoryAudio
		if FFlagUseCategoryNameInToolbox then
			isCategoryAudio = Category.categoryIsAudio(categoryName)
		else
			isCategoryAudio = Category.categoryIsAudio(props.currentTab, categoryIndex)
		end

		local isLoading = props.isLoading or false

		local maxWidth = props.maxWidth or 0

		local networkErrors = props.networkErrors or {}
		local networkError = networkErrors[#networkErrors]

		-- Need to calculate height for both rendered assets and all assets
		local idsToRender = props.idsToRender or {}
		local assetIds = state.assetIds or {}

		local assetCount = #assetIds
		local allAssetCount = #idsToRender

		local lowerIndexToRender = state.lowerIndexToRender or 0

		local containerWidth = maxWidth - (2 * Constants.MAIN_VIEW_PADDING) - Constants.SCROLLBAR_PADDING

		local showPrices
		if FFlagUseCategoryNameInToolbox then
			showPrices = Category.shouldShowPrices(props.categoryName)
		else
			showPrices = Category.shouldShowPrices(props.currentTab, props.categoryIndex)
		end

		-- Add a bit extra to the container so we can see the details of the assets on the last row
		local allAssetsHeight = Layouter.calculateAssetsHeight(allAssetCount, containerWidth, showPrices)
			+ Constants.ASSET_OUTLINE_EXTRA_HEIGHT

		local suggestionIntro = localizedContent.Sort.ByText

		local creatorName = props.creator and props.creator.Name
		local searchTerm = props.searchTerm
		local showTags = (creatorName ~= nil) or (#searchTerm > 0) or (props.audioSearchInfo ~= nil)

		local headerHeight, headerToBodyPadding = Layouter.calculateMainViewHeaderHeight(showTags,
			suggestionIntro, suggestions, containerWidth, props.creator)

		local fullInnerHeight = headerHeight + allAssetsHeight + headerToBodyPadding
		local canvasHeight = fullInnerHeight + (2 * Constants.MAIN_VIEW_PADDING)

		local hasResults
		if FFlagFixToolboxEmptyRender then
			hasResults = allAssetCount > 0
		else
			hasResults = assetCount > 0
		end

		local showInfoBanner = not hasResults and not isLoading

		local noResultsDetailProps = nil

		local isPlugin
		if FFlagUseCategoryNameInToolbox then
			isPlugin = Category.categoryIsPlugin(props.categoryName)
		else
			isPlugin = Category.categoryIsPlugin(props.currentTab, categoryIndex)
		end
		if showInfoBanner and isPlugin then
			noResultsDetailProps = {
				onLinkClicked = function()
					GuiService:OpenBrowserWindow(Constants.PLUGIN_LIBRARY_URL)
				end,
				content = localizedContent.NoPluginsFound
			}
		end

		-- Need to shift the position of AssetGridContainer depending on how many rows we've cut off the start
		local assetsPerRow = Layouter.getAssetsPerRow(containerWidth)
		local assetHeight = Layouter.getAssetCellHeightWithPadding(showPrices)
		local gridContainerOffset = math.max(math.floor(lowerIndexToRender / assetsPerRow) * assetHeight, 0)

		local scrollingEnabled = not props.isPreviewing
		local showSearchOptions = props.showSearchOptions
		getModal(self).onSearchOptionsToggled(showSearchOptions)

		local tryOpenAssetConfig = props.tryOpenAssetConfig

		self.containerWidth = containerWidth
		self.headerHeight = headerHeight

		return Roact.createElement("Frame", {
			Position = position,
			Size = size,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			ScrollingFrame = Roact.createElement(StyledScrollingFrame, {
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, 0, 1, 0),
				CanvasSize = UDim2.new(0, 0, 0, canvasHeight),
				ZIndex = 1,

				scrollingEnabled = scrollingEnabled,

				[Roact.Ref] = self.scrollingFrameRef,
				onScroll = self.onScroll,
			}, {
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

				NoResultsDetail = noResultsDetailProps and Roact.createElement(NoResultsDetail, Cryo.Dictionary.join({
					Position = UDim2.new(0, 0, 0, 66 + headerHeight),
					ZIndex = 2
				}, noResultsDetailProps)),

				AssetGridContainer = Roact.createElement(AssetGridContainer, {
					Position = UDim2.new(0, 0, 0, headerHeight + headerToBodyPadding + gridContainerOffset),

					assetIds = assetIds,
					searchTerm = searchTerm,
					categoryIndex = (not FFlagUseCategoryNameInToolbox) and (categoryIndex),
					categoryName = categoryName,
					mostRecentAssetInsertTime = self.props.mostRecentAssetInsertTime, -- TODO: Remove when retiring FFlagToolboxFixDuplicateAssetInsertions as True

					ZIndex = 1,

					onAssetGridContainerChanged = self.onAssetGridContainerChanged,
					tryOpenAssetConfig = tryOpenAssetConfig,
					onAssetInsertionSuccesful = self.props.onAssetInsertionSuccesful,
				}),
			}),

			SearchOptions = showSearchOptions and Roact.createElement(SearchOptions, {
				LiveSearchData = props.liveSearchData,
				SortIndex = props.sortIndex,
				updateSearch = self.updateSearch,
				onClose = self.onSearchOptionsClosed,
				showAudioSearch = isCategoryAudio,
			}),

			InfoBanner = showInfoBanner and Roact.createElement(InfoBanner, {
				Position = UDim2.new(0, 0, 0, 16 + headerHeight),
				Text = localizedContent.InfoBannerText,
			}),

			LoadingIndicator = isLoading and Roact.createElement(LoadingIndicator, {
				AnchorPoint = Vector2.new(0.5, 1),
				Position = UDim2.new(0.5, 0, 1, -16),
				ZIndex = 3,
			}),

			-- TODO CLIDEVSRVS-1591: Temporarily disable until finished
			NetworkError = (not disableNetworkErrorsToasts) and networkError and Roact.createElement(Toast, {
				Text = ("Network Error: %s"):format(networkError and networkError.responseBody or "")
			}),
		})
	end)
end

ContextServices.mapToProps(MainView, {
	Settings = Settings,
})

local function mapStateToProps(state, props)
	state = state or {}

	local assets = state.assets or {}
	local pageInfo = state.pageInfo or {}

	local liveSearchData
	if state.liveSearch then
		liveSearchData = {
			searchTerm = state.liveSearch.searchTerm,
			isSearching = state.liveSearch.isSearching,
			results = state.liveSearch.results
		}
	end

	return {
		idsToRender = assets.idsToRender or {},
		isLoading = assets.isLoading or false,

		isPreviewing = assets.isPreviewing or false,

		networkErrors = state.networkErrors or {},

		audioSearchInfo = pageInfo.audioSearchInfo,
		categoryIndex = (not FFlagUseCategoryNameInToolbox) and (pageInfo.categoryIndex or 1),
		categoryName = FFlagUseCategoryNameInToolbox and (pageInfo.categoryName or Category.DEFAULT.name) or nil,
		sortIndex = pageInfo.sortIndex or 1,
		searchTerm = pageInfo.searchTerm or "",
		creator = pageInfo.creator,
		currentTab = (not FFlagUseCategoryNameInToolbox) and (pageInfo.currentTab),

		liveSearchData = liveSearchData or {},
	}
end

local function mapDispatchToProps(dispatch)
	return {
		nextPage = function(networkInterface, settings)
			dispatch(NextPageRequest(networkInterface, settings))
		end,

		-- User search (searching as the user types in the search bar)
		userSearch = function(networkInterface, searchTerm)
			dispatch(UserSearchRequest(networkInterface, searchTerm))
		end,

		searchWithOptions = function(networkInterface, settings, options)
			dispatch(SearchWithOptions(networkInterface, settings, options))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(MainView)
