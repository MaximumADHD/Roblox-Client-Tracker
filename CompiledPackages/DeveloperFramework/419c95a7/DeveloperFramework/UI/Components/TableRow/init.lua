--[[
	A simple row of a table which can be hovered, disabled & selected.

	Required Props:
		array[any] Rows: The rows of data the table
		array[any] Columns: The columns of the table
		any Row: The current row data
		number RowIndex: The index of the row to display relative to the current page

	Optional Props:
		any Key: A unique value used by React
		UDim2 Position: The position of the Row
		UDim2 Size: The size of the Row
		any CellComponent: An optional component passed to the row component which renders individual cells.
		table CellProps: A table of props which are passed from the table's props to the CellComponent.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		boolean Selected: Whether the row is currently selected.
		callback OnRightClick: An optional callback when a row is right-clicked. (rowIndex: number, position: Vector2) -> ()
		boolean FullSpan: Whether the root level should ignore column settings and use the first column key to populate entire width
		boolean FullSpanEmphasis: Emphasize full span rows rather than odd/even rows.
		boolean HighlightedRow: An optional boolean specifying whether to highlight the row.
		number RowHeight: An optional height for the table rows.
		callback SetCellContentsWidth: An optional prop used to fetch overflow when ExpandOnDoubleClick is used in the resizable columns
		string Variant: An optional parameter to determine the look of the row. 'modern', 'compact'
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext
local prioritize = require(Framework.Util.prioritize)

local FFlagDevFrameworkFixMissingKeyErrors = require(Framework.SharedFlags.getFFlagDevFrameworkFixMissingKeyErrors)()
local isRoact17 = require(Framework.Util.isRoact17)(Roact)

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)

local TableCell = require(script.TableCell)

local withControl = require(Framework.Wrappers.withControl)

local Dash = require(Framework.Parent.Dash)
local assign = Dash.assign
local map = Dash.map

local UI = Framework.UI
local Pane = require(UI.Components.Pane)

local TableRow = Roact.PureComponent:extend("TableRow")

function TableRow:init()
	self.onRightClickRow = function(position)
		if self.props.OnRightClick then
			self.props.OnRightClick(self.props.Row, position)
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
	local isFullSpan = props.FullSpan and row.depth and row.depth == 0

	local firstColumnIndex = 1
	local key = columns[firstColumnIndex].Key
	if row.item and typeof(row.item[key]) == "table" and row.item[key].FullSpan then
		isFullSpan = true
	end

	local emphasis = if props.FullSpanEmphasis
		then isFullSpan
		else if props.Variant == "modern" then ((rowIndex % 2) == 0) else ((rowIndex % 2) == 1)

	local highlightCell = props.HighlightRow
	if isFullSpan then
		local value: any = row[key] or ""
		cells = {
			Roact.createElement(CellComponent, {
				key = if FFlagDevFrameworkFixMissingKeyErrors and isRoact17 then "FullSpanCell" else nil,
				CellProps = props.CellProps,
				Columns = columns,
				ColumnIndex = firstColumnIndex,
				Emphasis = emphasis,
				HighlightCell = highlightCell,
				OnEdited = props.OnEdited,
				Row = row,
				RowIndex = rowIndex,
				Style = style,
				StyleModifier = props.StyleModifier,
				Tooltip = row[columns[firstColumnIndex].TooltipKey],
				Width = UDim.new(1, 0),
				Value = value,
				Variant = props.Variant,
			}),
		}
	else
		cells = map(columns, function(column, index: number)
			local key = column.Key or column.Name
			local value: any = row[key] or ""
			local tooltip: string = row[column.TooltipKey]
			return Roact.createElement(CellComponent, {
				key = if isRoact17 then key else nil,
				CellProps = props.CellProps,
				Columns = columns,
				ColumnIndex = index,
				Emphasis = emphasis,
				HighlightCell = highlightCell,
				Style = style,
				OnEdited = props.OnEdited,
				Row = row,
				RowIndex = rowIndex,
				SetCellContentsWidth = props.SetCellContentsWidth,
				StyleModifier = props.StyleModifier,
				Tooltip = tooltip,
				Value = value,
				Variant = props.Variant,
				Width = column.Width,
			})
		end)
	end
	local rowHeight = prioritize(props.RowHeight, style.RowHeight)

	if supportsStyleSheets then
		local cellsPane = Roact.createElement(Pane, {
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Horizontal,
		}, cells)
		return Roact.createElement(
			Pane,
			assign({
				OnRightClick = self.onRightClickRow,
				Size = props.Size or UDim2.new(1, 0, 0, rowHeight),
				Position = props.Position,
				[React.Tag] = "Component-TableRow",
			}, props.WrapperProps),
			cellsPane
		)
	else
		return Roact.createElement(
			Pane,
			assign({
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				Layout = Enum.FillDirection.Horizontal,
				OnRightClick = self.onRightClickRow,
				Position = props.Position,
				Size = props.Size or UDim2.new(1, 0, 0, rowHeight),
				Style = "Box",
			}, props.WrapperProps),
			cells
		)
	end
end

TableRow = withContext({
	Stylizer = ContextServices.Stylizer,
})(TableRow)

return withControl(TableRow)
