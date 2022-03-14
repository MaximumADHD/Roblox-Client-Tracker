--[[
	The TreeTable component displays a grid of data with expandable rows.

	Required Props:
		array[any] Columns: The columns of the table
		array[any] RootItems: The root items displayed in the tree table view.
		callback GetChildren: This should return a list of children for a given row - GetChildren(row: Item) => Item[]
		table Expansion: The keys of rows that should be expanded - Set<Item>
		callback OnExpansionChange: Called when an item is expanded or collapsed - (changedExpansion: Set<Item>) => void
		
		Optional Props:
		boolean Scroll: Whether the table should scroll vertically if there are more rows than can be displayed.
		UDim2 Size: The size of the table
		number SelectedRow: The index of the currently selected row.
		number SortIndex: The index of the current column that is being sorted.
		any Footer: A Roact fragment or element to be displayed in the footer.
		boolean DisableTooltip: Whether to disable tooltips that appear when hovering over cells where the text is truncated.
		boolean ShowHeader: Whether to display the header. (defalt = true)
		boolean ShowFooter: Whether to display the footer. (default = true if the Footer prop is non-nil)
		Enum.SortDirection SortOrder: The order that the column is being sorted in.
		callback GetItemKey: Return a key for an row, unique among siblings - GetItemKey(item: Item) => string
		callback SortChildren: A comparator function to sort two rows in the tree - SortChildren(left: Item, right: Item) => boolean
		callback OnHoverRow: An optional callback called when a row is hovered over. (dataIndex: number) -> ()
		callback OnMouseLeave: An optional callback called when the mouse leaves the table bounds. () -> ()
		callback OnSelectionChange: Called when an item is selected - (newSelection: Set<Item>) => void
		callback OnDoubleClick: An optional callback called when an item is double clicked
		callback OnSizeChange: An optional callback called when the component size changes with number of rows that can be displayed.
		callback OnPageSizeChange: An optional callback called when the size of a page changes.
		callback OnPageChange: An optional callback called when the user changes the current page of the table. (pageindex: number) -> ()
		callback OnSortChange: An optional callback called when the user sorts a column.
		callback OnColumnSizesChange: An optional callback which allows columns to be resizable.
		callback RowComponent: An optional component to render each row.
		boolean UseScale: Whether to convert column widths to scales during resizing.
		boolean ClampSize: Whether to clamp column resizes to the width of the table.
		callback RightClick: An optional callback called when a row is right-clicked. (item: Item)->()
		callback OnFocusLost: An optional callback called when a cell that has input enabled loses focus. Enable text change by column with TextInputCols prop
		boolean FullSpan: Whether the root level should ignore column settings and use the first column key to populate entire width
		array[any] TextInputCols: An optional set used to determine if a given column with just display text or allow text input as well
		any CellComponent: An optional component passed to the row component which renders individual cells.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		Theme Theme: A Theme ContextItem, which is provided via withContext.
		array[any] HighlightedRows: An optional list of rows to highlight.
]]
local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local Typecheck = require(Framework.Util).Typecheck
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local Dash = require(Framework.packages.Dash)
local copy = Dash.copy
local findIndex = Dash.findIndex
local mapOne = Dash.mapOne

local sort = table.sort

local Table = require(Framework.UI.Table)
local TreeTableCell = require(script.TreeTableCell)

local Util = require(Framework.Util)
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local TreeTable = Roact.PureComponent:extend("TreeTable")
Typecheck.wrap(TreeTable, script)

local FFlagDevFrameworkInfiniteScrollerIndex = game:GetFastFlag("DevFrameworkInfiniteScrollerIndex")
local FFlagDevFrameworkDoubleClick = game:GetFastFlag("DevFrameworkDoubleClick")
local FFlagDevFrameworkSplitPane = game:GetFastFlag("DevFrameworkSplitPane")
local FFlagDevFrameworkTableColumnResize = game:GetFastFlag("DevFrameworkTableColumnResize")

local hasTableColumnResizeFFlags = FFlagDevFrameworkSplitPane and FFlagDevFrameworkTableColumnResize

