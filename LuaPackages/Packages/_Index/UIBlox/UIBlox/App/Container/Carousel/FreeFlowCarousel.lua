local Carousel = script.Parent
local Container = Carousel.Parent
local App = Container.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local FitFrame = require(Packages.FitFrame)
local FitFrameOnAxis = FitFrame.FitFrameOnAxis
local isCallable = require(UIBlox.Utility.isCallable)

local CarouselHeader = require(Carousel.CarouselHeader)
local HorizontalCarousel = require(Carousel.HorizontalCarousel)

local FreeFlowCarousel = Roact.PureComponent:extend("FreeFlowCarousel")

FreeFlowCarousel.validateProps = t.strictInterface({
	-- A function to uniquely identify list items. Calling this on the same item twice
	-- should give the same result according to ==.
	identifier = t.optional(t.callback),

	-- The header text for the carousel
	headerText = t.optional(t.string),

	-- The callback for the see all arrow. if nil, the arrow won't be shown
	onSeeAll = t.optional(t.callback),

	-- The list for the items in the carousel
	itemList = t.array(t.any),

	-- A callback function, called with each visible item in the itemList when the list is rendered
	renderItem = t.callback,

	-- The size of the item
	itemSize = t.optional(t.Vector2),

	-- The padding between items
	itemPadding = t.optional(t.number),

	-- The carousel margin
	carouselMargin = t.optional(t.number),

	-- The inner padding between the header and the carousel
	innerPadding = t.optional(t.number),

	-- The layoutOrder
	layoutOrder = t.optional(t.integer),

	-- A callback function, called when the infinite scroll reaches the leading end of the itemList (index
	-- #itemList)
	loadNext = t.optional(t.callback),

	-- Set up initial maxNumOfItemsVisible without waiting for resize triegger to do it, used for testing
	maxNumOfItemsVisible = t.optional(t.integer),

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

FreeFlowCarousel.defaultProps = {
	headerText = "",
	innerPadding = 12,
	itemPadding = 12,
	carouselMargin = 24,
}

function FreeFlowCarousel:render()
	local innerPadding = self.props.innerPadding
	local carouselMargin = self.props.carouselMargin

	return Roact.createElement(FitFrameOnAxis, {
		axis = FitFrameOnAxis.Axis.Vertical,
		minimumSize = UDim2.fromScale(1, 0),
		LayoutOrder = self.props.layoutOrder,
		contentPadding = UDim.new(0, innerPadding),
		BackgroundTransparency = 1,
	}, {
		CarouselHeader = Roact.createElement(CarouselHeader, {
			headerText = self.props.headerText,
			onSeeAll = self.props.onSeeAll,
			carouselMargin = carouselMargin,
			layoutOrder = 1,
		}),
		Carousel = Roact.createElement(HorizontalCarousel, {
			identifier = self.props.identifier,
			itemList = self.props.itemList,
			renderItem = self.props.renderItem,
			itemSize = self.props.itemSize,
			itemPadding = innerPadding,
			carouselMargin = carouselMargin,
			layoutOrder = 2,
			loadNext = self.props.loadNext,
			maxNumOfItemsVisible = self.props.maxNumOfItemsVisible,
			viewabilityConfigCallbackPairs = self.props.viewabilityConfigCallbackPairs,
		}),
	})
end

return FreeFlowCarousel
