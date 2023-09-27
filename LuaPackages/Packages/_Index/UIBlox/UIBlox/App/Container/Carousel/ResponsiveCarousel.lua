--!nonstrict
local Carousel = script.Parent
local UIBlox = Carousel.Parent.Parent.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local withStyle = require(UIBlox.Core.Style.withStyle)
local GetTextSize = require(UIBlox.Core.Text.GetTextSize)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local Button = require(UIBlox.App.Button.Button)
local ButtonType = require(UIBlox.App.Button.Enum.ButtonType)

local ResponsiveRow = require(UIBlox.Core.Layout.Responsive.ResponsiveRow)
local withGridConfig_DEPRECATED = require(UIBlox.Core.Layout.Grid.withGridConfig_DEPRECATED)

local HEADER_HEIGHT = 28
local HEADER_PADDING = 12
local BUTTON_PADDING = 8

local BIG_VECTOR = Vector2.new(math.huge, math.huge)

local ResponsiveCarousel = Roact.PureComponent:extend("ResponsiveCarousel")

ResponsiveCarousel.validateProps = t.strictInterface({
	-- Header text for the carousel or render prop callback
	-- for providing a custom header component
	headerText = t.union(t.string, t.callback),
	-- Optional header height. Used when `headerText` is not a simple
	-- string but a custom render method is provided
	headerHeight = t.optional(t.number),
	-- Optional padding between the header and the row
	headerPadding = t.optional(t.number),
	-- Text for the "See All" button.
	-- If not provided, the button will not be displayed.
	-- Ignored if `onButtonClick` and `onSeeAll` are not provided.
	buttonText = t.optional(t.string),
	-- Activation action for the "See All" button.
	-- If not provided, the button will not be displayed.
	-- Ignored if `buttonText` is not provided.
	onButtonClick = t.optional(t.callback),
	-- Order of the carousel within its container
	layoutOrder = t.optional(t.number),

	-- Row kind for the carousel's `ResponsiveRow` instances
	kind = t.optional(t.string),
	-- \[experimental\] Enables scrolling in the row.
	-- Requires `relativeHeight`.
	-- See `ResponsiveRow` for details.
	scrollable = t.optional(t.boolean),
	-- Optionally disable descendant clipping
	clipsDescendants = t.optional(t.boolean),
	-- Whether or not the row can be selected by a gamepad
	selectable = t.optional(t.boolean),
	-- Height of each cell, relative to its width.
	-- See `ResponsiveRow` for details.
	relativeHeight = t.optional(t.UDim),
	-- Data blob for all items.
	-- See `ResponsiveRow` for details.
	data = t.optional(t.any),
	-- Extracts the data of one item from the data blob.
	-- See `ResponsiveRow` for details.
	getItem = t.optional(t.callback),
	-- Counts the items contained in the data blob.
	-- See `ResponsiveRow` for details.
	getItemCount = t.optional(t.callback),
	-- Renders an item extracted by `getItem` into a roact element.
	-- See `ResponsiveRow` for details.
	renderItem = t.optional(t.callback),
	-- Extract a serialized key to identify the item.
	-- See `ResponsiveRow` for details.
	keyExtractor = t.optional(t.callback),
	-- Returns the width in columns of the item's cell.
	-- See `ResponsiveRow` for details.
	getCellColspan = t.optional(t.callback),
	-- Returns the relative order of this item in the row.
	-- See `ResponsiveRow` for details.
	getCellOrder = t.optional(t.callback),

	-- Alternative to `onButtonClick` for backwards compatibility.
	-- Ignored if `buttonText` is not provided.
	-- See `FreeFlowCarousel` for details.
	onSeeAll = t.optional(t.callback),
	-- Alternative to `relativeHeight` for backwards compatibility.
	-- Only the Y component is considered, as the width always fills the available space.
	-- See `FreeFlowCarousel` for details.
	itemSize = t.optional(t.Vector2),
	-- Alternative to `data` for backwards compatibility.
	-- See `FreeFlowCarousel` for details.
	itemList = t.optional(t.array(t.any)),
	-- Alternative to `keyExtractor` for backwards compatibility.
	-- See `FreeFlowCarousel` for details.
	identifier = t.optional(t.callback),
	-- Ignored, as spacing is controlled by the grid layout.
	-- Allowed for backwards compatibility only.
	-- See `FreeFlowCarousel` for details.
	itemPadding = t.optional(t.number),
	-- Ignored, as spacing is controlled by the grid layout.
	-- Allowed for backwards compatibility only.
	-- See `FreeFlowCarousel` for details.
	carouselMargin = t.optional(t.number),
	-- Ignored, as spacing is controlled by the grid layout.
	-- Allowed for backwards compatibility only.
	-- See `FreeFlowCarousel` for details.
	innerPadding = t.optional(t.number),
	-- Ignored, as dynamic loading is not available yet.
	-- Allowed for backwards compatibility only.
	-- See `FreeFlowCarousel` for details.
	loadNext = t.optional(t.callback),

	carouselRef = t.optional(t.table),
})

ResponsiveCarousel.defaultProps = {
	kind = "default",
	headerHeight = HEADER_HEIGHT,
	headerPadding = HEADER_PADDING,
}

