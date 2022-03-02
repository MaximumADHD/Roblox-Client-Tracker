--[[
	An InfiniteScrollingGrid with callbacks to load more items.

	Required Props:
		integer AbsoluteMax: Largest index in your table
		Vector2 AbsoluteSize: The absolute size of the current view.
		array[any] Items: The items to scroll through.
		callback RenderItem: Callback to render each item that should be visible.
			RenderItem(index: number, item: Item)
		any WrapperProps: The props sent in by the withAbsoluteSize wrapper.

	Optional Props:
		integer BufferedRows: The number of rows to buffer.
		UDim2 CellPadding: The padding for a singular cell.
		UDim2 CellSize: The size of a singlular cell.
		callback GetItemKey: Takes in an item index and returns a unique identifier used to get the item from the Items Table.
			GetItemKey()
		integer LayoutOrder: The order this component will display in a UILayout.
		callback LoadRange: Called when scrolled to the end of the table of items.
			LoadRange(offset: number, count: number)
		boolean Loading: Specifies whether new content is loading in or not.
		callback OnScrollUpdate: Called whenever the scroller updates.
			OnScrollUpdate(canvasPosition: Vector2)
		UDim2 Position: The position of the scrolling frame.
		callback RenderEmpty: Defines how to render an empty cell
			RenderEmpty(index: number)
		UDim2 Size: The size of the scrolling frame.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.

	Style Values:
		integer LoadingIndicatorPadding: The padding of the LoadingIndicator
		UDim2 LoadingIndicatorSize: The size of the LoadingIndicator
]]

local Framework = script.Parent.Parent
local Util = require(Framework.Util)
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local Roact = require(Framework.Parent.Roact)

local UI = Framework.UI
local ScrollingFrame = require(UI.ScrollingFrame)
local Pane = require(UI.Pane)
local LoadingIndicator = require(UI.LoadingIndicator)

local InfiniteScrollingGridStyle = require(script.style)

local withAbsoluteSize = require(Framework.Wrappers.withAbsoluteSize)

local Dash = require(Framework.packages.Dash)
local join = Dash.join

local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext
local Typecheck = Util.Typecheck

local InfiniteScrollingGrid = Roact.PureComponent:extend("InfiniteScrollingGrid")
Typecheck.wrap(InfiniteScrollingGrid, script)

export type Item = any

type _SharedProps = {
	AbsoluteMax : number,
	Items : {Item},
	LayoutOrder : number?,
	Loading : boolean?,
	RenderItem : ((Item: Item) -> any),
}

type _ExternalProps = {
	BufferedRows : number?,
	CellPadding : UDim2?,
	CellSize : UDim2,
	GetItemKey : ((Item) -> any)?,
	LoadRange : ((offset: number, count: number) -> ())?,
	OnScrollUpdate : ((canvasPosition: Vector2) -> ())?,
	Position : UDim2?,
	RenderEmpty : ((index: number) -> any)?,
	Size : UDim2?,
}

type _InternalProps = {
	AbsoluteSize : Vector2,
	BufferedRows : number,
	CellPadding : UDim2,
	CellSize : UDim2,
	GetItemKey : ((Item) -> any),
	LoadRange : ((offset: number, count: number) -> ()),
	OnScrollUpdate : ((canvasPosition: Vector2) -> ()),
	Position : UDim2,
	RenderEmpty : ((index: number) -> any),
	Size : UDim2,
	Stylizer : InfiniteScrollingGridStyle.Style?,
	Theme : any?,
	WrapperProps : any,
}

export type Props = _SharedProps & _ExternalProps
type _Props = _SharedProps & _InternalProps

type _State = {
	absoluteSize: Vector2?,
	canvasPosition: Vector2?,
	cellsPerRow: number,
	maxItemIndex: number,
	maxRowIndex: number,
	minItemIndex: number,
	minRowIndex: number,
	targetMaxItemIndex: number,
	targetMinItemIndex: number,
}

InfiniteScrollingGrid.defaultProps = {
	BufferedRows = 1,
	CellPadding = UDim2.fromOffset(0, 0),
	CellSize = UDim2.fromOffset(100, 100),
	GetItemKey = function(item)
		return item
	end,
	LoadRange = function(offset, count)
		return
	end,
	OnScrollUpdate = function(canvasPosition)
		return
	end,
	RenderEmpty = function(index)
		return Roact.createElement(Pane, {
			Size = UDim2.fromScale(1, 1)
		})
	end,
	Position = UDim2.fromOffset(0, 0),
	Size = UDim2.fromScale(1, 1),
}

local function getCellsPerRow(absoluteSize: Vector2, absoluteCellSize: Vector2, absoluteCellPadding: Vector2): number
	return math.floor((absoluteSize.X + absoluteCellPadding.X) / absoluteCellSize.X)
end

local function getAbsoluteCellPadding(cellPadding: UDim2, absoluteSize: Vector2): Vector2
	return Vector2.new(cellPadding.X.Scale * absoluteSize.X + cellPadding.X.Offset, cellPadding.Y.Scale * absoluteSize.Y + cellPadding.Y.Offset)
