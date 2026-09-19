--[[
	A virtualized grid capable of rendering an aribtrary number of cells in a performant way.
	Any props not consumed by Grid are passed to the underlying ScrollingFrame.

	Required Props:
		array[any] Cells: The data for the cells to display

	Optional Props:
		table ForwardRef: An optional ref to pass to the underlying ScrollingFrame.
		Enum.AutomaticSize AutomaticSize: Specifies whether or not to automatically size the component to fit content
		Vector2 InitialCanvasPosition: The initial position of the canvas (default = (0, 0))
		callback GetCellProps: A function which should return the props for the cell component.
			For each cell it is passed (cell, index: number, position: UDim2, size: UDim2) -> CellProps
		table CellGroupHeader: A table of props to customize the behavior and appearance of cell groups.
		UDim2 CellPadding: The padding of each cell (default from style = 2x2)
		UDim2 CellSize: The size of each cell (default from style = 64x64)
		any CellComponent: The component to render a cell (default = GridCell)
		table CellGroups: Group cells into sections with dividers.
		UDim2 CanvasSize: The size of the canvas - if not passed in the Canvas will be sized automatically
		callback OnScrollUpdate: Called whenever the CanvasPosition of the scroller updates
		callback OnLoadRange: Called when scrolled to the end of the grid.
			OnLoadRange(offset: number, count: number)
		Enum.ScrollingDirection ScrollingDirection: The ScrollDirection of a given grid
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		table SpecialCells: A dictionary of cells that have different size and render needs.
		Enum.ScrollBarInset HorizontalScrollBarInset: whether the canvas should be inset by ScrollBarThickness for the horizontal scroll bar.
		Enum.ScrollBarInset VerticalScrollBarInset: whether the canvas should be inset by ScrollBarThickness for the vertical scroll bar.
]]
local Framework = script:FindFirstAncestor("UI").Parent
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local Dash = require(Framework.Parent.Dash)
local append = Dash.append
local collect = Dash.collect
local join = Dash.join
local assign = Dash.assign
local map = Dash.map
local mapFirst = Dash.mapFirst
local omit = Dash.omit
local reduce = Dash.reduce

local prioritize = require(Framework.Util.prioritize)
local withForwardRef = require(Framework.Wrappers.withForwardRef)

local Roact = require(Framework.Parent.Roact)
local GridCell = require(script.GridCell)
local GroupHeader = require(script.GroupHeader)
local GridStyle = require(script.style)

local FFlagDevFrameworkGridOnLoadRange = game:DefineFastFlag("DevFrameworkGridOnLoadRange", false)
local FFlagDevFrameworkFixMissingKeyErrors = require(Framework.SharedFlags.getFFlagDevFrameworkFixMissingKeyErrors)()
local getFFlagGridDeferIncrementRender = require(Framework.SharedFlags.getFFlagGridDeferIncrementRender)

export type SpecialCellType = {
	AbsoluteSize: Vector2,
	OnRender: (cell: any, index: number, cellPosition: UDim2, cellSize: UDim2) -> any,
}

export type CellGroup = {
	CellCount: number, -- Number of cells in the group. Passed to HeaderComponent.
	IsCollapsed: boolean?, -- Whether the group is collapsed. Passed to HeaderComponent.
	Text: string, -- Text to show in the group header. Passed to HeaderComponent.
}

export type CellGroupHeader = {
	AfterContent: boolean?, -- Whether the header is placed after the group content. The default is false (above content).
	Collapsible: boolean?, -- Whether groups are collapsible. Passed to HeaderComponent.
	HeaderComponent: any?, -- Header component to render. Default is GroupHeader.
	OnExpandCollapseClicked: ((groupIndex: number) -> ())?, -- Function called when the expand-collapse button is clicked.
	Size: UDim2?, -- The size of the header component.
	SnapWidthToGrid: boolean?, -- Whether to automatically size the header width to a grid cell boundary. The default is true.
}