function ResponsiveCarousel:init()
	self.itemListCount = function(data, context)
		if self.props.scrollable then
			return #data
		else
			return math.min(#data, context.columns)
		end
	end
end

function ResponsiveCarousel:getButtonSize(style)
	local buttonTextStyle = style.Font.CaptionHeader
	local buttonFontSize = buttonTextStyle.RelativeSize * style.Font.BaseSize
	local buttonTextSize = GetTextSize(self.props.buttonText, buttonFontSize, buttonTextStyle.Font, BIG_VECTOR)
	return UDim2.fromOffset(buttonTextSize.X + BUTTON_PADDING * 2, self.props.headerHeight)
end

function ResponsiveCarousel:renderHeader(headerProps)
	return withStyle(function(style)
		local onButtonClick = self.props.onButtonClick or self.props.onSeeAll
		local shouldShowButton = if onButtonClick and self.props.buttonText then true else false
		local buttonSize = if shouldShowButton then self:getButtonSize(style) else UDim2.new()

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, self.props.headerHeight),
			BackgroundTransparency = 1,
			LayoutOrder = headerProps.layoutOrder,
		}, {
			ResponsiveCarouselHeaderPadding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, headerProps.margin),
				PaddingRight = UDim.new(0, headerProps.margin),
			}),
			ResponsiveCarouselHeaderMaxWidth = if headerProps.width > 0
				then Roact.createElement("UISizeConstraint", {
					MaxSize = Vector2.new(headerProps.width, self.props.headerHeight),
				})
				else nil,
			ResponsiveCarouselTitle = Roact.createElement(GenericTextLabel, {
				Size = UDim2.new(1, -buttonSize.X.Offset - self.props.headerPadding, 1, 0),
				Text = self.props.headerText,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				fontStyle = style.Font.Header1,
				colorStyle = style.Theme.TextEmphasis,
				TextTruncate = Enum.TextTruncate.AtEnd,
			}),
			ResponsiveCarouselSeeAll = if shouldShowButton
				then Roact.createElement(Button, {
					buttonType = ButtonType.Secondary,
					position = UDim2.new(1, -buttonSize.X.Offset, 0, 0),
					size = buttonSize,
					text = self.props.buttonText,
					fontStyle = style.Font.CaptionHeader,
					onActivated = onButtonClick,
				})
				else nil,
		})
	end)
end

-- applies cell relative height to container, see ResponsiveBaseRow:getSize for details
local function getCellHeight(columns, gutter, margin, relativeHeight)
	return UDim.new(
		relativeHeight.Scale / columns,
		((gutter - 2 * margin) / columns - gutter) * relativeHeight.Scale + relativeHeight.Offset
	)
end

function ResponsiveCarousel:render()
	return withGridConfig_DEPRECATED({
		columns = 1,
		gutter = 0,
		margin = 0,
		width = -1,
		relativeHeight = false,
	}, self.props.kind)(function(gridConfig)
		local relativeHeight = self.props.relativeHeight
		if not relativeHeight and self.props.itemSize then
			relativeHeight = UDim.new(0, self.props.itemSize.Y)
		end
		if not relativeHeight and gridConfig.relativeHeight then
			relativeHeight = gridConfig.relativeHeight
		end

		local containerRelativeHeight = if relativeHeight
			then getCellHeight(
				gridConfig.columns,
				gridConfig.gutter,
				gridConfig.margin,
				relativeHeight + UDim.new(0, self.props.headerHeight + self.props.headerPadding)
			)
			else UDim.new(0, 0)

		return Roact.createElement("Frame", {
			Size = UDim2.new(UDim.new(1, 0), containerRelativeHeight),
			SizeConstraint = Enum.SizeConstraint.RelativeXX,
			AutomaticSize = if relativeHeight then Enum.AutomaticSize.None else Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			LayoutOrder = self.props.layoutOrder,
			[Roact.Ref] = self.props.carouselRef,
		}, {
			Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, self.props.headerPadding),
			}),
			ResponsiveCarouselHeader = if type(self.props.headerText) == "function"
				then self.props.headerText(gridConfig)
				else self:renderHeader({
					layoutOrder = 1,
					margin = gridConfig.margin,
					width = gridConfig.width,
				}),
			ResponsiveCarouselRow = Roact.createElement(ResponsiveRow, {
				layoutOrder = 2,
				kind = self.props.kind,
				scrollable = self.props.scrollable,
				clipsDescendants = self.props.clipsDescendants,
				selectable = self.props.selectable,
				relativeHeight = relativeHeight,
				data = if self.props.data ~= nil then self.props.data else self.props.itemList,
				getItem = self.props.getItem,
				getItemCount = self.props.getItemCount
					or if self.props.data == nil and self.props.itemList then self.itemListCount else nil,
				renderItem = self.props.renderItem,
				keyExtractor = self.props.keyExtractor or self.props.identifier,
				getCellColspan = self.props.getCellColspan,
				getCellOrder = self.props.getCellOrder,
			}),
		})
	end)
end

local ResponsiveCarouselWithRef = Roact.forwardRef(function(props, ref)
	return Roact.createElement(
		ResponsiveCarousel,
		Object.assign({}, props, {
			carouselRef = ref,
		})
	)
end)

-- this is only added to accommodate RecommendedExperienceGrid.lua and will eventually be cleaned up
ResponsiveCarouselWithRef.validateProps = ResponsiveCarousel.validateProps

return ResponsiveCarouselWithRef