end

local function getAbsoluteCellSize(cellSize: UDim2, cellPadding: UDim2, absoluteSize: Vector2): Vector2
	local scalePixels = Vector2.new(math.floor((cellSize.X.Scale + cellPadding.X.Scale) * absoluteSize.X), math.floor((cellSize.Y.Scale + cellPadding.Y.Scale) * absoluteSize.Y))
	return Vector2.new(scalePixels.X + cellSize.X.Offset + cellPadding.X.Offset, scalePixels.Y + cellSize.Y.Offset + cellPadding.Y.Offset)
end

function InfiniteScrollingGrid:init()
	assert(THEME_REFACTOR, "InfiniteScrollingGrid not supported in Theme1, please upgrade your plugin to Theme2")

	self.itemElements = {}
	self.itemKeys = {}

	self.onUpdateView = function(canvasPosition: Vector2)
		local props : _Props = self.props
		local state : _State = self.state

		if state.canvasPosition then
			if canvasPosition.X == state.canvasPosition.X and canvasPosition.Y == state.canvasPosition.Y then
				return
			end
		end

		local absoluteMax = props.AbsoluteMax
		local absoluteSize = props.AbsoluteSize
		local bufferedRows = props.BufferedRows
		local cellSize = props.CellSize
		local cellPadding = props.CellPadding

		local absoluteCellSize = getAbsoluteCellSize(cellSize, cellPadding, absoluteSize)
		local absoluteCellPadding = getAbsoluteCellPadding(cellPadding, absoluteSize)

		local minRowIndex = math.max(math.floor(canvasPosition.Y / absoluteCellSize.Y) - bufferedRows, 0)
		local maxRowIndex = math.floor((canvasPosition.Y + absoluteSize.Y) / absoluteCellSize.Y) + bufferedRows

		local cellsPerRow = getCellsPerRow(absoluteSize, absoluteCellSize, absoluteCellPadding)

		local rowRange = maxRowIndex - minRowIndex

		local minItemIndex = (cellsPerRow * minRowIndex) + 1
		local maxItemIndex = (cellsPerRow * maxRowIndex)

		if minItemIndex ~= state.minItemIndex or maxItemIndex ~= state.maxItemIndex then
			props.LoadRange(minItemIndex, maxItemIndex - minItemIndex + 1)

			local targetMinItemIndex = minItemIndex
			local targetMaxItemIndex = maxItemIndex

			local absoluteMaxRowIndex = math.floor(absoluteMax / cellsPerRow)
			if maxRowIndex > absoluteMaxRowIndex then
				maxRowIndex = math.floor(absoluteMax / cellsPerRow)
				minRowIndex = math.max(maxRowIndex - rowRange, 0)
			end

			local minItemIndex = (cellsPerRow * minRowIndex) + 1
			local maxItemIndex = (cellsPerRow * maxRowIndex) + absoluteMax % cellsPerRow

			local prevMinItemIndex = state.minItemIndex or 1
			local prevMaxItemIndex = state.maxItemIndex or 1

			if minItemIndex > prevMinItemIndex then
				for i = prevMinItemIndex, minItemIndex do
					self.itemElements[i] = nil
				end
			end

			if maxItemIndex < prevMaxItemIndex then
				for i = maxItemIndex, prevMaxItemIndex do
					self.itemElements[i] = nil
				end
			end

			self:setState({
				absoluteSize = absoluteSize,
				canvasPosition = canvasPosition,
				cellsPerRow = cellsPerRow,
				maxItemIndex = maxItemIndex,
				maxRowIndex = maxRowIndex,
				minItemIndex = minItemIndex,
				minRowIndex = minRowIndex,
				targetMaxItemIndex = targetMaxItemIndex,
				targetMinItemIndex = targetMinItemIndex,
			})
		end
	end

	self.onBoundsUpdated = function()
		local props : _Props = self.props
		local state : _State = self.state
		local items = props.Items
		local absoluteMax = props.AbsoluteMax


		local minItemIndex = state.minItemIndex
		local maxItemIndex = state.maxItemIndex
		local targetMinItemIndex = state.targetMinItemIndex
		local targetMaxItemIndex = state.targetMaxItemIndex
		local absoluteTargetMinItemIndex = math.min(targetMinItemIndex, absoluteMax - (targetMaxItemIndex - targetMinItemIndex))
		local absoluteTargetMaxItemIndex = math.min(targetMaxItemIndex, absoluteMax)

		for i = minItemIndex, absoluteTargetMinItemIndex, -1 do
			if not items[i] then
				return
			end
		end

		for i = maxItemIndex, absoluteTargetMaxItemIndex do
			if not items[i] then
				return
			end
		end

		self:setState({
			maxItemIndex = absoluteTargetMaxItemIndex,
			minItemIndex = absoluteTargetMinItemIndex,
			targetMaxItemIndex = absoluteTargetMaxItemIndex,
			targetMinItemIndex = absoluteTargetMinItemIndex,
		})
	end

	self.onScrollUpdate = function(canvasPosition: Vector2)
		local props : _Props = self.props
		props.OnScrollUpdate(canvasPosition)

		self.onUpdateView(canvasPosition)
	end
