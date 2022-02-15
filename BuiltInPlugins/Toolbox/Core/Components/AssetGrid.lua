--[[
	A grid of assets. Use Layouter.calculateAssetsHeight() to know how tall it will be when the assets are rendered.

	Required Props:
		table assetIds: a table of assetIds to render.
		callback tryInsert: attempt to insert asset.
		callback tryOpenAssetConfig: invoke assetConfig page with an assetId.]
		Vector2 parentSize: The X,Y size of the parent container. This is used for asset impression analytics.
		Vector2 parentAbsolutePosition: The X,Y position of the parent container. This is used for asset impression analytics.
		callback tryOpenAssetConfig, invoke assetConfig page with an assetId.

	Optional Props:
		integer LayoutOrder: The LayoutOrder of the component.
		function renderTopContent: Function that returns the roaxct element content located above the infinite grid, but within the scrollingFrame.
		UDim2 Size: Overall size of the component.
]]
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
local Cryo = require(Libs.Cryo)

local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local Layouter = require(Plugin.Core.Util.Layouter)
local getModal = ContextGetter.getModal

local Settings = require(Plugin.Core.ContextServices.Settings)

local Category = require(Plugin.Core.Types.Category)

local Asset = require(Plugin.Core.Components.Asset.Asset)
local StyledScrollingFrame = require(Plugin.Core.Components.StyledScrollingFrame)

local ContextServices = require(Libs.Framework).ContextServices
local withContext = ContextServices.withContext

local AssetGrid = Roact.PureComponent:extend("AssetGrid")

AssetGrid.defaultProps = {
	assetIds = {},
	Size = UDim2.new(1, 0, 1, 0),
}

function AssetGrid:didMount()
	self.calculateRenderBounds()
end