export type Props<T> = {
	ForwardRef: any?,
	AutomaticSize: Enum.AutomaticSize?,
	InitialCanvasPosition: Vector2?,
	CanvasSize: UDim2?,
	CellPadding: UDim2?,
	Cells: { T },
	CellSize: UDim2?,
	GetCellProps: (T) -> { [string]: any },
	CellComponent: any,
	CellGroupHeader: CellGroupHeader?,
	CellGroups: { CellGroup }?,
	OnScrollUpdate: ((canvasPosition: Vector2, canvasSize: UDim2) -> ())?,
	OnLoadRange: ((offset: number, count: number) -> ())?,
	ScrollingDirection: Enum.ScrollingDirection?,
	SpecialCells: { SpecialCellType }?,
	HorizontalScrollBarInset: Enum.ScrollBarInset?,
	VerticalScrollBarInset: Enum.ScrollBarInset?,
}

type _Props<T> = Props<T> & {
	Stylizer: { [string]: any },
}

type _CellGroup = CellGroup & {
	CellStart: number, -- Index of the first cell in the group (one based).
	Height: number, -- Total height in pixels of the group header and content.
	Offset: number, -- Starting Y position of the group.
	RowCount: number, -- Number of rows in the group.
	RowStart: number, -- Index of the first row in the group (zero based).
}

local MAX_UPDATE_COUNT = 5000
local BUFFER = 10
local SPECIAL_CELL_HEADER_KEY = "HEADER"

local PROPS = {
	"InitialCanvasPosition", -- Passing CanvasPosition to the ScrollingFrame doesn't correctly set it, so we set it manually after Grid is rendered
	"CellComponent",
	"CellGroupHeader",
	"CellGroups",
	"CellPadding",
	"CellSize",
	"Cells",
	"GetCellProps",
	"OnScrollUpdate",
	"OnLoadRange",
	"SpecialCells",
	"Stylizer",
	"ForwardRef",
}

local DEFAULT_CELL_GROUP_HEADER: CellGroupHeader = {
	AfterContent = false,
	Collapsible = true,
	HeaderComponent = GroupHeader,
	SnapWidthToGrid = true,
}

local function getGroupFromCell(groups: { _CellGroup }, cellIndex: number): _CellGroup
	return mapFirst(groups, function(group: _CellGroup)
		local lastIndex = group.CellStart + group.CellCount - 1
		if cellIndex >= group.CellStart and cellIndex <= lastIndex then
			return group
		else
			return nil
		end
	end)
end

local Grid = Roact.PureComponent:extend("Grid")

function Grid:init()
	self.state = {
		updateCount = 0,
	}
	self.cellGroups = nil
	self.minIndex = 0
	self.maxIndex = 0
	self.canvasPosition = nil
	self.ref = self.props.ForwardRef or Roact.createRef()
	self._getCellProps = function(cell, index: number, position: UDim2, size: UDim2)
		return self:getDefaultCellProps(cell, index, position, size)
	end
end

function Grid:_getAbsoluteSize(size: UDim2): Vector2
	local scroller = self.ref.current
	if not scroller then
		return Vector2.new(0, 0)
	else
		return Vector2.new(
			(scroller.AbsoluteSize.X * size.X.Scale) + size.X.Offset,
			(scroller.AbsoluteSize.Y * size.Y.Scale) + size.Y.Offset
		)
	end
end

--[[
	Create a complete CellGroupHeader table by joining default values with
	the passed-in header props. The final Size of the header is also determined.
	If SnapWidthToGrid is true, the width is adjusted so that the right-edge
	of the header will snap to a cell boundary. Otherwise the width is adjusted
	to account for cell padding only.
]]
function Grid:_getCellGroupHeader(cellSize: Vector2, cellPadding: Vector2): CellGroupHeader
	local props: _Props<any> = self.props
	local style = props.Stylizer or GridStyle

	local styleProps = {
		Size = style.CellGroupHeader.Size,
	}
	local cellGroupHeader = join(DEFAULT_CELL_GROUP_HEADER, styleProps, props.CellGroupHeader)
	local size = cellGroupHeader.Size

	if cellGroupHeader.SnapWidthToGrid then
		local cellWidth = cellSize.X + cellPadding.X
		local width = self:_getCellsPerRow() * cellWidth - cellPadding.X
		cellGroupHeader.Size = UDim2.new(0, width, size.Y.Scale, size.Y.Offset)
	else
		cellGroupHeader.Size = size - UDim2.fromOffset(cellPadding.X, 0)
	end
	return cellGroupHeader
