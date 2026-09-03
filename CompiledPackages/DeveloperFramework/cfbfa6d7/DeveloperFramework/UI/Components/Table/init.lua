--[[
	(USES STYLESHEETS)
	The Table component displays a grid of data in rows and columns.
	Data is passed in rows, with options for scrolling and sorting.

	Required Props:
		array[any] Rows: The rows of data the table should display
		array[any] Columns: The columns of the table.

	Optional Props:
		UDim2 Size: The size of the table
		Vector2 AnchorPoint: The AnchorPoint of the table
		number LayoutOrder: The LayoutOrder of the table
		UDim2 Position: The Position of the table
		boolean Scroll: Whether to use a scrolling frame (default = false)
		Enum.ScrollBarInset VerticalScrollBarInset: whether the table should be inset by ScrollBarThickness for the vertical scroll bar.
		table ScrollProps: Extra props to pass to the underlying scrolling component if Scroll is enabled (default = {})
		number SelectedRow: The index of the currently selected row.
		any Footer: A Roact fragment or element to be displayed in the footer.
		boolean ShowFooter: Whether to display the footer. (default = true if the Footer prop is non-nil)
		boolean ShowHeader: Whether to display the header. (default = true)
		number SortIndex: The index of the current column that is being sorted.
		Enum.SortDirection SortOrder: The order that the column is being sorted in.
		callback OnHoverRow: An optional callback called when a row is hovered over. (rowIndex: number) -> ()
		callback OnMouseLeave: An optional callback called when the mouse leaves the table bounds. () -> ()
		callback OnRightClickRow: An optional callback when a row is right-clicked. (rowIndex: number, position: Vector2) -> ()
		callback OnSelectRow: An optional callback called when a row is selected. (rowIndex: number) -> ()
		callback OnDoubleClick: An optional callback called when an item is double clicked
		callback OnSizeChange: An optional callback called when the component size changes.
		callback OnSortChange: An optional callback called when the user sorts a column.
		callback OnColumnSizesChange: An optional callback which allows columns to be resizable.
		callback OnLoadRange: Called when scrolled to the end of the table. (offset: number, count: number)
		callback RowComponent: An optional component to render each row.
		boolean UseScale: Whether to convert column widths to scales during resizing.
		boolean UseDeficit: Whether to make the last pane stretch to fill remaining space.
		boolean ClampSize: Whether to clamp column resizes to the width of the table.
		any CellComponent: An optional component passed to the row component which renders individual cells.
		any HeaderCellComponent: An optional component which renders individual header cells.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		Theme Theme: A Theme ContextItem, which is provided via withContext.
		table CellProps: A table of props which are passed from the table's props to the CellComponent.
		boolean FullSpan: Whether the root level should ignore column settings and use the first column key to populate entire width
		boolean FullSpanEmphasis: Emphasize full span rows rather than odd/even rows. Doesn't have any effect with 'modern' variant
		array[any] HighlightedRows: An optional list of rows to highlight.
		number ScrollFocusIndex: An optional row index for the infinite scroller to focus upon rendering.
		number ColumnHeaderHeight: An optional height for the column headers.
		number RowHeight: An optional height for the table rows.
		boolean ExpandOnDoubleClick: An optional boolean that expands the resizable column to fit the text when doubleclicking DragBar.
		callback GetRowHeight: An optional callback called to calculate row height given. (row, rowHeight) -> number
		callback GetRowId: An optional callback called to obtain a unique and stable ID for the row - GetRowId(row: any) => string
		Enum.AutomaticSize AutomaticSize: An optional enum for the automatic size of the list and table.
		string Variant: An optional parameter to determine the look of the table. 'modern', 'compact'
		table ForwardRef: An optional ref to pass to the underlying Frame.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)
local deepEqual = require(Framework.Util.deepEqual)
local prioritize = require(Framework.Util.prioritize)
local Typecheck = require(Framework.Util.Typecheck)

local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext
local withForwardRef = require(Framework.Wrappers.withForwardRef)

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local joinTags = require(Framework.Styling.joinTags)

local styles = require(script.styles)
local ROW_HEIGHT = styles:GetAttribute("RowHeight")
local FOOTER_HEIGHT = styles:GetAttribute("FooterHeight")
local HEADER_HEIGHT = styles:GetAttribute("HeaderHeight")
local SCROLL_HEADER_PADDING = styles:GetAttribute("ScrollHeaderPadding")

local Dash = require(Framework.Parent.Dash)
local map = Dash.map
local reduce = Dash.reduce
local some = Dash.some
local join = Dash.join

local Pane = require(Framework.UI.Components.Pane)
local List = require(Framework.UI.Components.List)
local SplitPane = require(Framework.UI.Components.SplitPane)
local TableRow = require(Framework.UI.Components.TableRow)
local TableHeaderCell = require(script.TableHeaderCell)

local FFlagDevFrameworkScrollBarInset = game:DefineFastFlag("DevFrameworkScrollBarInset", false)
local FFlagDevFrameworkFixTableMissingKeyErrors =
	require(Framework.SharedFlags.getFFlagDevFrameworkFixTableMissingKeyErrors)()
local isRoact17 = require(Framework.Util.isRoact17)(Roact)

local Table = Roact.PureComponent:extend("Table")
Typecheck.wrap(Table, script)

type Column = {
	Name: string,
	Key: string?,
	Tooltip: string?,
	Width: UDim?,
	MinWidth: number?,
}

local DEFAULT_COLUMN_MIN_WIDTH = UDim.new(0, 50)
local OFFSET_SNAP = 10

function Table:init()
	self.state = {
		HeaderOffset = 0,
	}
	self.scrollingFrameRef = Roact.createRef()
	self.onHoverRow = function(rowProps)
		if self.props.OnHoverRow then
			self.props.OnHoverRow(rowProps.Row, rowProps.RowIndex)
		end
	end
	self.onHoverRowEnd = function(rowProps)
		if self.props.OnHoverRowEnd then
			self.props.OnHoverRowEnd(rowProps.Row, rowProps.RowIndex)
		end
	end

	self.onSelectRow = function(rowProps)
		if self.props.OnSelectRow then
			self.props.OnSelectRow(rowProps.Row, rowProps.RowIndex)
		end
	end

	self.onDoubleClick = function(rowProps)
		if self.props.OnDoubleClick then
			self.props.OnDoubleClick(rowProps.Row, rowProps.RowIndex)
		end
	end

	self.onRightClickRow = function(rowProps, position)
		if self.props.OnRightClickRow then
			self.props.OnRightClickRow(rowProps, position)
		end
	end
	self:_flushRenderRow()
	self.getDefaultRowKey = if FFlagDevFrameworkFixTableMissingKeyErrors
		then nil
		else function(row)
			return "Row " .. (self.rowToIndex[row] or tostring(row))
		end
	self.onSizeChange = function(rbx)
		local props = self.props
		local style = if supportsStyleSheets then props.Style or {} else props.Stylizer
		local headerHeight = if supportsStyleSheets then HEADER_HEIGHT else style.HeaderHeight
		local footerHeight = props.Footer and (if supportsStyleSheets then FOOTER_HEIGHT else style.FooterHeight) or 0
		-- Adjustment so as not to cut off the last row
		local listPadding = 5
		local listHeight = rbx.AbsoluteSize.Y - (headerHeight + footerHeight) - listPadding

		local padding = if props.Padding then props.Padding else 1
		local tableWidth = rbx.AbsoluteSize.X - (2 * padding)
		self.props.OnSizeChange(listHeight, tableWidth)
	end

	self.onResizeStart = function()
		self._resizing = true
	end

	self.onResizeEnd = function()
		self._resizing = false
	end

	self.onScrollUpdate = function(offset: Vector2)
		if self:useVariableWidth() then
			local offsetX = offset.X
			local scroller = self.scrollingFrameRef.current
			if offset.X < OFFSET_SNAP and scroller then
				-- When the scrollbar disappears the CanvasPosition can remain at a small positive number
				-- Ensure that the header snaps back to 0 when this happens.
				if scroller.AbsoluteCanvasSize.X - OFFSET_SNAP < scroller.AbsoluteWindowSize.X then
					offsetX = 0
				end
			end
			self:setState({
				HeaderOffset = offsetX,
			})
		end
	end

	self.cellContentsWidth = {}

	self.setCellContentsWidth = function(column, row, overflow)
		if not self.cellContentsWidth[column] then
			self.cellContentsWidth[column] = {}
		end
		self.cellContentsWidth[column][row] = overflow
	end

	self.onExpandColumnOnDoubleClick = function(colIndex, totalWidth)
		local props = self.props
		if not self.cellContentsWidth[colIndex] then
			return
		end

		local largestOverflowInCol = 0
		for rowIndex = 1, #props.Rows do
			if
				self.cellContentsWidth[colIndex][rowIndex]
				and self.cellContentsWidth[colIndex][rowIndex] > largestOverflowInCol
			then
				largestOverflowInCol = self.cellContentsWidth[colIndex][rowIndex]
			end
		end

		local sizes = {}
		for _, col in ipairs(props.Columns) do
			table.insert(sizes, col.Width)
		end

		-- If there is text overflow present in that column, increase its width
		if largestOverflowInCol > 0 then
			self.expandColumnToFitOverflow(
				colIndex,
				largestOverflowInCol,
				DEFAULT_COLUMN_MIN_WIDTH.Offset,
				totalWidth,
				sizes
			)
		end
	end

	self.expandColumnToFitOverflow = function(overflowCol, overflowWidth, colMinWidth, totalWidth, sizes)
		local newSizes = {}

		local newOverflowColSize = overflowWidth / totalWidth
		local widthRequired = (colMinWidth * (#sizes - 1)) + overflowWidth

		-- If the overflowed text is too large to properly display, give its column the max width possible and
		-- set the other columns to the default minimum width
		if widthRequired >= totalWidth then
			newOverflowColSize = (totalWidth - ((#sizes - 1) * colMinWidth)) / totalWidth
		end

		local remainingSpace = 1 - newOverflowColSize
		local sizeOtherColsOccupy = 1 - sizes[overflowCol].Scale

		for i = 1, #sizes do
			if i == overflowCol then
				table.insert(newSizes, UDim.new(newOverflowColSize, 0))
			else
				if widthRequired >= totalWidth then
					-- set the other columns to the default min width
					table.insert(newSizes, UDim.new((colMinWidth / totalWidth), 0))
				else
					-- fill the remaining leftover space with the other columns maintaining their relative proportion
					local proportion = sizes[i].Scale / sizeOtherColsOccupy
					local updatedSize = proportion * remainingSpace
					table.insert(newSizes, UDim.new(updatedSize, 0))
				end
			end
		end
		self.props.OnColumnSizesChange(newSizes)
	end
end

function Table:_flushRenderRow()
	self._getRowProps = function(row, index: number, position: UDim2)
		local props = self.props
		local style = props.Stylizer

		local isHighlightedRow = false
		if props.HighlightedRows then
			for _, currRow in ipairs(props.HighlightedRows) do
				if deepEqual(currRow, row.item) then
					isHighlightedRow = true
				end
			end
		end
		local rowHeight = prioritize(props.RowHeight, if supportsStyleSheets then ROW_HEIGHT else style.RowHeight)
		local adjustedRowHeight
		if props.GetRowHeight then
			adjustedRowHeight = props.GetRowHeight(row, rowHeight)
		end
		return {
			key = if FFlagDevFrameworkFixTableMissingKeyErrors
					and isRoact17
					and self.props.GetRowId
				then self.props.GetRowId(row)
				else nil,
			CellProps = props.CellProps,
			CellComponent = props.CellComponent,
			Columns = props.Columns,
			Rows = props.Rows,
			Row = row,
			RowIndex = index,
			Selected = index == props.SelectedRow,
			OnHover = props.OnHoverRow and self.onHoverRow,
			OnHoverEnd = props.OnHoverRowEnd and self.onHoverRowEnd,
			OnPress = props.OnSelectRow and self.onSelectRow,
			OnDoubleClick = props.OnDoubleClick and self.onDoubleClick,
			OnRightClick = self.onRightClickRow,
			Position = position,
			Size = if props.GetRowHeight then UDim2.new(1, 0, 0, adjustedRowHeight) else UDim2.new(1, 0, 0, rowHeight),
			FullSpan = props.FullSpan,
			FullSpanEmphasis = props.FullSpanEmphasis,
			HighlightRow = isHighlightedRow,
			RowHeight = if props.GetRowHeight then adjustedRowHeight else rowHeight,
			SetCellContentsWidth = if props.ExpandOnDoubleClick then self.setCellContentsWidth else nil,
			Variant = props.Variant,
		}
	end
end

function Table:willUpdate(nextProps)
	local props = self.props
	if props.Columns ~= nextProps.Columns then
		local changedColumnCount = #props.Columns ~= #nextProps.Columns
		local changedColumnWidth = false
		if not changedColumnCount then
			changedColumnWidth = some(props.Columns, function(column, index: number)
				local nextColumn = nextProps.Columns[index]
				return nextColumn.Width ~= column.Width
			end)
		end

		if changedColumnCount or changedColumnWidth then
			self:_flushRenderRow()
		end
	end
end

function Table:renderResizableHeadings()
	local props = self.props
	local style = props.Stylizer
	local sizes = map(props.Columns, function(column: Column)
		return column.Width or UDim.new(1 / #props.Columns, 0)
	end)
	local minSizes = map(props.Columns, function(column: Column)
		return column.MinWidth or DEFAULT_COLUMN_MIN_WIDTH
	end)
	return Roact.createElement(
		SplitPane,
		{
			HideBars = true,
			UseScale = props.UseScale,
			UseDeficit = props.UseDeficit,
			ClampSize = props.ClampSize,
			Sizes = sizes,
			MinSizes = minSizes,
			OnSizesChange = props.OnColumnSizesChange,
			OnResizeStart = self.onResizeStart,
			OnResizeEnd = self.onResizeEnd,
			ExpandColumnOnDoubleClick = if props.ExpandOnDoubleClick then self.onExpandColumnOnDoubleClick else nil,
			PaneStyle = if supportsStyleSheets then nil else "SubtleBox",
			Position = UDim2.new(0, -self.state.HeaderOffset, 0, 0),
		},
		map(props.Columns, function(column: Column, index: number)
			local order = props.SortIndex == index and props.SortOrder or nil
			local headerCellComponent = props.HeaderCellComponent or TableHeaderCell
			return Roact.createElement(headerCellComponent, {
				Name = column.Name,
				Tooltip = column.Tooltip,
				Order = order,
				-- Need -1 pixel offset to align header and cell borders due to BorderMode property
				Width = UDim.new(1, -1),
				ColumnIndex = index,
				Style = if supportsStyleSheets then nil else style,
				OnPress = self.props.OnSortChange and function()
					local function sort()
						if self._resizing then
							return
						end
						-- Swap to ascending or use descending
						local nextOrder = if order == Enum.SortDirection.Descending
							then Enum.SortDirection.Ascending
							else Enum.SortDirection.Descending
						self.props.OnSortChange(index, nextOrder)
					end
					spawn(sort)
				end or nil,
				Variant = props.Variant,
			})
		end)
	)
end

function Table:renderFixedHeadings()
	local props = self.props
	local style = props.Stylizer
	return map(props.Columns, function(column: Column, index: number)
		local width = column.Width or UDim.new(1 / #props.Columns, 0)
		local order = props.SortIndex == index and props.SortOrder or nil
		local headerCellComponent = props.HeaderCellComponent or TableHeaderCell
		return Roact.createElement(headerCellComponent, {
			key = if isRoact17 then column.Key or column.Name else nil,
			Name = column.Name,
			Order = order,
			Width = width,
			ColumnIndex = index,
			Style = style,
			OnPress = self.props.OnSortChange and function()
				-- Swap to ascending or use descending
				local nextOrder = order == Enum.SortDirection.Descending and Enum.SortDirection.Ascending
					or Enum.SortDirection.Descending
				self.props.OnSortChange(index, nextOrder)
			end or nil,
			Variant = props.Variant,
		})
	end)
end

function Table:renderHeadings()
	local props = self.props
	if props.OnColumnSizesChange then
		return {
			SplitPane = self:renderResizableHeadings(),
		}
	else
		return self:renderFixedHeadings()
	end
end

function Table:renderHeader(headerHeight: number)
	local props = self.props
	local headings = self:renderHeadings()
	local style = props.Stylizer

	local header = Roact.createElement(
		Pane,
		if supportsStyleSheets
			then {
				LayoutOrder = 1,
				Size = UDim2.new(1, 0, 0, headerHeight),
				Padding = {
					Right = if FFlagDevFrameworkScrollBarInset
							and props.Scroll
							and props.VerticalScrollBarInset == Enum.ScrollBarInset.Always
						then SCROLL_HEADER_PADDING
						elseif not FFlagDevFrameworkScrollBarInset and props.Scroll then SCROLL_HEADER_PADDING
						else nil,
				},
				ZIndex = 2,
				[React.Tag] = joinTags(
					"Main",
					if props.OnColumnSizesChange then "" else "X-Row",
					if props.Variant == "modern" then "X-Transparent" else "X-Border"
				),
			}
			else {
				Layout = if props.OnColumnSizesChange then nil else Enum.FillDirection.Horizontal,
				LayoutOrder = 1,
				Size = UDim2.new(1, 0, 0, headerHeight),
				Padding = if (
						FFlagDevFrameworkScrollBarInset
						and props.Scroll
						and props.VerticalScrollBarInset == Enum.ScrollBarInset.Always
					) or (not FFlagDevFrameworkScrollBarInset and props.Scroll)
					then style.ScrollHeaderPadding
					else nil,
				Style = "SubtleBox",
				BorderColor3 = style.Border,
				BorderSizePixel = 1,
				ZIndex = 2,
			},
		headings
	)

	if supportsStyleSheets and props.Variant == "modern" then
		local borderSize = 2
		return Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 0, headerHeight),
		}, {
			BorderBottom = Roact.createElement(Pane, {
				Size = UDim2.new(1, 0, 0, borderSize),
				Position = UDim2.new(0, 0, 0, headerHeight - borderSize),
				ZIndex = 3,
				[React.Tag] = "Component-TableHeaderBorder",
			}),
			Header = header,
		})
	else
		return header
	end
end

function Table:useVariableWidth()
	local props = self.props
	return props.OnColumnSizesChange and not props.UseScale and not props.ClampSize
end

function Table:getWidth()
	local props = self.props
	return reduce(props.Columns, function(value: number, column: Column)
		local columnWidth = if column.Width then column.Width.Offset else 0
		return value + columnWidth
	end, 0)
end
function Table:renderScroll()
	local props = self.props
	local style = props.Stylizer
	local width = self:getWidth()
	local rowHeight = prioritize(props.RowHeight, if supportsStyleSheets then ROW_HEIGHT else style.RowHeight)

	local listProps = {
		CanvasSize = UDim2.fromOffset(width, rowHeight * #props.Rows),
		GetRowProps = self._getRowProps,
		OnScrollUpdate = self.onScrollUpdate,
		Rows = self.props.Rows,
		RowHeight = rowHeight,
		RowComponent = props.RowComponent or TableRow,
		OnLoadRange = props.OnLoadRange,
		VerticalScrollBarInset = props.VerticalScrollBarInset,
	}

	return Roact.createElement(List, join(listProps, props.ScrollProps))
end

function Table:renderRows()
	local props = self.props
	local style = props.Stylizer
	local RowComponent = props.RowComponent or TableRow
	local rowHeight = prioritize(props.RowHeight, if supportsStyleSheets then ROW_HEIGHT else style.RowHeight)
	local rowSize = UDim2.new(1, 0, 0, rowHeight)
	local rows
	local cumulativeHeight = 0
	rows = map(props.Rows, function(row: any, index: number)
		local adjustedRowHeight
		local adjustedRowSize
		if props.GetRowHeight then
			adjustedRowHeight = props.GetRowHeight(row, rowHeight)
			adjustedRowSize = UDim2.new(1, 0, 0, adjustedRowHeight)
			cumulativeHeight = cumulativeHeight + adjustedRowHeight
		end
		return Roact.createElement(
			RowComponent,
			if props.GetRowHeight
				then self._getRowProps(
					row,
					index,
					UDim2.new(0, 0, 0, cumulativeHeight - adjustedRowHeight),
					adjustedRowSize
				)
				else self._getRowProps(row, index, UDim2.new(0, 0, 0, (index - 1) * rowHeight), rowSize)
		)
	end)
	return Roact.createFragment(rows)
end

function Table:render()
	local props = self.props
	local style = if supportsStyleSheets then props.Style or {} else props.Stylizer
	local showFooter = props.ShowFooter
	local showHeader = props.ShowHeader
	if showHeader == nil then
		showHeader = true
	end
	if showFooter == nil then
		showFooter = props.Footer ~= nil
	end
	local headerHeight = if props.ColumnHeaderHeight
		then props.ColumnHeaderHeight
		else (showHeader and (if supportsStyleSheets then HEADER_HEIGHT else style.HeaderHeight) or 0)
	local footerHeight = showFooter and (if supportsStyleSheets then FOOTER_HEIGHT else style.FooterHeight) or 0

	local useVariableWidth = self:useVariableWidth()

	local shouldScroll = props.Scroll or useVariableWidth
	local child = if shouldScroll then self:renderScroll() else self:renderRows()
	local header = if showHeader then self:renderHeader(headerHeight) else nil
	local automaticSize = props.AutomaticSize
	local scaleX = 1
	local scaleY = 1
	if automaticSize then
		if automaticSize == Enum.AutomaticSize.X or automaticSize == Enum.AutomaticSize.XY then
			scaleX = 0
		end
		if automaticSize == Enum.AutomaticSize.Y or automaticSize == Enum.AutomaticSize.XY then
			scaleY = 0
		end
	end
	local size = if automaticSize
		then UDim2.fromScale(scaleX, scaleY)
		else UDim2.new(1, 0, 1, -(headerHeight + footerHeight))

	local list = Roact.createElement(Pane, {
		ClipsDescendants = true,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		LayoutOrder = 2,
		Padding = style.ListPadding,
		Size = size,
		AutomaticSize = props.AutomaticSize,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		[Roact.Event.MouseLeave] = props.OnMouseLeave,
	}, {
		Child = child,
	})

	local paneProps = {
		AnchorPoint = props.AnchorPoint,
		Size = props.Size,
		AutomaticSize = props.AutomaticSize,
		LayoutOrder = props.LayoutOrder,
		Position = props.Position,
		Layout = Enum.FillDirection.Vertical,
		Style = if supportsStyleSheets then nil else "BorderBox",
		Padding = if props.Padding then props.Padding else (if supportsStyleSheets then nil else 1),
		[Roact.Change.AbsoluteSize] = props.OnSizeChange and self.onSizeChange or nil,
		[Roact.Ref] = props.ForwardRef,
	}
	if supportsStyleSheets then
		paneProps[React.Tag] = joinTags("Component-Table", props[React.Tag] or "Input X-Corner X-Stroke")
	end

	return Roact.createElement(Pane, paneProps, {
		Header = header,
		List = list,
		Footer = showFooter and Roact.createElement(
			Pane,
			if supportsStyleSheets
				then {
					LayoutOrder = 3,
					Size = UDim2.new(1, 0, 0, footerHeight),
					[React.Tag] = "Main X-Border",
				}
				else {
					LayoutOrder = 3,
					Style = "SubtleBox",
					BorderColor3 = style.Border,
					BorderSizePixel = 1,
					Size = UDim2.new(1, 0, 0, footerHeight),
				},
			{
				Content = props.Footer,
			}
		),
	})
end

if not supportsStyleSheets then
	Table = withContext({
		Stylizer = ContextServices.Stylizer,
	})(Table)
end

Table = withForwardRef(Table)

return Table