function AssetGrid:init()
	self.state = {
		displayedAssetIds = {},
		hoveredAssetId = 0,
		lowerIndexToRender = 0,
		topContentHeight = 0,
		upperIndexToRender = 0,
		width = 0,
	}

	self.scrollingFrameRef = Roact.createRef()
	self.topContentRef = Roact.createRef()

	self.tryRerender = function(forceUpdate)
		local props = self.props
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

		if dist < Constants.DIST_FROM_BOTTOM_BEFORE_NEXT_PAGE and props.requestNextPage then
			props.requestNextPage()
		end

		self.calculateRenderBounds(forceUpdate)
	end

	self.calculateRenderBounds = function(forceUpdate)
		local props = self.props
		local state = self.state
		local showPrices = Category.shouldShowPrices(props.categoryName)

		local lowerIndexToRender = state.lowerIndexToRender
		local topContentHeight = state.topContentHeight
		local width = state.width

		local containerWidth = width - (2 * Constants.MAIN_VIEW_PADDING) - Constants.SCROLLBAR_PADDING

		local assetsPerRow = Layouter.getAssetsPerRow(containerWidth)
		local assetHeight = Layouter.getAssetCellHeightWithPadding(showPrices)
		local gridContainerOffset = math.max(math.floor(lowerIndexToRender / assetsPerRow) * assetHeight, 0)
		local topHeight = topContentHeight - gridContainerOffset
		if gridContainerOffset > topContentHeight then
			topHeight = 0
		end

		local lowerBound, upperBound = Layouter.calculateRenderBoundsForScrollingFrame(
			self.scrollingFrameRef.current,
			containerWidth,
			topHeight,
			showPrices
		)

		-- If either bound has changed then recalculate the assets
		if
			forceUpdate
			or lowerBound ~= self.state.lowerIndexToRender
			or upperBound ~= self.state.upperIndexToRender
		then
			local displayedAssetIds = Layouter.sliceAssetsFromBounds(props.assetIds or {}, lowerBound, upperBound)

			self:setState({
				displayedAssetIds = displayedAssetIds,
				lowerIndexToRender = lowerBound,
				upperIndexToRender = upperBound,
			})
		end
	end

	self.onScroll = function()
		if not self.props.isPreviewing then
			self.tryRerender()
		end
		if self.state.hoveredAssetId ~= 0 then
			self:setState({
				hoveredAssetId = 0,
			})
		end
	end

	self.onAssetHovered = function(assetId)
		local modal = getModal(self)
		if self.state.hoveredAssetId == 0 and modal.canHoverAsset() then
			self:setState({
				hoveredAssetId = assetId,
			})
		end
	end

	self.onAssetHoverEnded = function(assetId)
		if self.state.hoveredAssetId == assetId then
			self:setState({
				hoveredAssetId = 0,
			})
		end
	end

	self.onFocusLost = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.Focus then
			self.onAssetHoverEnded()
		end
	end

	self.getAssetElements = function()
		local props = self.props
		local state = self.state

		local canInsertAsset = props.canInsertAsset
		local parentSize = props.parentSize
		local parentAbsolutePosition = props.parentAbsolutePosition
		local tryOpenAssetConfig = props.tryOpenAssetConfig
		local tryInsert = props.tryInsert

		local showPrices = Category.shouldShowPrices(props.categoryName)
		local cellSize
		if showPrices then
			cellSize = UDim2.new(
				0,
				Constants.ASSET_WIDTH_NO_PADDING,
				0,
				Constants.ASSET_HEIGHT + Constants.PRICE_HEIGHT
			)
		else
			cellSize = UDim2.new(0, Constants.ASSET_WIDTH_NO_PADDING, 0, Constants.ASSET_HEIGHT)
		end

		local assetElements = {
			UIGridLayout = Roact.createElement("UIGridLayout", {
				CellPadding = UDim2.new(
					0,
					Constants.BETWEEN_ASSETS_HORIZONTAL_PADDING,
					0,
					Constants.BETWEEN_ASSETS_VERTICAL_PADDING
				),
				CellSize = cellSize,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				SortOrder = Enum.SortOrder.LayoutOrder,
				[Roact.Event.Changed] = self.tryRerender,
			}),
		}

		for index, asset in ipairs(state.displayedAssetIds) do
			local assetId = asset[1]

			assetElements[tostring(assetId)] = Roact.createElement(Asset, {
				assetId = assetId,
				canInsertAsset = canInsertAsset,
				isHovered = assetId == self.state.hoveredAssetId,
				LayoutOrder = index,
				onAssetHovered = self.onAssetHovered,
				onAssetHoverEnded = self.onAssetHoverEnded,
				parentSize = parentSize,
				parentAbsolutePosition = parentAbsolutePosition,
				tryInsert = tryInsert,
				tryOpenAssetConfig = tryOpenAssetConfig,
			})
		end
		return assetElements
	end

	self.calculateCanvasHeight = function()
		local props = self.props
		local width = self.state.width

		local containerWidth = width - (2 * Constants.MAIN_VIEW_PADDING) - Constants.SCROLLBAR_PADDING
		local showPrices = Category.shouldShowPrices(props.categoryName)
		local allAssetCount = #props.assetIds
		local allAssetsHeight = Layouter.calculateAssetsHeight(allAssetCount, containerWidth, showPrices)
			+ Constants.ASSET_OUTLINE_EXTRA_HEIGHT

		return allAssetsHeight + (2 * Constants.MAIN_VIEW_PADDING)
	end

	self.getWidth = function()
		if self.scrollingFrameRef.current then
			self:setState({
				width = self.scrollingFrameRef.current.AbsoluteSize.X,
			})
			self.tryRerender(true)
		end
	end

	self.updateTopContentHeight = function()
		self:setState(function(prevState)
			local topContentRef = self.topContentRef.current
			local topContentHeight = topContentRef and topContentRef.AbsoluteSize.Y or 0
			if topContentHeight ~= prevState.topContentRef then
				return {
					topContentHeight = topContentHeight,
				}
			else
				return
			end
		end)
	end
end