end

function InfiniteScrollingGrid:didUpdate(prevProps: any)
	local props : _Props = self.props
	local state : _State = self.state
	local absoluteSize = props.AbsoluteSize
	local cellPadding = props.CellPadding
	local cellSize = props.CellSize
	local absoluteCellSize = getAbsoluteCellSize(cellSize, cellPadding, absoluteSize)
	local absoluteCellPadding = getAbsoluteCellPadding(cellPadding, absoluteSize)
	local cellsPerRow = getCellsPerRow(absoluteSize, absoluteCellSize, absoluteCellPadding)

	if prevProps.Items ~= self.props.Items then
		self:setState({
			absoluteSize = Roact.None,
			canvasPosition = Roact.None,
			cellsPerRow = Roact.None,
			minItemIndex = Roact.None,
			minRowIndex = Roact.None,
			maxItemIndex = Roact.None,
			maxRowIndex = Roact.None,
			targetMaxItemIndex = Roact.None,
			targetMinItemIndex = Roact.None,
		})
		return
	end

	if cellsPerRow ~= 0 then
		if not state.absoluteSize or state.absoluteSize.X ~= absoluteSize.X and state.absoluteSize.Y ~= absoluteSize.Y then
			self.onUpdateView(state.canvasPosition or Vector2.new(0, 0))
		end
	end

	if state.minItemIndex and state.targetMinItemIndex and state.maxItemIndex and state.targetMaxItemIndex then
		if state.minItemIndex ~= state.targetMinItemIndex or state.maxItemIndex ~= state.targetMaxItemIndex then
			self.onBoundsUpdated()
		end
	end
end

function InfiniteScrollingGrid:render()
	local props : _Props = self.props
	local state : _State = self.state
	local absoluteMax = props.AbsoluteMax
	local absoluteSize = props.AbsoluteSize
	local cellSize = props.CellSize
	local cellPadding = props.CellPadding
	local getItemKey = props.GetItemKey
	local items = props.Items
	local loading = props.Loading
	local position = props.Position
	local renderItem = props.RenderItem
	local renderEmpty = props.RenderEmpty
	local size = props.Size
	local theme = props.Theme
	local absoluteCellSize = getAbsoluteCellSize(cellSize, cellPadding, absoluteSize)
	local absoluteCellPadding = getAbsoluteCellPadding(cellPadding, absoluteSize)
	local cellsPerRow = getCellsPerRow(absoluteSize, absoluteCellSize, absoluteCellPadding)

	local style
	if THEME_REFACTOR then
		style = props.Stylizer
	else
		style = theme:getStyle("Framework", self)
	end

	if cellsPerRow == 0 or not state.minItemIndex or not state.maxItemIndex then
		return Roact.createElement(Pane, join({
			Size = size,
			Position = position
		}, props.WrapperProps))
	end

	local grid = {
		UIGridLayout = Roact.createElement("UIGridLayout", {
			CellPadding = cellPadding,
			CellSize = cellSize,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}

	for i = state.minItemIndex, state.maxItemIndex do
		if not items[i] then
			grid[i] = renderEmpty(i)
		else
			if self.itemElements[i] and self.itemKeys[i] == getItemKey(items[i]) then
				grid[i] = self.itemElements[i]
			else
				self.itemElements[i] = renderItem(i, items[i])
				self.itemKeys[i] = getItemKey(items[i])
				grid[i] = self.itemElements[i]
			end
		end
	end

	local indicator
	if loading then
		indicator = Roact.createElement(LoadingIndicator)
	end

	return Roact.createElement(Pane, join({
		Size = size,
		Position = position
	}, props.WrapperProps), {
		scrollingFrame = Roact.createElement(ScrollingFrame, {
			AutomaticCanvasSize = Enum.AutomaticSize.XY,
			Size = UDim2.fromScale(1, 1),
			OnScrollUpdate = self.onScrollUpdate,
		}, {
			Grid = Roact.createElement(Pane, {
				LayoutOrder = 2,
				Position = UDim2.fromOffset(0, state.minRowIndex * absoluteCellSize.Y),
				Size = UDim2.new(1, 0, 0, absoluteCellSize.Y * (state.maxRowIndex - state.minRowIndex)),
			}, grid),
			Loader = Roact.createElement(Pane, {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = style.LoadingIndicatorPadding,
				Position = UDim2.new(
					0.5 - ((style.LoadingIndicatorSize.X.Scale) / 2),
					-(style.LoadingIndicatorSize.X.Offset + style.LoadingIndicatorPadding) / 2,
					0,
					math.ceil(absoluteMax / cellsPerRow) * absoluteCellSize.Y
				),
				Size = style.LoadingIndicatorSize,
			}, {
				Indicator = indicator,
			})
		})
	})
end

InfiniteScrollingGrid = withContext({
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
})(InfiniteScrollingGrid)

return withAbsoluteSize(InfiniteScrollingGrid)
