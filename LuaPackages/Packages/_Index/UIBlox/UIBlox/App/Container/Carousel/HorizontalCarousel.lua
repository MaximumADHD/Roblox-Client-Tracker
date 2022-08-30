local Carousel = script.Parent
local Container = Carousel.Parent
local App = Container.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local Images = require(App.ImageSet.Images)

local ScrollButton = require(Carousel.ScrollButton)

local Core = UIBlox.Core
local Scroller = require(Core.InfiniteScroller).Scroller

local VirtualizedList = require(Packages.VirtualizedList)
local BidirectionalFlatList = VirtualizedList.BidirectionalFlatList

local Promise = require(Packages.Promise)

local UIBloxConfig = require(UIBlox.UIBloxConfig)

local DEFAULT_ITEM_PADDING = 12

local LEFT_ICON = Images["icons/actions/cycleLeft"]
local RIGHT_ICON = Images["icons/actions/cycleRight"]

local MOTOR_OPTIONS = {
	frequency = 2,
	dampingRatio = 0.9,
	restingPositionLimit = 0.5,
	restingVelocityLimit = 0.1,
}

local INITIAL_NUM_TO_RENDER = 10
local WINDOW_SIZE = 5

local HorizontalCarousel = Roact.PureComponent:extend("HorizontalCarousel")

