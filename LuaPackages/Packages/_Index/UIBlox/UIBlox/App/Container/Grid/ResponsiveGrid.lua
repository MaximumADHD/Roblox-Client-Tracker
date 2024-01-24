local Grid = script.Parent
local App = Grid.Parent.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local ResponsiveRow = require(UIBlox.Core.Layout.Responsive.ResponsiveRow)
local useResponsiveLayout = require(UIBlox.Core.Layout.Responsive.useResponsiveLayout)
local useProperties = require(UIBlox.Utility.useProperties)
local usePropertiesDeferred = require(UIBlox.Utility.usePropertiesDeferred)

type usePropertiesHook = typeof(useProperties)

export type Props = {
	-- The type of row, determines which column count and spacing values to select from config
	kind: string?,
	-- Order of the row in its container
	layoutOrder: number?,
	-- Height of each cell, relative to its width. If not provided, `AutomaticSize` will be used.
	relativeHeight: UDim?,
	-- Data blob for all items. Default accessor functions try to parse it as an array of items,
	-- but customizing `getItem`/`getItemCount` allows usage of any format.
	data: any?,
	-- Extracts the data of one item from the data blob
	getItem: ((data: any, index: number, context: ResponsiveRow.Context) -> any)?,
	-- Counts the items contained in the data blob
	getItemCount: ((data: any, context: ResponsiveRow.Context) -> number)?,
	-- Renders an item extracted by `getItem` into a roact element
	renderItem: ((item: any, context: ResponsiveRow.Context) -> React.ReactElement)?,
	-- Extract a serialized key to identify the item.
	-- If an item provides a known key, it will not be rendered again.
	-- This can improve performance.
	keyExtractor: ((item: any, index: number, context: ResponsiveRow.Context) -> string)?,
	-- Returns the width in columns of the item's cell.
	-- Values for multiple breakpoints can be returned as table with breakpoint names
	-- as keys (`"default"` as fallback), and the size/order as value.
	getCellColspan: ((item: any, context: ResponsiveRow.Context) -> number)?,
	-- Returns the height in rows of the item's cell.
	-- Values for multiple breakpoints can be returned as table with breakpoint names
	-- as keys (`"default"` as fallback), and the size/order as value.
	getCellRowspan: ((item: any, context: ResponsiveRow.Context) -> number)?,
	-- Returns the relative order of this item in the row.
	-- Values for multiple breakpoints can be returned as table with breakpoint names
	-- as keys (`"default"` as fallback), and the size/order as value.
	getCellOrder: ((item: any, context: ResponsiveRow.Context) -> number)?,
	-- Vertical absolute position of the display window
	absoluteWindowTop: number,
	-- Vertical absolute height of the display window
	absoluteWindowHeight: number,
	-- use usePropertiesDeferred else useProperties for updateDisplayLines updates
	enableDeferredRefPropEvents: boolean?,
}

-- vertical space taken by one cell => cell height + 1 gutter
local function useCellAbsoluteHeight(propRelativeHeight: UDim?, kind: string?)
	local columns = useResponsiveLayout("columns", kind) or 1
	local gutter = useResponsiveLayout("gutter", kind) or 0
	local verticalGutter = useResponsiveLayout("verticalGutter", kind) or gutter
	local margin = useResponsiveLayout("margin", kind) or 0
	local configRelativeHeight = useResponsiveLayout("relativeHeight", kind)

	local relativeHeight = propRelativeHeight or configRelativeHeight

	return React.useCallback(function(frameAbsoluteWidth: number): number?
		if relativeHeight then
			local cellAbsoluteWidth = (frameAbsoluteWidth - 2 * margin + gutter) / columns - gutter
			local cellAbsoluteHeight = cellAbsoluteWidth * relativeHeight.Scale + relativeHeight.Offset
			return math.max(cellAbsoluteHeight, 0) + verticalGutter
		else
			return nil
		end
	end, { columns, gutter, verticalGutter, margin, relativeHeight } :: { any })
end

local EMPTY_RANGE = NumberRange.new(0, 0)
local displayLinesDefault = if UIBloxConfig.responsiveGridDisplayLinesNonNil then EMPTY_RANGE else nil

local function ResponsiveGrid(props: Props, ref: React.Ref<Frame>)
	local displayLines: NumberRange?, setDisplayLines: (NumberRange?) -> () = React.useState(displayLinesDefault)
	local getCellAbsoluteHeight = useCellAbsoluteHeight(props.relativeHeight, props.kind)

	local updateDisplayLines = React.useCallback(function(absolutePosition, absoluteSize)
		if props.absoluteWindowTop and props.absoluteWindowHeight then
			local cellAbsoluteHeight = getCellAbsoluteHeight(absoluteSize.X)
			if cellAbsoluteHeight and cellAbsoluteHeight > 0 then
				local windowRelativeTop = props.absoluteWindowTop - absolutePosition.Y
				local firstLine = math.floor(math.max(windowRelativeTop, 0) / cellAbsoluteHeight) + 1
				local lineCount = math.ceil(math.max(props.absoluteWindowHeight, 0) / cellAbsoluteHeight) + 1
				return setDisplayLines(NumberRange.new(firstLine, firstLine + lineCount - 1))
			end
		end
		return setDisplayLines(displayLinesDefault)
	end, { getCellAbsoluteHeight, props.absoluteWindowTop, props.absoluteWindowHeight, setDisplayLines } :: { any })

	local useRefProps: usePropertiesHook = if props.enableDeferredRefPropEvents
		then usePropertiesDeferred
		else useProperties
	local frameRef = useRefProps(ref, updateDisplayLines, { "AbsolutePosition", "AbsoluteSize" })

	return React.createElement(ResponsiveRow, {
		kind = props.kind,
		layoutOrder = props.layoutOrder,
		scrollable = false,
		multiLine = true,
		displayLines = if props.absoluteWindowTop and props.absoluteWindowHeight then displayLines else nil,
		relativeHeight = props.relativeHeight,
		data = props.data,
		getItem = props.getItem,
		getItemCount = props.getItemCount,
		renderItem = props.renderItem,
		keyExtractor = props.keyExtractor,
		getCellColspan = props.getCellColspan,
		getCellRowspan = props.getCellRowspan,
		getCellOrder = props.getCellOrder,
		ref = frameRef,
	})
end

return React.forwardRef(ResponsiveGrid)