end

function Grid:_getCellSize(): Vector2
	local props = self.props
	local style = props.Stylizer or GridStyle

	local cellSize = prioritize(props.CellSize, style.CellSize)
	return self:_getAbsoluteSize(cellSize)
end

function Grid:_getCellPadding(): Vector2
	local props = self.props
	local style = props.Stylizer or GridStyle

	local cellPadding = prioritize(props.CellPadding, style.CellPadding)
	return self:_getAbsoluteSize(cellPadding)
end

function Grid:_getCellsPerRow(): number
	local scroller = self.ref.current
	if not scroller then
		return 0
	end
	local width = scroller.AbsoluteSize.X

	local cellPadding = self:_getCellPadding()
	local cellSize = self:_getCellSize()
	local cellWidth = cellSize.X + cellPadding.X
	if cellWidth == 0 then
		return 0
	else
		return math.floor((width - cellPadding.X) / cellWidth)
	end
end

function Grid:didMount()
	self.firstUpdateDone = false
end

function Grid:didUpdate(prevProps)
	if self.props.ForwardRef and self.props.ForwardRef ~= self.ref then
		self.ref = self.props.ForwardRef
	end

	-- The following code is a workaround for CanvasPosition not being set when it is passed into ScrollingFrame
	-- Instead, we set it manually after the Grid is rendered
	local props = self.props

	if self.firstUpdateDone then
		return
	end

	local scroller = self.ref.current
	if scroller and props.InitialCanvasPosition then
		scroller.CanvasPosition = props.InitialCanvasPosition
		if props.OnScrollUpdate then
			local canvasSize = Vector2.new(scroller.CanvasSize.X.Offset, scroller.CanvasSize.Y.Offset)
			props.OnScrollUpdate(scroller.CanvasPosition, canvasSize)
		end
		self.firstUpdateDone = true
	end

	if
		prevProps.OnScrollUpdate ~= props.OnScrollUpdate
		or (prevProps.OnLoadRange ~= props.OnLoadRange and FFlagDevFrameworkGridOnLoadRange)
		or prevProps.SpecialCells ~= props.SpecialCells
		or prevProps.CellGroups ~= props.CellGroups
	then
		self:_update()
	end
end

-- Check for changes to the scroll position in window size in a heartbeat so we don't miss any event handlers
function Grid:_update()
	local props = self.props

	local minIndex, maxIndex, cellGroups = self:_getRange()
	if maxIndex == 0 then
		return
	end

	local scroller = self.ref.current
	if scroller and scroller.CanvasPosition ~= self.canvasPosition then
		self.canvasPosition = scroller.CanvasPosition
		if props.OnScrollUpdate then
			local canvasSize = Vector2.new(scroller.CanvasSize.X.Offset, scroller.CanvasSize.Y.Offset)

			-- Don't call OnScrollUpdate if the canvas isn't ready yet
			if canvasSize.X ~= 0 or canvasSize.Y ~= 0 then
				props.OnScrollUpdate(self.canvasPosition, canvasSize)
			end
		end
	end

	if self.minIndex == minIndex and self.maxIndex == maxIndex then
		return
	end

	if FFlagDevFrameworkGridOnLoadRange and props.OnLoadRange and maxIndex >= #props.Cells then
		props.OnLoadRange(minIndex, maxIndex)
	end

	self.minIndex = minIndex
	self.maxIndex = maxIndex
	self.cellGroups = cellGroups
	if getFFlagGridDeferIncrementRender() then
		task.defer(function()
			self:_incrementRender()
		end)
	else
		self:_incrementRender()
	end
