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
local SecondaryButton = require(UIBlox.App.Button.SecondaryButton)

local GridRow = require(UIBlox.Core.Layout.Grid.GridRow)
local withGridConfig = require(UIBlox.Core.Layout.Grid.withGridConfig)

local HEADER_HEIGHT = 28
local HEADER_PADDING = 12
local BUTTON_PADDING = 8

local BIG_VECTOR = Vector2.new(math.huge, math.huge)

local GridCarousel = Roact.PureComponent:extend("GridCarousel")

GridCarousel.validateProps = t.strictInterface({
	headerText = t.string,
	buttonText = t.optional(t.string),
	onButtonClick = t.optional(t.callback),
	layoutOrder = t.optional(t.number),

	-- inherited from GridRow, passed down to row, take precedence
	kind = t.optional(t.string),
	scrollable = t.optional(t.boolean),
	relativeHeight = t.optional(t.UDim),
	data = t.optional(t.any),
	getItem = t.optional(t.callback),
	getItemCount = t.optional(t.callback),
	renderItem = t.optional(t.callback),
	keyExtractor = t.optional(t.callback),
	getCellColspan = t.optional(t.callback),
	getCellOrder = t.optional(t.callback),

	-- inherited from FreeFlowCarousel, for backwards compatibility
	onSeeAll = t.optional(t.callback),
	itemSize = t.optional(t.Vector2),
	itemList = t.optional(t.array(t.any)),
	identifier = t.optional(t.callback),
	itemPadding = t.optional(t.number),
	carouselMargin = t.optional(t.number),
	innerPadding = t.optional(t.number),
	loadNext = t.optional(t.callback),

	carouselRef = t.optional(t.table),
})

GridCarousel.defaultProps = {
	kind = "default",
}

function GridCarousel:init()
	self.itemListCount = function(data, context)
		if self.props.scrollable then
			return #data
		else
			return math.min(#data, context.columns)
		end
	end
end

function GridCarousel:getButtonSize(style)
	local buttonTextStyle = style.Font.CaptionHeader
	local buttonFontSize = buttonTextStyle.RelativeSize * style.Font.BaseSize
	local buttonTextSize = GetTextSize(self.props.buttonText, buttonFontSize, buttonTextStyle.Font, BIG_VECTOR)
	return UDim2.fromOffset(buttonTextSize.X + BUTTON_PADDING * 2, HEADER_HEIGHT)
end

function GridCarousel:renderHeader(headerProps)
	return withStyle(function(style)
		local onButtonClick = self.props.onButtonClick or self.props.onSeeAll
		local shouldShowButton = if onButtonClick and self.props.buttonText then true else false
		local buttonSize = if shouldShowButton then self:getButtonSize(style) else UDim2.new()
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
			BackgroundTransparency = 1,
			LayoutOrder = headerProps.layoutOrder,
		}, {
			GridCarouselHeaderPadding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, headerProps.margin),
				PaddingRight = UDim.new(0, headerProps.margin),
			}),
			GridCarouselHeaderMaxWidth = if headerProps.width > 0
				then Roact.createElement("UISizeConstraint", {
					MaxSize = Vector2.new(headerProps.width, HEADER_HEIGHT),
				})
				else nil,
			GridCarouselTitle = Roact.createElement(GenericTextLabel, {
				Size = UDim2.new(1, -buttonSize.X.Offset - HEADER_PADDING, 1, 0),
				Text = self.props.headerText,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				fontStyle = style.Font.Header1,
				colorStyle = style.Theme.TextEmphasis,
				TextTruncate = Enum.TextTruncate.AtEnd,
			}),
			GridCarouselSeeAll = if shouldShowButton
				then Roact.createElement(SecondaryButton, {
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

-- applies cell relative height to container, see GridBasicRow:getSize for details
local function getCellHeight(columns, gutter, margin, relativeHeight)
	return UDim.new(
		relativeHeight.Scale / columns,
		((gutter - 2 * margin) / columns - gutter) * relativeHeight.Scale + relativeHeight.Offset
	)
end

function GridCarousel:render()
	return withGridConfig({
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
				relativeHeight + UDim.new(0, HEADER_HEIGHT + HEADER_PADDING)
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
				Padding = UDim.new(0, HEADER_PADDING),
			}),
			GridCarouselHeader = self:renderHeader({
				layoutOrder = 1,
				margin = gridConfig.margin,
				width = gridConfig.width,
			}),
			GridCarouselRow = Roact.createElement(GridRow, {
				layoutOrder = 2,
				kind = self.props.kind,
				scrollable = self.props.scrollable,
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

local GridCarouselWithRef = Roact.forwardRef(function(props, ref)
	return Roact.createElement(
		GridCarousel,
		Object.assign({}, props, {
			carouselRef = ref,
		})
	)
end)

-- this is only added to accommodate RecommendedExperienceGrid.lua and will eventually be cleaned up
GridCarouselWithRef.validateProps = GridCarousel.validateProps

return GridCarouselWithRef
