--[[
	The PaginatedTable component displays a grid of data in rows and columns.
	Data is passed in rows and paginated.

	Required Props:
		array[any] Rows: The rows of data the table should display
		array[any] Columns: The columns of the table

	Optional Props:
		UDim2 Size: The size of the table
		UDim2 Position: The Position of the table
		number SelectedRow: The index of the currently selected row.
		number PageIndex: The current page displayed by the table. (default = 1)
		number PageCount: The number of pages of data, which can be navigated through in the table footer if there are multiple pages.
		number PageSize: The number of rows in a single page
		number SortIndex: The index of the current column that is being sorted.
		any Footer: A Roact fragment or element to be displayed in the footer.
		boolean ShowHeader: Whether to display the header. (default = true)
		Enum.SortDirection SortOrder: The order that the column is being sorted in.
		callback OnHoverRow: An optional callback called when a row is hovered over. (dataIndex: number) -> ()
		callback OnMouseLeave: An optional callback called when the mouse leaves the table bounds. () -> ()
		callback OnSelectRow: An optional callback called when a row is selected. (dataIndex: number) -> ()
		callback OnSizeChange: An optional callback called when the component size changes with number of rows that can be displayed.
		callback OnPageSizeChange: An optional callback called when the size of a page changes.
		callback OnPageChange: An optional callback called when the user changes the current page of the table. (pageindex: number) -> ()
		callback OnSortChange: An optional callback called when the user sorts a column.
		callback RowComponent: An optional component to render each row.
		any CellComponent: An optional component passed to the row component which renders individual cells.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		number RowHeight: An optional height for the table rows.
		table CellProps: An optional table of props which are passed from the table's props to the CellComponent.
		callback GetRowHeight: An optional callback called to calculate row height given. (row, rowHeight) -> number
		Enum.AutomaticSize AutomaticSize: An optional enum for the automatic size of the list and table.
]]
local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local Typecheck = require(Framework.Util.Typecheck)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local PageNavigation = require(Framework.UI.Components.PageNavigation)
local Pane = require(Framework.UI.Components.Pane)
local Table = require(Framework.UI.Components.Table)

local PaginatedTable = Roact.PureComponent:extend("PaginatedTable")
Typecheck.wrap(PaginatedTable, script)

function PaginatedTable:init()
	self.onSizeChange = function(listHeight)
		if self.props.OnSizeChange then
			self.props.OnSizeChange(listHeight)
		end
		local style = self.props.Stylizer
		-- The maximum rows that will fit in the available space for the list
		local maxRows = math.floor(listHeight / style.RowHeight)
		-- At least 1 row on each page
		if self.props.OnPageSizeChange then
			self.props.OnPageSizeChange(math.max(1, maxRows))
		end
	end
end

function PaginatedTable:render()
	local props = self.props
	local pageCount = props.PageCount or 1
	local pageIndex = props.PageIndex or 1
	local showFooter = (pageCount > 1) or (props.Footer ~= nil)

	local pageNavigation = (pageCount > 1)
			and Roact.createElement(Pane, {
				AutomaticSize = Enum.AutomaticSize.XY,
				Position = UDim2.fromScale(1, 0),
				AnchorPoint = Vector2.new(1, 0),
			}, {
				Child = Roact.createElement(PageNavigation, {
					PageIndex = pageIndex,
					PageCount = pageCount,
					OnPageChange = props.OnPageChange,
				}),
			})
		or nil

	local footer = {
		Footer = props.Footer,
		PageNavigation = pageNavigation,
	}

	return Roact.createElement(Table, {
		Rows = props.Rows,
		Columns = props.Columns,
		Size = props.Size,
		Position = props.Position,
		SelectedRow = props.SelectedRow,
		SortIndex = props.SortIndex,
		SortOrder = props.SortOrder,
		Footer = showFooter and Roact.createFragment(footer) or nil,
		ShowFooter = showFooter,
		ShowHeader = props.ShowHeader,
		OnHoverRow = props.OnHoverRow,
		OnMouseLeave = props.OnMouseLeave,
		OnSelectRow = props.OnSelectRow,
		OnSizeChange = self.onSizeChange,
		OnSortChange = props.OnSortChange,
		RowComponent = props.RowComponent,
		CellComponent = props.CellComponent,
		RowHeight = props.RowHeight,
		CellProps = props.CellProps,
		GetRowHeight = props.GetRowHeight,
		AutomaticSize = props.AutomaticSize,
	})
end

PaginatedTable = withContext({
	Stylizer = ContextServices.Stylizer,
})(PaginatedTable)

return PaginatedTable