end

-- Trigger the grid to re-render by incrementing an internal counter
function Grid:_incrementRender()
	self:setState(function(prevState)
		return {
			updateCount = (prevState.updateCount + 1) % MAX_UPDATE_COUNT,
		}
	end)
end

-- Get the elements which are currently visible based on scroll + window size,
-- with a buffer either side to reduce flickering when scrolling
function Grid:_getRange(): (number, number, { _CellGroup }?)
	local props: _Props<any> = self.props
	local scroller = self.ref.current
	if not scroller then
		return self.minIndex, self.maxIndex, self.cellGroups
	end

	local specialHeightTotal = 0
	local specialCells = props.SpecialCells
	if specialCells then
		for _, specialCell in specialCells do
			specialHeightTotal += specialCell.AbsoluteSize.Y
		end
	end
	local offset = scroller.CanvasPosition.Y
	local height = scroller.AbsoluteSize.Y

	local cellsPerRow = self:_getCellsPerRow()

	local minIndex, maxIndex, groups = 1, 1, nil
	if props.CellGroups and #props.CellGroups > 0 then
		groups = self:_getGroups()
		local offsetEnd = offset + height
		for _, group: _CellGroup in groups do
			-- Stop if the group begins after the visible area
			if group.Offset > offsetEnd then
				assert(minIndex ~= nil, "minIndex should not be nil")
				assert(maxIndex ~= nil, "maxIndex should not be nil")
				break
			end

			-- Skip the group if it ends before the start of the visible area
			local groupOffsetEnd = group.Offset + group.Height
			if groupOffsetEnd < offset then
				continue
			end

			if not minIndex then
				-- The first visible group contains the minIndex. This can be
				-- refined to include the first cell in the first visible row
				-- in the group, but this works for now.
				minIndex = group.CellStart
			end
			maxIndex = group.CellStart + (group.RowCount * cellsPerRow) - 1
		end
	else
		local cellSize = self:_getCellSize()
		local cellPadding = self:_getCellPadding()

		minIndex = (math.max(0, math.floor(offset / (cellSize.Y + cellPadding.Y)) - BUFFER - specialHeightTotal))
			* cellsPerRow

		maxIndex = (math.ceil((offset + height) / (cellSize.Y + cellPadding.Y)) + BUFFER) * cellsPerRow
	end
	return minIndex, maxIndex, groups
end

