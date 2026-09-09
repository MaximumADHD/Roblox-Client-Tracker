--[[
	A Virtualized List component that can be used to render an aribtrary number of rows in a performant way.
	Any props not consumed by List are passed to the underlying ScrollingFrame.

	Required Props:
		array[any] Rows: The data for the rows to display

	Optional Props:
		table ForwardRef: An optional ref to pass to the underlying ScrollingFrame.
		Enum.AutomaticSize AutomaticSize: Specifies whether or not to automatically size the component
		Vector2 InitialCanvasPosition: The initial position of the canvas (default = (0, 0))
		callback GetRowProps: A function which should return the props for the row component.
			For each row it is passed (row, index: number, position: UDim2, size: UDim2) -> RowProps
		number RowHeight: The height of each row (default from style = 24)
		any RowComponent: The component to render a row (default = ListRow)
		UDim2 CanvasSize: The size of the canvas - if not passed in the Canvas will be sized automatically
		callback OnScrollUpdate: Called whenever the CanvasPosition of the scroller updates
		callback OnLoadRange: Called when scrolled to the end of the list.
		Enum.ScrollingDirection ScrollingDirection: The ScrollDirection of a given grid
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		table SpecialRows: A dictionary of cells that have different size and render needs.
		Enum.VerticalAlignment: Specifies the VerticalAlignment of the list
		Enum.ScrollBarInset HorizontalScrollBarInset: whether the canvas should be inset by ScrollBarThickness for the horizontal scroll bar.
		Enum.ScrollBarInset VerticalScrollBarInset: whether the canvas should be inset by ScrollBarThickness for the vertical scroll bar.
]]
local Framework = script:FindFirstAncestor("UI").Parent
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local Dash = require(Framework.Parent.Dash)
local join = Dash.join
local omit = Dash.omit

local Util = Framework.Util
local prioritize = require(Util.prioritize)
local withForwardRef = require(Framework.Wrappers.withForwardRef)

local Roact = require(Framework.Parent.Roact)
local ListRow = require(script.ListRow)

local Grid = require(script.Parent.Grid)

export type Props<T> = {
	ForwardRef: any?,
	InitialCanvasPosition: Vector2?,
	CanvasSize: UDim2?,
	Rows: { T },
	RowHeight: number,
	GetRowProps: (T) -> { [string]: any },
	RowComponent: any,
	OnScrollUpdate: ((Vector2) -> ())?,
	OnLoadRange: ((offset: number, count: number) -> ())?,
	HorizontalScrollBarInset: Enum.ScrollBarInset?,
	VerticalScrollBarInset: Enum.ScrollBarInset?,
}

type _Props<T> = Props<T> & {
	Stylizer: { [string]: any },
}

local PROPS_GRID = {
	"InitialCanvasPosition",
	"GetRowProps",
	"Rows",
	"RowGroupHeader",
	"RowGroups",
	"RowHeight",
	"RowComponent",
	"Stylizer",
	"SpecialRows",
}

local List = Roact.PureComponent:extend("List")

function List:init()
	self._getRowProps = function(row, index: number, position: UDim2, size: UDim2)
		return self:getDefaultRowProps(row, index, position, size)
	end
end

function List:_getRowHeight()
	local props = self.props
	local style = props.Stylizer
	return prioritize(props.RowHeight, style.RowHeight)
end

function List:getDefaultRowProps(row, index: number, position: UDim2, size: UDim2)
	return {
		Key = index,
		Position = position,
		Row = row,
		Size = size,
		Style = self.props.Stylizer,
	}
end

function List:render()
	local props = self.props
	local getRowProps = props.GetRowProps or self._getRowProps
	local style = props.Stylizer
	local rowHeight = self:_getRowHeight()
	local rows = props.Rows

	local rowSize = UDim2.new(1, 0, 0, rowHeight)

	local scrollProps = omit(props, PROPS_GRID)

	return Roact.createElement(
		Grid,
		join({
			AutomaticSize = props.AutomaticSize,
			InitialCanvasPosition = props.InitialCanvasPosition,
			GetCellProps = getRowProps,
			CellSize = rowSize,
			CellComponent = props.RowComponent or ListRow,
			CellGroups = props.RowGroups,
			CellGroupHeader = props.RowGroupHeader,
			Cells = rows,
			ScrollingDirection = props.ScrollingDirection,
			SpecialCells = props.SpecialRows,
		}, style.ScrollingFrame, scrollProps)
	)
end

List = withContext({
	Stylizer = ContextServices.Stylizer,
})(List)

return withForwardRef(List)