HorizontalCarousel.validateProps = t.strictInterface({
	-- Required. The list of items to scroll through.
	itemList = t.array(t.any),

	-- A callback function, called with each visible item in the itemList when the list is rendered.
	renderItem = t.callback,

	-- A function to uniquely identify list items. Calling this on the same item twice
	-- should give the same result according to ==.
	-- See infinite scroller for more details.
	identifier = t.optional(t.callback),

	-- The size of the item
	itemSize = t.optional(t.Vector2),

	-- The padding between items
	itemPadding = t.optional(t.number),

	-- The carousel margin
	carouselMargin = t.optional(t.number),

	-- The layoutOrder
	layoutOrder = t.optional(t.integer),

	-- A callback function, called when the carousel reaches the leading end of the itemList (index
	-- #itemList).
	loadNext = t.optional(t.callback),

	-- A callback function, called when the carousel reaches the trailing end of the itemList (index 1).
	loadPrevious = t.optional(t.callback),

	-- Animate the scrolling
	animateScrolling = t.optional(t.boolean),

	-- Set up initial maxNumOfItemsVisible without waiting for resize triegger to do it, used for testing
	maxNumOfItemsVisible = t.optional(t.integer),
})

HorizontalCarousel.defaultProps = {
	itemSize = Vector2.new(1, 1),
	itemPadding = DEFAULT_ITEM_PADDING,
	maxNumOfItemsVisible = if UIBloxConfig.enableVirtualizedListForCarousel then 0 else nil,
}

type Props = {
	itemList: { [number]: any },
	renderItem: (props: any) -> Instance,
	identifier: (props: any, index: number) -> string | number,
	itemSize: Vector2,
	itemPadding: number?,
	carouselMargin: number?,
	layoutOrder: number?,
	loadNext: () -> (),
	loadPrevious: () -> (),
	animateScrolling: boolean?,
}

type State = {
	scrollerFocusLock: number?,
	index: number,
	hovering: boolean,
	showLeftButton: boolean,
	showRightButton: boolean,
	maxNumOfItemsVisible: number,
	numOfItems: number,
}

type MetaData = {
	anchorIndex: number?,
	animationActive: boolean?,
}

local function updateScrollState(
	newIndex: number?,
	maxNumOfItemsVisible: number,
	numOfItems: number?,
	scrollerFocusLock: number?
): State
	if newIndex == nil then
		return {}
	end

	--Disable the buttons because there is nothing to show
	if numOfItems == nil or numOfItems == 0 then
		return {
			showLeftButton = false,
			showRightButton = false,
		}
	end

	local targetIndex = newIndex
	local showLeftButton = true
	local showRightButton = true

	if targetIndex <= 1 then
		-- If scrolling past the first element, then reset the target index to the first item
		targetIndex = 1
		if not UIBloxConfig.enableVirtualizedListForCarousel then
			scrollerFocusLock = (scrollerFocusLock or 0) + 1
		end
		showLeftButton = false
	elseif targetIndex > numOfItems then
		-- If scrolling past the last element, then reset the target index to the last item
		targetIndex = numOfItems
		if not UIBloxConfig.enableVirtualizedListForCarousel then
			scrollerFocusLock = (scrollerFocusLock or 0) + 1
		end
		showRightButton = false
	end

	if targetIndex + maxNumOfItemsVisible > numOfItems then
		-- If there are no more items outside of the visible carousel, then hide the scroll button
		-- There is also no need to update the scrollerFocusLock or target in this case
		showRightButton = false
	end

	return {
		scrollerFocusLock = if UIBloxConfig.enableVirtualizedListForCarousel then nil else scrollerFocusLock,
		index = targetIndex,
		showLeftButton = showLeftButton,
		showRightButton = showRightButton,
		numOfItems = numOfItems,
	}
end

local promisifyCallback = function(callback: () -> ())
	if not callback then
		return nil
	end
	return Promise.is(callback) and callback or Promise.promisify(callback)
end

function HorizontalCarousel.getDerivedStateFromProps(nextProps: Props, lastState: State): State?
	local numOfItems = #nextProps.itemList
	if lastState.numOfItems ~= numOfItems then
		return updateScrollState(
			lastState.index,
			lastState.maxNumOfItemsVisible,
			numOfItems,
			if UIBloxConfig.enableVirtualizedListForCarousel then nil else lastState.scrollerFocusLock
		)
	end
	return nil
end

function HorizontalCarousel:init()
	self.frameRef = Roact.createRef()

	if UIBloxConfig.enableVirtualizedListForCarousel then
		self.listRef = Roact.createRef()
	end

	local carouselMetaData: MetaData = UIBloxConfig.enableVirtualizedListForCarousel and {
		anchorIndex = 1,
	} or {}

	self:setState({
		scrollerFocusLock = if UIBloxConfig.enableVirtualizedListForCarousel then nil else 0,
		index = 1,
		hovering = false,
		showLeftButton = false,
		showRightButton = false,
		maxNumOfItemsVisible = if UIBloxConfig.enableVirtualizedListForCarousel
			then self.props.maxNumOfItemsVisible
			else 0,
		numOfItems = 0,
	})

	self.onMouseEnter = function(_gui, input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			local anchorIndex = carouselMetaData.anchorIndex
			local newState = updateScrollState(
				anchorIndex,
				self.state.maxNumOfItemsVisible,
				self.state.numOfItems,
				if UIBloxConfig.enableVirtualizedListForCarousel then nil else self.state.scrollerFocusLock
			)
			newState.hovering = true
			self:setState(newState)
		end
	end

	self.onMouseLeave = function(_gui, input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			self:setState({
				hovering = false,
			})
		end
	end

	self.onResize = function(rbx)
		local totalWidth = rbx.AbsoluteSize.X
		local maxNumOfItemsVisible = math.floor(totalWidth / (self.props.itemSize.X + self.props.itemPadding))
		self:setState({
			maxNumOfItemsVisible = maxNumOfItemsVisible,
		})
	end

	self.onScrollUpdate = function(data)
		if UIBloxConfig.enableVirtualizedListForCarousel then
			local elementWidth = self.props.itemSize.X + self.props.itemPadding
			local canvasHorizontalPosition = data.CanvasPosition.X > 0 and data.CanvasPosition.X or 0
			local anchorIndex = math.floor(canvasHorizontalPosition / elementWidth) + 1

			carouselMetaData = {
				anchorIndex = anchorIndex,
				-- TODO: VirtualizedList doesn't support animation currently
				animationActive = false,
			}
		else
			carouselMetaData = data
		end
	end

	self.scrollLeft = function()
		if carouselMetaData.animationActive then
			return
		end
		local newIndex = carouselMetaData.anchorIndex - self.state.maxNumOfItemsVisible
		self:setState(
			updateScrollState(
				newIndex,
				self.state.maxNumOfItemsVisible,
				self.state.numOfItems,
				if UIBloxConfig.enableVirtualizedListForCarousel then nil else self.state.scrollerFocusLock + 1
			)
		)

		if UIBloxConfig.enableVirtualizedListForCarousel then
			if self.listRef then
				self.listRef.current:scrollToIndex({
					animated = true,
					index = newIndex > 1 and newIndex or 1,
					viewOffset = self.props.itemSize.X + self.props.itemPadding,
				})
			end
		end
	end

	self.scrollRight = function()
		if carouselMetaData.animationActive then
			return
		end
		local newIndex = carouselMetaData.anchorIndex + self.state.maxNumOfItemsVisible
		self:setState(
			updateScrollState(
				newIndex,
				self.state.maxNumOfItemsVisible,
				self.state.numOfItems,
				if UIBloxConfig.enableVirtualizedListForCarousel then nil else self.state.scrollerFocusLock + 1
			)
		)

		if UIBloxConfig.enableVirtualizedListForCarousel then
			if self.listRef then
				self.listRef.current:scrollToIndex({
					animated = true,
					index = newIndex,
					viewOffset = self.props.itemSize.X + self.props.itemPadding,
				})
			end
		end
	end

	self.proxyKeyExtractor = function(element, index)
		local props: Props = self.props
		return if props.identifier then props.identifier(element, index) else nil
	end

	self.proxyRenderItem = function(element)
		local props: Props = self.props
		return props.renderItem(element.item)
	end

	self.getItemLayout = function(_data, index)
		local props: Props = self.props
		local itemWidth = props.itemSize.X + (props.itemPadding or 0)
		return {
			length = itemWidth,
			offset = itemWidth * index,
			index = index,
		}
	end
end

function HorizontalCarousel:render()
	local props: Props = self.props
	local state: State = self.state

	local itemList = props.itemList
	local itemSize = props.itemSize
	local renderItem = props.renderItem
	local itemPadding = props.itemPadding

	local carouselMargin = props.carouselMargin
	local layoutOrder = props.layoutOrder

	local loadNext = props.loadNext
	local loadPrevious = props.loadPrevious

	local scrollLeftButton
	if state.hovering and state.showLeftButton then
		scrollLeftButton = Roact.createElement(ScrollButton, {
			icon = LEFT_ICON,
			callback = self.scrollLeft,
		})
	end

	local scrollRightButton
	if state.hovering and state.showRightButton then
		scrollRightButton = Roact.createElement(ScrollButton, {
			icon = RIGHT_ICON,
			callback = self.scrollRight,
		})
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, itemSize.Y),
		LayoutOrder = layoutOrder,
		BackgroundTransparency = 1,
		[Roact.Ref] = self.frameRef,
		[Roact.Event.InputBegan] = self.onMouseEnter,
		[Roact.Event.InputEnded] = self.onMouseLeave,
		[Roact.Change.AbsoluteSize] = self.onResize,
	}, {
		LeftMargin = Roact.createElement("Frame", {
			Position = UDim2.fromScale(0, 0),
			AnchorPoint = Vector2.new(0, 0),
			Size = UDim2.new(0, carouselMargin, 1, 0),
			BackgroundTransparency = 1,
			ZIndex = 2,
		}, {
			ScrollLeftButton = scrollLeftButton,
		}),
		ScrollerCarousel = if UIBloxConfig.enableVirtualizedListForCarousel
			then (state.maxNumOfItemsVisible > 0) and Roact.createElement(BidirectionalFlatList, {
				[Roact.Ref] = self.listRef,

				data = itemList,
				renderItem = self.proxyRenderItem,
				keyExtractor = self.proxyKeyExtractor,

				horizontal = true,
				initialScrollIndex = 1,
				initialNumToRender = INITIAL_NUM_TO_RENDER,
				windowSize = WINDOW_SIZE,

				onScroll = self.onScrollUpdate,

				onStartReachedThreshold = 1,
				onStartReached = promisifyCallback(loadPrevious),
				onEndReachedThreshold = 1,
				onEndReached = promisifyCallback(loadNext),

				overrideAutomaticCanvasSize = true,
				getItemLayout = self.getItemLayout,

				ItemSeparatorComponent = if itemPadding
					then function()
						return Roact.createFragment({
							ItemPadding = Roact.createElement("UIPadding", {
								PaddingRight = UDim.new(0, itemPadding),
							}),
						})
					end
					else nil,

				showDefaultLoadingIndicators = false,
				ListHeaderComponent = if carouselMargin
					then function()
						return Roact.createFragment({
							LeftCarouselMargin = Roact.createElement("Frame", {
								Position = UDim2.fromScale(0, 0),
								AnchorPoint = Vector2.new(0, 0),
								BackgroundTransparency = 1,
								Size = UDim2.new(0, carouselMargin, 1, 0),
							}),
						})
					end
					else nil,

				ListFooterComponent = if carouselMargin
					then function()
						return Roact.createFragment({
							RightCarouselMargin = Roact.createElement("Frame", {
								Position = UDim2.fromScale(0, 0),
								AnchorPoint = Vector2.new(0, 0),
								BackgroundTransparency = 1,
								Size = UDim2.new(0, carouselMargin, 1, 0),
							}),
						})
					end
					else nil,

				contentContainerStyle = {
					BackgroundTransparency = 1,
					Size = UDim2.fromScale(1, 1),
					ClipsDescendants = false,
				},
				style = {
					BackgroundTransparency = 1,
					ScrollBarThickness = 0,
				},
			}) or nil
			else (state.maxNumOfItemsVisible > 0) and Roact.createElement(Scroller, {
				identifier = props.identifier,
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
				Position = UDim2.fromOffset(carouselMargin, 0),
				ScrollBarThickness = 0,
				ClipsDescendants = false,
				padding = UDim.new(0, itemPadding),
				orientation = Scroller.Orientation.Right,
				itemList = itemList,
				loadingBuffer = 1,
				mountingBuffer = state.maxNumOfItemsVisible * 3 * itemSize.X,
				loadNext = loadNext,
				loadPrevious = loadPrevious,
				focusLock = state.scrollerFocusLock,
				focusIndex = state.index,
				anchorLocation = UDim.new(1, 0),
				estimatedItemSize = itemSize.X,
				renderItem = renderItem,
				onScrollUpdate = self.onScrollUpdate,
				animateScrolling = true,
				animateOptions = MOTOR_OPTIONS,
			}) or nil,
		RightMargin = Roact.createElement("Frame", {
			Position = UDim2.fromScale(1, 0),
			AnchorPoint = Vector2.new(1, 0),
			Size = UDim2.new(0, carouselMargin, 1, 0),
			BackgroundTransparency = 1,
			ZIndex = 2,
		}, {
			ScrollRightButton = scrollRightButton,
		}),
	})
end

return HorizontalCarousel