function Grid:_getGroups(): { _CellGroup }
	local props: _Props<any> = self.props
	if not props.CellGroups or #props.CellGroups == 0 then
		return {}
	end

	local cellPadding = self:_getCellPadding()
	local cellSize = self:_getCellSize()
	local cellHeight = cellSize.Y + cellPadding.Y
	local cellGroupHeader = self:_getCellGroupHeader(cellSize, cellPadding)
	local headerHeight = cellGroupHeader.Size.Y.Offset + cellPadding.Y
	local cellStart = 1
	local offset = 0
	local rowStart = 0

	local cellsPerRow = self:_getCellsPerRow()

	local cellGroups = map(props.CellGroups, function(group: CellGroup): _CellGroup
		local rowCount = math.ceil(group.CellCount / cellsPerRow)
		local height = headerHeight
		if not group.IsCollapsed then
			local contentHeight = rowCount * cellHeight
			height += contentHeight
		end

		local cellGroup = join({
			CellStart = cellStart,
			Height = height,
			Offset = offset,
			RowCount = rowCount,
			RowStart = rowStart,
		}, group)

		cellStart += group.CellCount
		offset += height
		rowStart += rowCount

		return cellGroup
	end)

	-- Remaining cells go in the last group so that all cells are grouped
	local lastGroup = cellGroups[#cellGroups]
	lastGroup.CellCount = #props.Cells - lastGroup.CellStart + 1

	return cellGroups
end

function Grid:_calculateCellPosition(index: number, cellGroups: { _CellGroup }?): UDim2
	local cellPadding = self:_getCellPadding()
	local cellSize = self:_getCellSize()
	local cellWidth = cellSize.X + cellPadding.X
	local cellHeight = cellSize.Y + cellPadding.Y
	local cellsPerRow = self:_getCellsPerRow()
	local x, y

	if cellGroups then
		local groupHeader = self:_getCellGroupHeader(cellSize, cellPadding)
		local group = getGroupFromCell(cellGroups, index)
		assert(group, "Expected cell to belong to a group")

		local contentOffset = group.Offset
		if not groupHeader.AfterContent then
			contentOffset += groupHeader.Size.Y.Offset
		end

		local rowOffset = math.floor((index - group.CellStart) / cellsPerRow)
		local column = (index - group.CellStart) % cellsPerRow
		x = cellPadding.X + (column * cellWidth)
		y = contentOffset + cellPadding.Y + (rowOffset * cellHeight)
	else
		local row = if index <= 1 then 0 else math.floor((index - 1) / cellsPerRow)
		local column = (index - 1) % cellsPerRow
		x = cellPadding.X + (column * cellWidth)
		y = cellPadding.Y + (row * cellHeight)
	end

	return UDim2.fromOffset(x, y)
end

function Grid:getDefaultCellProps(cell, index: number, position: UDim2, size: UDim2)
	local style = self.props.Stylizer or GridStyle

	return {
		Key = index,
		Position = position,
		Cell = cell,
		Size = size,
		Style = style,
	}
end

function Grid:render()
	local props: _Props<any> = self.props
	local getCellProps = props.GetCellProps or self._getCellProps
	local style = props.Stylizer

	local absoluteCellPadding = self:_getCellPadding()
	local absoluteCellSize = self:_getCellSize()
	local cellsPerRow = self:_getCellsPerRow()
	local cells = props.Cells
	local specialCells = props.SpecialCells

	assert(not props.SpecialCells or not props.CellGroups, "Cannot use SpecialCells with CellGroups")

	local specialHeightTotal = 0
	if specialCells then
		for _, specialCell in pairs(specialCells) do
			specialHeightTotal += specialCell.AbsoluteSize.Y
		end
	end

	local children = {}
	local minIndex, maxIndex, cellGroups = self:_getRange()
	local cellSize = prioritize(props.CellSize, style.CellSize)

	local additionalHeightDueToSpecialCells = 0
	local indexOffset = 0
	local headerCell = if specialCells then specialCells[SPECIAL_CELL_HEADER_KEY] else nil
	if headerCell then
		children["Header"] = headerCell.OnRender(
			nil,
			1,
			UDim2.fromOffset(0, 0),
			UDim2.fromOffset(headerCell.AbsoluteSize.X, headerCell.AbsoluteSize.Y)
		)
		additionalHeightDueToSpecialCells += headerCell.AbsoluteSize.Y
		indexOffset += 1
	end

	local groupHeader = props.CellGroupHeader or {}

	for i = minIndex, maxIndex do
		local cell = cells[i]
		if not cell then
			continue
		end

		local cellPosition
		if cellGroups then
			if groupHeader.Collapsible then
				local group = getGroupFromCell(cellGroups, i)
				if group.IsCollapsed then
					continue
				end
			end

			cellPosition = self:_calculateCellPosition(i, cellGroups)
		else
			local row = if i <= 1 then 0 else math.floor((i - 1) / cellsPerRow)
			local cellPositionY = (row * (absoluteCellPadding.Y + absoluteCellSize.Y))
				+ absoluteCellPadding.Y
				+ additionalHeightDueToSpecialCells
			cellPosition = UDim2.fromOffset(
				absoluteCellPadding.X + (((i - 1) % cellsPerRow) * (absoluteCellPadding.X + absoluteCellSize.X)),
				cellPositionY
			)
		end

		local cellProps = getCellProps(cell, i + indexOffset, cellPosition, cellSize)
		local key = cellProps.Key or tostring(i)

		local specialCell = if specialCells then specialCells[key] else nil
		if specialCell then
			local specialCellKey = if FFlagDevFrameworkFixMissingKeyErrors then `SpecialCell_{key}` else key
			children[specialCellKey] = specialCell.OnRender(
				cell,
				i + indexOffset,
				cellPosition,
				UDim2.fromOffset(specialCell.AbsoluteSize.X, specialCell.AbsoluteSize.Y)
			)
			additionalHeightDueToSpecialCells = specialCell.AbsoluteSize.Y
		else
			local cellKey = key
			if FFlagDevFrameworkFixMissingKeyErrors then
				-- Having both the key prop and the string table key for the cell is a react warning
				cellKey = if cellProps["key"] then i else `Cell_{key}`
			end
			children[cellKey] = Roact.createElement(props.CellComponent or GridCell, cellProps)
		end
	end

	if cellGroups then
		if FFlagDevFrameworkFixMissingKeyErrors then
			assign(children, self:renderGroupHeaders(cellGroups))
		else
			append(children, self:renderGroupHeaders(cellGroups))
		end
	end

	local scrollProps = omit(props, PROPS)

	local totalHeight
	if cellGroups then
		totalHeight = reduce(cellGroups, function(current: number, group: _CellGroup)
			return current + group.Height
		end, 0)
	else
		-- Adds an additional bottom padding to the last row of cells
		totalHeight = specialHeightTotal
			+ (absoluteCellSize.Y + absoluteCellPadding.Y) * math.ceil(#props.Cells / cellsPerRow)
			+ absoluteCellPadding.Y
	end

	local function processUpdate()
		self:_update()
	end

	return Roact.createElement(
		"ScrollingFrame",
		join({
			AutomaticSize = props.AutomaticSize,
			AutomaticCanvasSize = if not props.CanvasSize then Enum.AutomaticSize.X else nil,
			BackgroundColor = BrickColor.new(style.BackgroundColor),
			CanvasSize = props.CanvasSize or UDim2.new(0, 0, 0, totalHeight),
			ScrollingDirection = props.ScrollingDirection,
			Size = UDim2.fromScale(1, 1),
			[Roact.Ref] = self.ref,
			[Roact.Change.AbsoluteSize] = processUpdate,
			[Roact.Change.CanvasPosition] = processUpdate,
			[Roact.Change.CanvasSize] = processUpdate,
		}, style.ScrollingFrame, scrollProps),
		children
	)
end

function Grid:renderGroupHeaders(cellGroups: { _CellGroup }): { [string]: any }
	local props: _Props<any> = self.props
	local style = props.Stylizer

	local cellSize = self:_getCellSize()
	local cellPadding = self:_getCellPadding()
	local cellGroupHeader = self:_getCellGroupHeader(cellSize, cellPadding)
	local headerHeight = cellGroupHeader.Size.Y.Offset
	local headerComponent = cellGroupHeader.HeaderComponent

	return collect(cellGroups, function(index: number, group: _CellGroup)
		local headerOffset = group.Offset
		if cellGroupHeader.AfterContent then
			local contentHeight = group.Height - headerHeight
			headerOffset += contentHeight
		end

		local headerProps = join({
			Collapsible = cellGroupHeader.Collapsible,
			OnExpandCollapseClicked = function()
				if cellGroupHeader.OnExpandCollapseClicked then
					cellGroupHeader.OnExpandCollapseClicked(index)
				end
			end,
			Position = UDim2.fromOffset(cellPadding.X, headerOffset),
			Size = cellGroupHeader.Size,
			Style = style.CellGroupHeader,
		}, group)
		local key = `Group {index}`
		return key, Roact.createElement(headerComponent, headerProps)
	end)
end

Grid = withContext({
	Stylizer = ContextServices.Stylizer,
})(Grid)

return withForwardRef(Grid)
