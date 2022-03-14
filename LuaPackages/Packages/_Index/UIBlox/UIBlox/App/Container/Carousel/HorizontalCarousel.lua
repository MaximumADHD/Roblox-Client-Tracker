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

local DEFAULT_ITEM_PADDING = 12

local LEFT_ICON = Images["icons/actions/cycleLeft"]
local RIGHT_ICON = Images["icons/actions/cycleRight"]

local MOTOR_OPTIONS = {
	frequency = 2,
	dampingRatio = 0.9,
	restingPositionLimit = 0.5,
	restingVelocityLimit = 0.1,
}

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
	loadPrevious =  t.optional(t.callback),

	-- Animate the scrolling
	animateScrolling = t.optional(t.boolean),
})

HorizontalCarousel.defaultProps = {
	itemSize = Vector2.new(1, 1),
	itemPadding = DEFAULT_ITEM_PADDING,
}

local function updateScrollState(newIndex, maxNumOfItemsVisible, numOfItems, scrollerFocusLock)
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
		scrollerFocusLock = scrollerFocusLock + 1
		showLeftButton = false
	elseif targetIndex > numOfItems then
		-- If scrolling past the last element, then reset the target index to the last item
		targetIndex = numOfItems
		scrollerFocusLock = scrollerFocusLock + 1
		showRightButton = false
	end

	if targetIndex + maxNumOfItemsVisible > numOfItems then
		-- If there are no more items outside of the visible carousel, then hide the scroll button
		-- There is also no need to update the scrollerFocusLock or target in this case
		showRightButton = false
	end

	return {
		scrollerFocusLock = scrollerFocusLock,
		index = targetIndex,
		showLeftButton = showLeftButton,
		showRightButton = showRightButton,
		numOfItems = numOfItems,
	}
end

function HorizontalCarousel.getDerivedStateFromProps(nextProps, lastState)
	local numOfItems = #nextProps.itemList
	if lastState.numOfItems ~= numOfItems then
		return updateScrollState(lastState.index, lastState.maxNumOfItemsVisible, numOfItems, lastState.scrollerFocusLock)
	end
	return nil
end

function HorizontalCarousel:init()
	self.frameRef = Roact.createRef()
	local carouselMetaData = {}

	self:setState({
		scrollerFocusLock = 0,
		index = 1,
		hovering = false,
		showLeftButton = false,
		showRightButton = false,
		maxNumOfItemsVisible = 0,
		numOfItems = 0,
	})

	self.onMouseEnter = function(gui, input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			local anchorIndex = carouselMetaData.anchorIndex
			local newState = updateScrollState(anchorIndex,
				self.state.maxNumOfItemsVisible,
				self.state.numOfItems,
				self.state.scrollerFocusLock)
			newState.hovering = true
			self:setState(newState)
		end
	end

	self.onMouseLeave = function(gui, input)
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
		carouselMetaData = data
	end

	self.scrollLeft = function()
		if carouselMetaData.animationActive then
			return
		end
		local newIndex = carouselMetaData.anchorIndex - self.state.maxNumOfItemsVisible
		self:setState(
			updateScrollState(newIndex, self.state.maxNumOfItemsVisible, self.state.numOfItems, self.state.scrollerFocusLock + 1)
		)
	end

	self.scrollRight = function()
		if carouselMetaData.animationActive then
			return
		end
		local newIndex = carouselMetaData.anchorIndex + self.state.maxNumOfItemsVisible
		self:setState(
			updateScrollState(newIndex, self.state.maxNumOfItemsVisible, self.state.numOfItems, self.state.scrollerFocusLock + 1)
		)
	end
end

function HorizontalCarousel:render()
	local itemList = self.props.itemList
	local itemSize = self.props.itemSize
	local renderItem = self.props.renderItem
	local itemPadding = self.props.itemPadding

	local carouselMargin = self.props.carouselMargin
	local layoutOrder = self.props.layoutOrder

	local loadNext = self.props.loadNext
	local loadPrevious = self.props.loadPrevious

	local scrollLeftButton
	if self.state.hovering and self.state.showLeftButton then
		scrollLeftButton = Roact.createElement(ScrollButton, {
			icon = LEFT_ICON,
			callback = self.scrollLeft,
		})
	end

	local scrollRightButton
	if self.state.hovering and self.state.showRightButton then
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
	},{
		LeftMargin = Roact.createElement("Frame", {
			Position = UDim2.fromScale(0, 0),
			AnchorPoint = Vector2.new(0, 0),
			Size = UDim2.new(0, carouselMargin, 1, 0),
			BackgroundTransparency = 1,
			ZIndex = 2,
		},{
			ScrollLeftButton = scrollLeftButton,
		}),
		InfiniteScrollerCarousel = self.state.maxNumOfItemsVisible > 0 and Roact.createElement(Scroller, {
			identifier = self.props.identifier,
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			Position = UDim2.fromOffset(carouselMargin, 0),
			ScrollBarThickness = 0,
			ClipsDescendants = false,
			padding = UDim.new(0, itemPadding),
			orientation = Scroller.Orientation.Right,
			itemList = itemList,
			loadingBuffer = 1,
			mountingBuffer = self.state.maxNumOfItemsVisible * 3 * itemSize.X,
			loadNext = loadNext,
			loadPrevious = loadPrevious,
			focusLock = self.state.scrollerFocusLock,
			focusIndex = self.state.index,
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
		},{
			ScrollRightButton = scrollRightButton,
		}),
	})
end

return HorizontalCarousel
