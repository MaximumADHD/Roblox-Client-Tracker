--!nocheck
local Carousel = script.Parent
local Container = Carousel.Parent
local App = Container.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local Images = require(App.ImageSet.Images)

local ScrollButton = require(Carousel.ScrollButton)

local isCallable = require(UIBlox.Utility.isCallable)

local VirtualizedList = require(Packages.VirtualizedList)
local BidirectionalFlatList = VirtualizedList.BidirectionalFlatList

local Promise = require(Packages.Promise)
local LuauPolyfill = require(Packages.LuauPolyfill)

local LEFT_ICON = Images["icons/actions/cycleLeft"]
local RIGHT_ICON = Images["icons/actions/cycleRight"]

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

	-- This callback fires when the canvas of the carousel resizes
	onContentSizeChange = t.optional(t.callback),

	-- List of ViewabilityConfig/onViewableItemsChanged pairs. A specific onViewableItemsChanged will be called
	-- when its corresponding ViewabilityConfig's conditions are met.
	viewabilityConfigCallbackPairs = t.optional(t.array(t.strictInterface({
		viewabilityConfig = t.strictInterface({
			minimumViewTime = t.optional(t.number),
			viewAreaCoveragePercentThreshold = t.optional(t.number),
			itemVisiblePercentThreshold = t.optional(t.number),
			waitForInteraction = t.optional(t.boolean),
		}),
		onViewableItemsChanged = isCallable,
	}))),
})

HorizontalCarousel.defaultProps = {
	itemSize = Vector2.new(1, 1),
	itemPadding = 12,
	maxNumOfItemsVisible = 0,
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
	onContentSizeChange: (number, number) -> (),
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
		showLeftButton = false
	elseif targetIndex > numOfItems then
		-- If scrolling past the last element, then reset the target index to the last item
		targetIndex = numOfItems
		showRightButton = false
	end

	if targetIndex + maxNumOfItemsVisible > numOfItems then
		-- If there are no more items outside of the visible carousel, then hide the scroll button
		-- There is also no need to update the scrollerFocusLock or target in this case
		showRightButton = false
	end

	return {
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
		return updateScrollState(lastState.index, lastState.maxNumOfItemsVisible, numOfItems)
	end
	return nil
end

function HorizontalCarousel:init()
	self.frameRef = Roact.createRef()
	self.listRef = Roact.createRef()

	local carouselMetaData: MetaData = {
		anchorIndex = 1,
	}

	self:setState({
		index = 1,
		hovering = false,
		showLeftButton = false,
		showRightButton = false,
		maxNumOfItemsVisible = self.props.maxNumOfItemsVisible,
		numOfItems = 0,
	})

	self.onMouseEnter = function(_gui, input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			self:setState(function(state)
				local anchorIndex = carouselMetaData.anchorIndex
				return LuauPolyfill.Object.assign(
					updateScrollState(anchorIndex, state.maxNumOfItemsVisible, state.numOfItems),
					{ hovering = true }
				)
			end)
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
		self:setState(function(state, props)
			local maxNumOfItemsVisible = math.floor(totalWidth / (props.itemSize.X + props.itemPadding))
			return { maxNumOfItemsVisible = maxNumOfItemsVisible }
		end)
	end

	self.onScrollUpdate = function(data)
		local elementWidth = self.props.itemSize.X + self.props.itemPadding
		local canvasHorizontalPosition = data.CanvasPosition.X > 0 and data.CanvasPosition.X or 0
		local anchorIndex = math.floor(canvasHorizontalPosition / elementWidth) + 1

		carouselMetaData = {
			anchorIndex = anchorIndex,
			-- TODO: VirtualizedList doesn't support animation currently
			animationActive = false,
		}
	end

	self.scrollLeft = function()
		if carouselMetaData.animationActive then
			return
		end
		self:setState(function(state, props)
			local newIndex = carouselMetaData.anchorIndex - state.maxNumOfItemsVisible
			if self.listRef then
				self.listRef.current:scrollToIndex({
					animated = true,
					index = newIndex > 1 and newIndex or 1,
					viewOffset = props.itemSize.X + props.itemPadding,
				})
			end
			return updateScrollState(newIndex, state.maxNumOfItemsVisible, state.numOfItems)
		end)
	end

	self.scrollRight = function()
		if carouselMetaData.animationActive then
			return
		end
		self:setState(function(state, props)
			local newIndex = carouselMetaData.anchorIndex + state.maxNumOfItemsVisible
			if self.listRef then
				self.listRef.current:scrollToIndex({
					animated = true,
					index = newIndex,
					viewOffset = props.itemSize.X + props.itemPadding,
				})
			end
			return updateScrollState(newIndex, state.maxNumOfItemsVisible, state.numOfItems)
		end)
	end

	self.proxyKeyExtractor = function(element, index)
		local props: Props = self.props
		return if props.identifier then props.identifier(element, index) else nil
	end

	self.proxyRenderItem = function(element)
		local props: Props = self.props
		return props.renderItem(element.item)
	end

	self.getItemLayout = function(data, index)
		local props: Props = self.props
		local itemWidth = props.itemSize.X + (props.itemPadding or 0)
		local offset = itemWidth * (index - 1) + (props.carouselMargin or 0)
		local length = if index == #data then props.itemSize.X else itemWidth

		return {
			length = length,
			offset = offset,
			index = index,
		}
	end
end

function HorizontalCarousel:render()
	local props: Props = self.props
	local state: State = self.state

	local itemList = props.itemList
	local itemSize = props.itemSize
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
		ScrollerCarousel = (state.maxNumOfItemsVisible > 0) and Roact.createElement(BidirectionalFlatList, {
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

			viewabilityConfigCallbackPairs = props.viewabilityConfigCallbackPairs,

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
				Size = UDim2.fromScale(0, 1),
				ClipsDescendants = false,
			},
			style = {
				BackgroundTransparency = 1,
				ScrollBarThickness = 0,
			},

			onContentSizeChange = props.onContentSizeChange,
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
