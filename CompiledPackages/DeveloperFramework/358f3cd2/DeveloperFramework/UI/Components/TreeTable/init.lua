--[[
	The TreeTable component displays a grid of data with expandable rows.

	Required Props:
		array[any] Columns: The columns of the table
		array[any] RootItems: The root items displayed in the tree table view.
		callback GetChildren: This should return a list of children for a given row - GetChildren(row: Item) => Item[]
		table Expansion: The keys of rows that should be expanded - Set<Item>
		table Selection: The keys of rows that should be selected - Set<Item>
		callback OnExpansionChange: Called when an item is expanded or collapsed - (changedExpansion: Set<Item>) -> ()

	Optional Props:
		Enum.AutomaticSize AutomaticSize: Whether the table should have automatic size.
		boolean Scroll: Whether the table should scroll vertically if there are more rows than can be displayed.
		table ScrollProps: Extra props to pass down to the underlying scrolling component if Scroll is enabled
		UDim2 Size: The size of the table
		number SelectedRow: The index of the currently selected row.
		number SortIndex: The index of the current column that is being sorted.
		boolean DisableTooltip: Whether to disable tooltips that appear when hovering over cells where the text is truncated.
		any Footer: A Roact fragment or element to be displayed in the footer.
		Vector2 AnchorPoint: The AnchorPoint of the table
		number LayoutOrder: The LayoutOrder of the table
		UDim2 Position: The Position of the table
		boolean ShowHeader: Whether to display the header. (defalt = true)
		boolean ShowFooter: Whether to display the footer. (default = true if the Footer prop is non-nil)
		Enum.SortDirection SortOrder: The order that the column is being sorted in.
		callback SortChildren: A comparator function to sort two rows in the tree - SortChildren(left: Item, right: Item) => boolean
		callback OnHoverRow: An optional callback called when a row is hovered over. (dataIndex: number) -> ()
		callback OnMouseLeave: An optional callback called when the mouse leaves the table bounds. () -> ()
		callback OnSelectionChange: Called when an item is selected - (newSelection: Set<Item>) -> ()
		callback OnCellAction: Called when a cell action is chosen (action: string, path: {number}, columnIndex: number) -> ()
		callback OnCellDoubleClick: Called when a cell is double-clicked
		callback OnCellEdited: Called when a cell is edited (value: any, path: {number}, columnIndex: number) -> ()
		callback OnCellPressed: Called when a cell is pressed (path: {number}, columnIndex: number) -> ()
		callback OnDoubleClick: An optional callback called when an item is double clicked
		callback OnSizeChange: An optional callback called when the component size changes with number of rows that can be displayed.
		callback OnPageSizeChange: An optional callback called when the size of a page changes.
		callback OnPageChange: An optional callback called when the user changes the current page of the table. (pageindex: number) -> ()
		callback OnSortChange: An optional callback called when the user sorts a column.
		callback OnColumnSizesChange: An optional callback which allows columns to be resizable.
		callback OnLoadRange: Called when scrolled to the end of the tree.
		any RowComponent: An optional component to render each row.
		callback GetCellAutocomplete: An optional method to provide autocomplete options.
		boolean UseDeficit: Whether to make the last pane stretch to fill remaining space.
		boolean UseScale: Whether to convert column widths to scales during resizing.
		boolean ClampSize: Whether to clamp column resizes to the width of the table.
		callback RightClick: An optional callback called when a row is right-clicked. (item: Item, position: Vector2)->()
		callback OnFocusLost: An optional callback called when a cell that has input enabled loses focus. Enable text change by column with TextInputCols prop
		boolean FullSpan: Whether the root level should ignore column settings and use the first column key to populate entire width
		boolean FullSpanEmphasis: Emphasize full span rows rather than odd/even rows.
		array[any] TextInputCols: An optional set used to determine if a given column with just display text or allow text input as well
		any CellComponent: An optional component passed to the row component which renders individual cells.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		array[any] HighlightedRows: An optional list of rows to highlight.
		number ColumnHeaderHeight: An optional height for the column headers.
		number RowHeight: An optional height for the table rows.
		boolean ExpandOnDoubleClick: An optional boolean to expand the resizable column to fit the text when doubleclicking DragBar.
		boolean ExpandByDefault: An optional boolean which specifies sections should be expanded by default
		table Hidden: The keys of rows that should be hidden - Set<Item>
		callback GetItemId: An optional callback called to obtain a unique and stable ID for the row item. EVERY row must have uniqe id, even nested children must not have id equal to parents. - GetItemId(item: Item) => any
		table Renderers: A list of custom renderers passed down to each cell for rendering custom schema types.
		string Variant: An optional parameter to determine the look of the table. 'modern', 'compact'
		boolean DisableHover: An optional parameter to disable hover. Works only with modern variant table . Useful when you need to show popovers on top of the table.
		table ForwardRef: An optional ref to pass to the underlying Frame.
]]
local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local Typecheck = require(Framework.Util).Typecheck
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext
local withForwardRef = require(Framework.Wrappers.withForwardRef)

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local joinTags = require(Framework.Styling.joinTags)

local FFlagDevFrameworkFixTableMissingKeyErrors =
	require(Framework.SharedFlags.getFFlagDevFrameworkFixTableMissingKeyErrors)()

local Dash = require(Framework.Parent.Dash)
local copy = Dash.copy
local findIndex = Dash.findIndex
local mapOne = Dash.mapOne
local sort = table.sort

local Table = require(Framework.UI.Components.Table)
local TreeTableCell = require(script.TreeTableCell)

local TreeTable = Roact.PureComponent:extend("TreeTable")
Typecheck.wrap(TreeTable, script)

