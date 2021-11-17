--[[
	A simple row of a table which can be hovered, disabled & selected.

	Required Props:
		array[any] Rows: The rows of data the table
		array[any] Columns: The columns of the table
		any Row: The current row data 
		number RowIndex: The index of the row to display relative to the current page

	Optional Props:
		any CellComponent: An optional component passed to the row component which renders individual cells.
		table CellProps: A table of props which are passed from the table's props to the CellComponent.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		boolean Selected: Whether the row is currently selected.
		callback OnRightClick: An optional callback when a row is right-clicked. (rowIndex: number) -> ()
		boolean FullSpan: Whether the root level should ignore column settings and use the first column key to populate entire width
		boolean HighlightedRow: An optional boolean specifying whether to highlight the row.
]]
local FFlagDevFrameworkTableAddFullSpanFunctionality = game:GetFastFlag("DevFrameworkTableAddFullSpanFunctionality")
local FFlagDevFrameworkHighlightTableRows = game:GetFastFlag("DevFrameworkHighlightTableRows")

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local Util = require(Framework.Util)
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local TableCell = require(script.TableCell)

local withControl = require(Framework.Wrappers.withControl)

local Dash = require(Framework.packages.Dash)
local assign = Dash.assign
local map = Dash.map

local UI = Framework.UI
local Pane = require(UI.Pane)

local TableRow = Roact.PureComponent:extend("TableRow")

function TableRow:init()
	assert(THEME_REFACTOR, "TableRow not supported in Theme1, please upgrade your plugin to Theme2")
	self.onRightClickRow = function()
		if self.props.OnRightClick then
			self.props.OnRightClick(self.props.Row)
		end
	end
end

function TableRow:render()
	local props = self.props
	local style = props.Stylizer
	local row = props.Row
	local rowIndex = props.RowIndex
	local CellComponent = props.CellComponent or TableCell
	local columns = props.Columns
	local cells
	local isFullSpan = FFlagDevFrameworkTableAddFullSpanFunctionality and props.FullSpan and row.depth and row.depth == 0
	local highlightCell = (FFlagDevFrameworkHighlightTableRows and props.HighlightRow) or nil
	if isFullSpan then
		local firstColumnIndex = 1
		local key = columns[firstColumnIndex].Key
		local value: any = row[key] or ""
		cells = {
			Roact.createElement(CellComponent, {
				CellProps = props.CellProps,
				Value = value,
				Tooltip = row[columns[firstColumnIndex].TooltipKey],
				Width = UDim.new(1, 0),
				Style = style,
				Columns = columns,
				Row = row,
				ColumnIndex = firstColumnIndex,
				RowIndex = rowIndex,
				HighlightCell = highlightCell,
			})
	}
	else
		cells = map(columns, function(column, index: number)
			local key = column.Key or column.Name
			local value: any = row[key] or ""
			local tooltip: string = row[column.TooltipKey] or ""
			return Roact.createElement(CellComponent, {
				CellProps = props.CellProps,
				Value = value,
				Tooltip = tooltip,
				Width = column.Width,
				Style = style,
				Columns = columns,
				Row = row,
				ColumnIndex = index,
				RowIndex = rowIndex,
				HighlightCell = highlightCell,
			})
		end)
	end
	return Roact.createElement(Pane, assign({
		Size = UDim2.new(1, 0, 0, style.RowHeight),
		Style = "Box",
		Layout = Enum.FillDirection.Horizontal,
		OnRightClick = self.onRightClickRow
	}, props.WrapperProps), cells)

end


TableRow = withContext({
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
})(TableRow)



return withControl(TableRow)