function AssetGrid:didUpdate(prevProps, prevState)
	local spaceToDisplay = self.state.upperIndexToRender - self.state.lowerIndexToRender
	local displayedAssetIds = self.state.displayedAssetIds or {}
	local displayed = #displayedAssetIds

	local networkErrors = self.props.networkErrors or {}
	local networkError = networkErrors[#networkErrors]

	if not networkError and displayed < spaceToDisplay and displayed ~= 0 then
		self.props.requestNextPage()
	end

	if prevProps.idsToRender ~= self.props.idsToRender then
		self:calculateRenderBounds()
	end

	if prevProps.topContentHeight ~= self.props.topContentHeight then
		self.tryRerender(true)
	end
end

function AssetGrid.getDerivedStateFromProps(nextProps, lastState)
	local lowerBound = lastState.lowerIndexToRender or 0
	local upperBound = lastState.upperIndexToRender or 0
	local assetIds = Layouter.sliceAssetsFromBounds(nextProps.idsToRender or {}, lowerBound, upperBound)

	-- Hovered Asset reset
	local lastHoveredAssetStillVisible = false
	for _, assetId in ipairs(nextProps.assetIds) do
		if lastState.hoveredAssetId == assetId then
			lastHoveredAssetStillVisible = true
			break
		end
	end
	local hoveredAssetId
	if lastHoveredAssetStillVisible then
		hoveredAssetId = lastState.hoveredAssetId
	else
		hoveredAssetId = 0
	end

	return Cryo.Dictionary.join(lastState, {
		assetIds = assetIds,
		hoveredAssetId = hoveredAssetId,
		lowerIndexToRender = lowerBound,
		upperIndexToRender = upperBound,
	})
end

function AssetGrid:render()
	local props = self.props
	local state = self.state

	local categoryName = props.categoryName
	local isPreviewing = props.isPreviewing
	local layoutOrder = props.LayoutOrder
	local position = props.Position
	local renderTopContent = props.renderTopContent
	local size = props.Size

	local lowerIndexToRender = state.lowerIndexToRender
	local topContentHeight = state.topContentHeight
	local width = state.width

	local assetElements = self.getAssetElements()
	local canvasHeight = self.calculateCanvasHeight()
	local containerWidth = width - (2 * Constants.MAIN_VIEW_PADDING) - Constants.SCROLLBAR_PADDING
	local showPrices = Category.shouldShowPrices(categoryName)

	local assetsPerRow = Layouter.getAssetsPerRow(containerWidth)
	local assetHeight = Layouter.getAssetCellHeightWithPadding(showPrices)
	local gridContainerOffset = math.max(math.floor(lowerIndexToRender / assetsPerRow) * assetHeight, 0)

	local topHeight = topContentHeight - gridContainerOffset
	if gridContainerOffset > topContentHeight then
		topHeight = 0
	end

	local topContent = renderTopContent and renderTopContent() or nil

	return Roact.createElement(StyledScrollingFrame, {
		CanvasSize = UDim2.new(0, 0, 0, canvasHeight),
		LayoutOrder = layoutOrder,
		onScroll = self.onScroll,
		Position = position,
		scrollingEnabled = not isPreviewing,
		Size = size,
		[Roact.Ref] = self.scrollingFrameRef,
	}, {
		UIPadding = Roact.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, Constants.MAIN_VIEW_PADDING),
			PaddingLeft = UDim.new(0, Constants.MAIN_VIEW_PADDING),
			PaddingRight = UDim.new(0, Constants.MAIN_VIEW_PADDING),
			PaddingTop = UDim.new(0, Constants.MAIN_VIEW_PADDING),
		}),

		TopContent = if topContent
			then Roact.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 0),
				[Roact.Change.AbsoluteSize] = self.updateTopContentHeight,
				[Roact.Ref] = self.topContentRef,
			}, {
				topContent,
			})
			else nil,

		InnerGrid = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 0, 0, gridContainerOffset + topHeight),
			Size = UDim2.new(1, 0, 1, -topHeight),
			[Roact.Event.InputEnded] = self.onFocusLost,
			[Roact.Change.AbsoluteSize] = self.getWidth,
		}, assetElements),
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
		categoryName = categoryName,
		isPreviewing = assets.isPreviewing or false,
		networkErrors = state.networkErrors or {},
	}
end

return RoactRodux.connect(mapStateToProps, nil)(AssetGrid)
