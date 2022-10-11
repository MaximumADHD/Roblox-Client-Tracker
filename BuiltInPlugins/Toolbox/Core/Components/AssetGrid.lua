--[[
	A grid of assets. Use Layouter.calculateAssetsHeight() to know how tall it will be when the assets are rendered.

	Required Props:
		table AssetIds: a table of assetIds to render.
		callback CanInsertAsset: Function on whether or not an asset can be inserted.
		callback TryInsert: attempt to insert asset.
		callback TryOpenAssetConfig, invoke assetConfig page with an assetId.

	Optional Props:
		integer LayoutOrder: The LayoutOrder of the component.
		function RenderTopContent: Function that returns the roaxct element content located above the infinite grid, but within the scrollingFrame.
		UDim2 Position: Overall position of the component.
		UDim2 Size: Overall size of the component.
]]

local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)
local Framework = require(Packages.Framework)
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)

local Dash = Framework.Dash
local Pane = Framework.UI.Pane

local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local Layouter = require(Plugin.Core.Util.Layouter)
local getModal = ContextGetter.getModal

local Settings = require(Plugin.Core.ContextServices.Settings)

local Category = require(Plugin.Core.Types.Category)

local Asset = require(Plugin.Core.Components.Asset.Asset)
local StyledScrollingFrame = require(Plugin.Core.Components.StyledScrollingFrame)

local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local withAbsoluteSizeAndPosition = Framework.Wrappers.withAbsoluteSizeAndPosition

local TOP_CONTENT_SPACING = 10

type _ExternalProps = {
	AssetIds: { number },
	AssetMap: { any }?,
	LayoutOrder: number?,
	Position: number?,
	RequestNextPage: (() -> nil),
	RenderTopContent: (() -> any)?,
	Size: UDim2?,
	-- Props available from AssetLogicWrapper
	CanInsertAsset: (() -> boolean)?,
	OnAssetPreviewButtonClicked: ((assetData: any) -> ()),
	TryInsert: ((assetData: any, assetWasDragged: boolean, insertionMethod: string) -> any),
	TryOpenAssetConfig: ((
		assetId: number?,
		flowType: string,
		instances: any,
		assetTypeEnum: Enum.AssetType
	) -> any),
}

type _InternalProps = {
	AbsoluteSize: Vector2?,
	AbsolutePosition: Vector2?,
	categoryName: string?,
	isPreviewing: boolean,
	networkErrors: any,
	Stylizer: any?,
	WrapperProps: any?, -- From withAbsoluteSizeAndPosition
}

type _State = {
	displayedAssetIds: { number },
	hoveredAssetId: number,
	lowerIndexToRender: number,
	topContentHeight: number,
	upperIndexToRender: number,
	width: number,
}

type AssetGridProps = _ExternalProps & _InternalProps

local AssetGrid = Roact.PureComponent:extend("AssetGrid")

AssetGrid.defaultProps = {
	AssetIds = {},
	Size = UDim2.new(1, 0, 1, 0),
}

function AssetGrid:didMount()
	self.calculateRenderBounds()
	self.updateTopContentHeight()
end