function TreeTable:init()
	assert(THEME_REFACTOR, "TreeTable not supported in Theme1, please upgrade your plugin to Theme2")
	self.onToggle = function(row)
		local newExpansion = {
			[row.item] = not self.props.Expansion[row.item] or false,
		}
		self.props.OnExpansionChange(newExpansion)
	end
	self.onSelectRow = function(row)
		if not self.props.OnSelectionChange then
			return
		end
		local newSelection = {
			[row.item] = true,
		}
		self.props.OnSelectionChange(newSelection)
	end	
	
	self.onRightClickRow = function(row)
		if not self.props.RightClick then
			return
		end
		self.props.RightClick(row)
	end
	
	self.getRowKey = function(row)
		if not self.props.GetItemKey then
			return nil
		end
		return self.props.GetItemKey(row.item)
	end 
	
	self.state = {
		selectedRow = nil,
		rows = {},
		cellProps = {
			OnToggle = self.onToggle,
			Expansion = self.props.Expansion,
			CellStyle = self.props.Stylizer,
			DisableTooltip = self.props.DisableTooltip,
			TextInputCols = self.props.TextInputCols,
			OnFocusLost = self.props.OnFocusLost,
		},
	}
end

function TreeTable:didMount()
	self:calculateItems()
end

function TreeTable:didUpdate(prevProps)
	self:calculateItems(prevProps)
end

function TreeTable:calculateItems(prevProps)
	local props = self.props
	local rowsChanged = not prevProps or (
		props.SortChildren ~= prevProps.SortChildren
		or props.RootItems ~= prevProps.RootItems
		or props.GetChildren ~= prevProps.GetChildren
		or props.GetItemKey ~= prevProps.GetItemKey
		or props.Expansion ~= prevProps.Expansion
		or (props.HighlightedRows and props.HighlightedRows ~= prevProps.HighlightedRows)
	)
	local selectionChanged = not prevProps or props.Selection ~= prevProps.Selection
	if not rowsChanged and not selectionChanged then
		return
	end
	self:setState(function(prevState)
		local nextState = {}
		if rowsChanged then
			local rows = {}
			for _, child in ipairs(props.RootItems) do
				self:contributeRow(child, 0, rows)
			end
			nextState.rows = rows
			nextState.cellProps = {
				OnToggle = self.onToggle,
				Expansion = props.Expansion,
				CellStyle = props.Stylizer,
				DisableTooltip = props.DisableTooltip,
				TextInputCols = props.TextInputCols,
				OnFocusLost = props.OnFocusLost,
			}
		end
		local rows = nextState.rows or prevState.rows
		local selectedItem = props.Selection and mapOne(props.Selection, function(_true, item)
			return item
		end) or nil
		if selectedItem then
			nextState.selectedRow = findIndex(rows, function(row)
				return row.item == selectedItem
			end)
		else
			nextState.selectedRow = Roact.None
		end
		return nextState
	end)
end

function TreeTable:contributeRow(item, depth, list)
	local props = self.props
	table.insert(list, {
		index = #list + 1,
		depth = depth,
		item = item,
	})
	if props.Expansion[item] then
		local children = copy(props.GetChildren(item))
		if props.SortChildren then
			sort(children, props.SortChildren)
		end
		for _, child in ipairs(children) do
			self:contributeRow(child, depth + 1, list)
		end
	end
	return list
end

function TreeTable:render()
	local props = self.props
	local state = self.state
	local cellComponent = props.CellComponent or TreeTableCell

	return Roact.createElement(Table, {
		CellProps = state.cellProps,
		Rows = state.rows,
		Columns = props.Columns,
		Size = props.Size,
		GetRowKey = props.GetItemKey and self.getRowKey or nil,
		SelectedRow = state.selectedRow,
		SortIndex = props.SortIndex,
		SortOrder = props.SortOrder,
		Scroll = props.Scroll,
		Footer = props.Footer,
		ShowFooter = props.ShowFooter,
		ShowHeader = props.ShowHeader,
		ClampSize = if hasTableColumnResizeFFlags then props.ClampSize else nil,
		UseScale = if hasTableColumnResizeFFlags then props.UseScale else nil,
		OnHoverRow = props.OnHoverRow,
		OnMouseLeave = props.OnMouseLeave,
		OnSelectRow = self.onSelectRow,
		OnDoubleClick = if FFlagDevFrameworkDoubleClick then props.OnDoubleClick else nil,
		OnRightClickRow = self.onRightClickRow,
		OnSizeChange = self.onSizeChange,
		OnSortChange = props.OnSortChange,
		OnColumnSizesChange = if hasTableColumnResizeFFlags then props.OnColumnSizesChange else nil,
		RowComponent = props.RowComponent,
		CellComponent = cellComponent,
		FullSpan = props.FullSpan,
		HighlightedRows = props.HighlightedRows,
		ScrollFocusIndex = if FFlagDevFrameworkInfiniteScrollerIndex then props.ScrollFocusIndex else nil,
	})
end

TreeTable = withContext({
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
})(TreeTable)

return TreeTable
