--[[
	Central part of the toolbox

	Props:
		UDim2 position = UDim2.new(0, 0, 0, 0)
		UDim2 size = UDim2.new(1, 0, 1, 0)

		[number] idsToRender

		number maxWidth

		number categoryIndex

		Suggestions suggestions

		NetworkErrors networkErrors

		boolean isLoading

		callback selectSort()
		callback requestSearch()
		callback nextPage()
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Layouter = require(Plugin.Core.Util.Layouter)

local getNetwork = ContextGetter.getNetwork
local withLocalization = ContextHelper.withLocalization

local AssetGridContainer = require(Plugin.Core.Components.AssetGridContainer)
local InfoBanner = require(Plugin.Core.Components.InfoBanner)
local LoadingIndicator = require(Plugin.Core.Components.LoadingIndicator)
local MainViewHeader = require(Plugin.Core.Components.MainView.MainViewHeader)
local StyledScrollingFrame = require(Plugin.Core.Components.StyledScrollingFrame)
local Toast = require(Plugin.Core.Components.Toast)

local NextPageRequest = require(Plugin.Core.Networking.Requests.NextPageRequest)

local disableNetworkErrorsToasts = true

local MainView = Roact.PureComponent:extend("MainView")

function MainView:init(props)
	local networkInterface = getNetwork(self)

	self.state = {
		lowerIndexToRender = 0,
		upperIndexToRender = 0,
		assetIds = {},
	}

	self.headerHeight = 0
	self.containerWidth = 0
	self.scrollingFrameRef = Roact.createRef()

	self.onScroll = function()
		local scrollingFrame = self.scrollingFrameRef.current
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

	self.requestNextPage = function()
		self.props.nextPage(networkInterface)
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
	local lowerBound, upperBound = Layouter.calculateRenderBoundsForScrollingFrame(self.scrollingFrameRef.current,
		self.containerWidth, self.headerHeight)

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

	if displayed < spaceToDisplay and displayed ~= 0 then
		self.requestNextPage()
	end
end

function MainView:render()
	return withLocalization(function(localization, localizedContent)
		local props = self.props
		local state = self.state

		local position = props.Position or UDim2.new(0, 0, 0, 0)
		local size = props.Size or UDim2.new(1, 0, 1, 0)

		local categoryIndex = props.categoryIndex or 0
		local suggestions = localization:getLocalizedSuggestions(props.suggestions) or {}
		local searchTerm = props.searchTerm or ""

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

		local containerWidth = maxWidth - (2 * Constants.MAIN_VIEW_PADDING)
			- Constants.SCROLLBAR_BACKGROUND_THICKNESS - Constants.SCROLLBAR_PADDING

		-- Add a bit extra to the container so we can see the details of the assets on the last row
		local gridContainerHeight = Layouter.calculateAssetsHeight(assetCount, containerWidth)
			+ Constants.ASSET_OUTLINE_EXTRA_HEIGHT
		local allAssetsHeight = Layouter.calculateAssetsHeight(allAssetCount, containerWidth)
			+ Constants.ASSET_OUTLINE_EXTRA_HEIGHT

		local suggestionIntro = localizedContent.Sort.ByText
		local InfoBannerText = localizedContent.InfoBannerText

		local headerHeight, headerToBodyPadding = Layouter.calculateMainViewHeaderHeight(categoryIndex, searchTerm,
			suggestionIntro, suggestions, containerWidth)

		local innerHeight = headerHeight + gridContainerHeight + headerToBodyPadding
		local fullInnerHeight = headerHeight + allAssetsHeight + headerToBodyPadding
		local canvasHeight = fullInnerHeight + (2 * Constants.MAIN_VIEW_PADDING)

		local hasResults = assetCount > 0
		local showInfoBanner = not hasResults and not isLoading

		-- Need to shift the position of AssetGridContainer depending on how many rows we've cut off the start
		local assetsPerRow = Layouter.getAssetsPerRow(containerWidth)
		local assetHeight = Layouter.getAssetCellHeightWithPadding()
		local gridContainerOffset = math.max(math.floor(lowerIndexToRender / assetsPerRow) * assetHeight, 0)

		local sorts = props.sorts

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
				Visible = not showInfoBanner,

				[Roact.Ref] = self.scrollingFrameRef,
				onScroll = self.onScroll,
			}, {
				UIPadding = Roact.createElement("UIPadding", {
					PaddingBottom = UDim.new(0, Constants.MAIN_VIEW_PADDING),
					PaddingLeft = UDim.new(0, Constants.MAIN_VIEW_PADDING),
					PaddingRight = UDim.new(0, Constants.MAIN_VIEW_PADDING),
					PaddingTop = UDim.new(0, Constants.MAIN_VIEW_PADDING),
				}),

				Container = Roact.createElement("Frame", {
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(0, containerWidth, 0, innerHeight),
					BackgroundTransparency = 1,
				}, {
					Header = Roact.createElement(MainViewHeader, {
						suggestions = suggestions,
						containerWidth = containerWidth,

						sorts = sorts,
					}),

					AssetGridContainer = Roact.createElement(AssetGridContainer, {
						Position = UDim2.new(0, 0, 0, headerHeight + headerToBodyPadding + gridContainerOffset),
						Size = UDim2.new(1, 0, 0, gridContainerHeight),

						assetIds = assetIds,

						categoryIndex = categoryIndex,

						ZIndex = 1,
					}),
				}),
			}),

			InfoBanner = showInfoBanner and Roact.createElement(InfoBanner, {
				Position = UDim2.new(0, 0, 0, 32),
				Text = InfoBannerText,
				ZIndex = 2,
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

local function mapStateToProps(state, props)
	state = state or {}

	local assets = state.assets or {}
	local pageInfo = state.pageInfo or {}

	return {
		idsToRender = assets.idsToRender or {},
		isLoading = assets.isLoading or false,

		networkErrors = state.networkErrors or {},

		categoryIndex = pageInfo.categoryIndex or 1,
		searchTerm = pageInfo.searchTerm or "",
	}
end

local function mapDispatchToProps(dispatch)
	return {
		nextPage = function(networkInterface)
			dispatch(NextPageRequest(networkInterface))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(MainView)
