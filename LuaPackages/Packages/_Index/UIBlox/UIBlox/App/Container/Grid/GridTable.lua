--!strict
local Grid = script.Parent
local App = Grid.Parent.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)

local VerticalScrollView = require(App.Container.VerticalScrollViewWithMargin)
local GridRow = require(UIBlox.Core.Layout.Grid.GridRow)
local useGridConfig = require(UIBlox.Core.Layout.Grid.useGridConfig)
local useProperties = require(UIBlox.Utility.useProperties)

export type Props = {
	-- GridRow props
	kind: string?,
	layoutOrder: number?,
	relativeHeight: UDim?,
	data: any?,
	getItem: ((data: any, index: number, context: GridRow.Context) -> any)?,
	getItemCount: ((data: any, context: GridRow.Context) -> number)?,
	renderItem: ((item: any, context: GridRow.Context) -> React.ReactElement)?,
	keyExtractor: ((item: any, index: number, context: GridRow.Context) -> string)?,
	getCellColspan: ((item: any, context: GridRow.Context) -> number)?,
	getCellRowspan: ((item: any, context: GridRow.Context) -> number)?,
	getCellOrder: ((item: any, context: GridRow.Context) -> number)?,
	-- GridTable props
	absoluteWindowTop: number,
	absoluteWindowHeight: number,
}

-- vertical space taken by one cell => cell height + 1 gutter
local function useCellAbsoluteHeight(propRelativeHeight: UDim?, kind: string?)
	local columns = useGridConfig("columns", kind) or 1
	local gutter = useGridConfig("gutter", kind) or 0
	local verticalGutter = useGridConfig("verticalGutter", kind) or gutter
	local margin = useGridConfig("margin", kind) or 0
	local configRelativeHeight = useGridConfig("relativeHeight", kind)

	local relativeHeight = propRelativeHeight or configRelativeHeight

	return React.useCallback(function(frameAbsoluteWidth: number)
		if relativeHeight then
			local cellAbsoluteWidth = (frameAbsoluteWidth - 2 * margin + gutter) / columns - gutter
			local cellAbsoluteHeight = cellAbsoluteWidth * relativeHeight.Scale + relativeHeight.Offset
			return math.max(cellAbsoluteHeight, 0) + verticalGutter
		else
			return 0
		end
	end, { columns, gutter, verticalGutter, margin, relativeHeight } :: { any })
end

return React.forwardRef(function(props: Props, ref: React.Ref<Frame>)
	local displayLines, setDisplayLines = React.useState(NumberRange.new(0))
	local getCellAbsoluteHeight = useCellAbsoluteHeight(props.relativeHeight, props.kind)

	local updateDisplayLines = React.useCallback(function(absolutePosition, absoluteSize)
		if props.absoluteWindowTop and props.absoluteWindowHeight then
			local cellAbsoluteHeight = getCellAbsoluteHeight(absoluteSize.X)
			local windowRelativeTop = props.absoluteWindowTop - absolutePosition.Y
			local firstLine = math.floor(math.max(windowRelativeTop, 0) / cellAbsoluteHeight) + 1
			local lineCount = math.ceil(props.absoluteWindowHeight / cellAbsoluteHeight) + 1
			if lineCount >= 1 then
				setDisplayLines(NumberRange.new(firstLine, firstLine + lineCount - 1))
			else
				setDisplayLines(NumberRange.new(0, 0))
			end
		else
			setDisplayLines(NumberRange.new(0, 0))
		end
	end, { getCellAbsoluteHeight, props.absoluteWindowTop, props.absoluteWindowHeight, setDisplayLines } :: { any })

	local frameRef = useProperties(ref, updateDisplayLines, { "AbsolutePosition", "AbsoluteSize" })

	return React.createElement(GridRow, {
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
end)