function TreeTable:init()
	self.defaultGetItemId = function(item)
		return item
	end
	self.getItemId = self.props.GetItemId or self.defaultGetItemId
	self.getRowId = function(row)
		-- Do not use with the defaultGetItemId, since the item is unstable potentially changing every render.
		return tostring(self.props.GetItemId(row.item))
	end
	self.onToggle = function(row)
		local itemId = self.getItemId(row.item)
		local newExpansion = {
			[itemId] = not self.props.Expansion[itemId],
		}
		self.props.OnExpansionChange(newExpansion)
	end
	self.onSelectRow = function(row)
		if not self.props.OnSelectionChange then
			return
		end
		local itemId = self.getItemId(row.item)
		local newSelection = {
			[itemId] = true,
		}
		self.props.OnSelectionChange(newSelection)
	end

	self.onRightClickRow = function(row, position)
		if not self.props.RightClick then
			return
		end
		self.props.RightClick(row, position)
	end

	self.state = {
		rows = {},
		cellProps = self:getCellProps(),
	}
end

function TreeTable:getCellProps()
	local props = self.props
	return {
		CellStyle = props.Stylizer,
		DisableTooltip = props.DisableTooltip,
		Expansion = props.Expansion,
		GetAutocompleteItems = props.GetCellAutocomplete,
		GetItemId = self.getItemId,
		OnCellAction = props.OnCellAction,
		OnCellDoubleClick = props.OnCellDoubleClick,
		OnCellEdited = props.OnCellEdited,
		OnCellPressed = props.OnCellPressed,
		OnCellRightClick = self.onRightClickRow,
		OnFocusLost = props.OnFocusLost,
		OnToggle = self.onToggle,
		Renderers = props.Renderers,
		TextInputCols = props.TextInputCols,
	}
end

function TreeTable:didMount()
	self:calculateItems()
end

function TreeTable:willUpdate(nextProps)
	if nextProps.GetItemId ~= self.props.GetItemId then
		self.getItemId = nextProps.GetItemId or self.defaultGetItemId
	end
end

function TreeTable:didUpdate(prevProps)
	self:calculateItems(prevProps)
end

function TreeTable:calculateItems(prevProps)
	local props = self.props
	local rowsChanged = not prevProps
		or (
			props.SortChildren ~= prevProps.SortChildren
			or props.RootItems ~= prevProps.RootItems
			or props.GetChildren ~= prevProps.GetChildren
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
			nextState.cellProps = self:getCellProps()
		end
		local rows = nextState.rows or prevState.rows
		local selectedItemId = props.Selection and mapOne(props.Selection, function(_true, item)
			return item
		end) or nil
		if selectedItemId then
			nextState.selectedRow = findIndex(rows, function(row)
				return self.getItemId(row.item) == selectedItemId
			end)

			if not nextState.selectedRow then
				-- We didn't find the selected item ID in the visible rows.
				nextState.selectedRow = Roact.None
			end
		else
			nextState.selectedRow = Roact.None
		end
		return nextState
	end)
end

function TreeTable:contributeRow(item, depth: number, list)
	local props = self.props
	local itemId = self.getItemId(item)
	local children = copy(props.GetChildren(item))
	table.insert(list, {
		index = #list + 1,
		depth = depth,
		item = item,
		hasChildren = children and #children > 0,
	})
	if props.Expansion[itemId] then
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

	local tableProps = {
		AnchorPoint = props.AnchorPoint,
		AutomaticSize = props.AutomaticSize,
		CellProps = state.cellProps,
		Rows = state.rows,
		Columns = props.Columns,
		SelectedRow = state.selectedRow,
		SortIndex = props.SortIndex,
		SortOrder = props.SortOrder,
		Scroll = props.Scroll,
		ScrollProps = props.ScrollProps,
		Footer = props.Footer,
		LayoutOrder = props.LayoutOrder,
		Position = props.Position,
		Size = props.Size,
		ShowFooter = props.ShowFooter,
		ShowHeader = props.ShowHeader,
		ClampSize = props.ClampSize,
		UseScale = props.UseScale,
		UseDeficit = props.UseDeficit,
		OnHoverRow = props.OnHoverRow,
		OnMouseLeave = props.OnMouseLeave,
		OnSelectRow = self.onSelectRow,
		OnDoubleClick = props.OnDoubleClick,
		OnRightClickRow = self.onRightClickRow,
		OnSizeChange = props.OnSizeChange,
		OnSortChange = props.OnSortChange,
		OnColumnSizesChange = props.OnColumnSizesChange,
		OnLoadRange = props.OnLoadRange,
		RowComponent = props.RowComponent,
		CellComponent = cellComponent,
		FullSpan = props.FullSpan,
		FullSpanEmphasis = props.FullSpanEmphasis,
		HighlightedRows = props.HighlightedRows,
		ScrollFocusIndex = props.ScrollFocusIndex,
		Padding = props.Padding,
		ColumnHeaderHeight = props.ColumnHeaderHeight,
		RowHeight = props.RowHeight,
		ExpandOnDoubleClick = props.ExpandOnDoubleClick,
		Variant = props.Variant,
		GetRowId = if props.GetItemId and FFlagDevFrameworkFixTableMissingKeyErrors then self.getRowId else nil,
		[Roact.Ref] = props.ForwardRef,
	}
	if supportsStyleSheets then
		tableProps[React.Tag] = joinTags(
			"Component-TreeTable",
			props[React.Tag],
			props.Variant,
			if not props.DisableHover then "enable-hover" else nil
		)
	end

	return Roact.createElement(Table, tableProps)
end

TreeTable = withContext({
	Stylizer = ContextServices.Stylizer,
})(TreeTable)

TreeTable = withForwardRef(TreeTable)

return TreeTable