function AssetGrid:init(props: AssetGridProps)
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

		if dist < Constants.DIST_FROM_BOTTOM_BEFORE_NEXT_PAGE and props.RequestNextPage then
			props.RequestNextPage()
		end

		self.calculateRenderBounds(forceUpdate)
	end

	self.calculateRenderBounds = function(forceUpdate)
		self:setState(function(state)
			local props = self.props
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
			if forceUpdate or lowerBound ~= state.lowerIndexToRender or upperBound ~= state.upperIndexToRender then
				local displayedAssetIds = Layouter.sliceAssetsFromBounds(props.AssetIds or {}, lowerBound, upperBound)

				return {
					displayedAssetIds = displayedAssetIds,
					lowerIndexToRender = lowerBound,
					upperIndexToRender = upperBound,
				}
			else
				return
			end
		end)
	end

	self.onScroll = function()
		if not self.props.isPreviewing then
			self.tryRerender()
		end
		self:setState(function(state)
			if state.hoveredAssetId ~= 0 then
				return {
					hoveredAssetId = 0,
				}
			else
				return
			end
		end)
	end

	self.onAssetHovered = function(assetId)
		self:setState(function(state)
			local modal = getModal(self)
			if state.hoveredAssetId == 0 and modal.canHoverAsset() then
				return {
					hoveredAssetId = assetId,
				}
			else
				return
			end
		end)
	end

	self.onAssetHoverEnded = function(assetId)
		self:setState(function(state)
			if state.hoveredAssetId == assetId then
				return {
					hoveredAssetId = 0,
				}
			else
				return
			end
		end)
	end

	self.onFocusLost = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.Focus then
			self.onAssetHoverEnded()
		end
	end

	self.getAssetElements = function()
		local props: AssetGridProps = self.props
		local state: _State = self.state

		local absoluteSize = props.AbsoluteSize
		local absolutePosition = props.AbsolutePosition
		local canInsertAsset = props.CanInsertAsset
		local tryOpenAssetConfig = props.TryOpenAssetConfig
		local tryInsert = props.TryInsert

		local assetMap = props.AssetMap

		local showPrices = Category.shouldShowPrices(props.categoryName)
		local cellSize
		if showPrices then
			cellSize =
				UDim2.new(0, Constants.ASSET_WIDTH_NO_PADDING, 0, Constants.ASSET_HEIGHT + Constants.PRICE_HEIGHT)
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
			local resultAsset = assetMap[assetId]

			assetElements[tostring(assetId)] = Roact.createElement(Asset, {
				assetId = assetId,
				assetData = resultAsset,
				canInsertAsset = canInsertAsset,
				isHovered = assetId == self.state.hoveredAssetId,
				LayoutOrder = index,
				onAssetHovered = self.onAssetHovered,
				onAssetHoverEnded = self.onAssetHoverEnded,
				onAssetPreviewButtonClicked = props.OnAssetPreviewButtonClicked,
				parentSize = absoluteSize,
				parentAbsolutePosition = absolutePosition,
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
		local allAssetCount = #props.AssetIds
		local allAssetsHeight = Layouter.calculateAssetsHeight(allAssetCount, containerWidth, showPrices)
			+ Constants.ASSET_OUTLINE_EXTRA_HEIGHT

		return allAssetsHeight + (2 * Constants.MAIN_VIEW_PADDING)
	end

	self.getWidth = function()
		self:setState(function(state)
			local scrollingFrameRef = self.scrollingFrameRef.current
			if scrollingFrameRef and state.width ~= scrollingFrameRef.AbsoluteSize.X then
				return {
					width = scrollingFrameRef.AbsoluteSize.X,
				}
			end
		end)
	end

	self.updateTopContentHeight = function()
		self:setState(function(prevState)
			local topContentRef = self.topContentRef.current
			local topContentHeight = topContentRef and topContentRef.AbsoluteSize.Y or 0
			if topContentHeight ~= prevState.topContentHeight then
				return {
					topContentHeight = topContentHeight,
				}
			end
		end)
	end
end

function AssetGrid:didUpdate(prevProps, prevState)
	local props: AssetGridProps = self.props
	local state: _State = self.state

	local spaceToDisplay = state.upperIndexToRender - state.lowerIndexToRender
	local displayedAssetIds = state.displayedAssetIds or {}
	local displayed = #displayedAssetIds

	local networkErrors = props.networkErrors or {}
	local networkError = networkErrors[#networkErrors]

	if not networkError and displayed < spaceToDisplay and displayed ~= 0 and props.RequestNextPage then
		props.RequestNextPage()
	end

	if prevProps.AssetIds ~= props.AssetIds then
		self:calculateRenderBounds(false)
	end

	if prevState.topContentHeight ~= state.topContentHeight or prevState.width ~= state.width then
		self.tryRerender(true)
	end

	self.getWidth()
end

function AssetGrid.getDerivedStateFromProps(nextProps, lastState)
	local lowerBound = lastState.lowerIndexToRender or 0
	local upperBound = lastState.upperIndexToRender or 0
	local assetIds = Layouter.sliceAssetsFromBounds(nextProps.AssetIds or {}, lowerBound, upperBound)

	-- Hovered Asset reset
	local lastHoveredAssetStillVisible = false
	for _, assetId in ipairs(nextProps.AssetIds) do
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
		displayedAssetIds = assetIds,
		hoveredAssetId = hoveredAssetId,
		lowerIndexToRender = lowerBound,
		upperIndexToRender = upperBound,
	})
end

function AssetGrid:render()
	local props: AssetGridProps = self.props
	local state: _State = self.state

	local categoryName = props.categoryName
	local isPreviewing = props.isPreviewing
	local layoutOrder = props.LayoutOrder
	local position = props.Position
	local renderTopContent = props.RenderTopContent
	local size = props.Size
	local theme = props.Stylizer

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
	if topContent then
		gridContainerOffset += TOP_CONTENT_SPACING
	end

	local scrollingFrame = Roact.createElement(StyledScrollingFrame, {
		CanvasSize = UDim2.new(0, 0, 0, canvasHeight),
		LayoutOrder = layoutOrder,
		onScroll = self.onScroll,
		scrollingEnabled = not isPreviewing,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor = theme.homeView.backgroundColor,
		[Roact.Ref] = self.scrollingFrameRef,
		OnAbsoluteSizeChanged = self.getWidth,
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
				ZIndex = 2,
			}, {
				topContent,
			})
			else nil,

		InnerGrid = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 0, 0, gridContainerOffset + topHeight),
			Size = UDim2.new(1, 0, 1, -topHeight),
			[Roact.Event.InputEnded] = self.onFocusLost,
		}, assetElements),
	})

	return Roact.createElement(
		Pane,
		Dash.join({
			BackgroundColor = theme.homeView.backgroundColor,
			LayoutOrder = layoutOrder,
			Position = position,
			Size = size,
		}, props.WrapperProps),
		{
			StyledScrollingFrame = scrollingFrame,
		}
	)
end

AssetGrid = withContext({
	Settings = Settings,
	Stylizer = ContextServices.Stylizer,
})(AssetGrid)

local function mapStateToProps(state, props)
	state = state or {}
	local assets = state.assets or {}
	local pageInfo = state.pageInfo or {}
	local categoryName = pageInfo.categoryName or Category.DEFAULT.name

	local assetMap = props.AssetMap

	return {
		assetMap = assetMap,
		categoryName = categoryName,
		isPreviewing = assets.isPreviewing or false,
		networkErrors = state.networkErrors or {},
	}
end

AssetGrid = RoactRodux.connect(mapStateToProps, nil)(AssetGrid)

function TypedComponent(props: AssetGridProps, children: any)
	return Roact.createElement(AssetGrid, props, children)
end

return withAbsoluteSizeAndPosition(TypedComponent)
