local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent.Parent.Components
local HeaderButton = require(Components.HeaderButton)
local MemoryViewEntry = require(script.Parent.MemoryViewEntry)

local Constants = require(script.Parent.Parent.Parent.Constants)
local LINE_WIDTH = Constants.GeneralFormatting.LineWidth
local LINE_COLOR = Constants.GeneralFormatting.LINE_COLOR

local HEADER_NAMES = Constants.MemoryFormatting.ChartHeaderNames
local HEADER_HEIGHT = Constants.GeneralFormatting.HeaderFrameHeight
local VALUE_CELL_WIDTH = Constants.MemoryFormatting.ValueCellWidth
local CELL_PADDING = Constants.MemoryFormatting.CellPadding
local VALUE_PADDING = Constants.MemoryFormatting.ValuePadding

local ENTRY_HEIGHT = Constants.GeneralFormatting.EntryFrameHeight
local GRAPH_HEIGHT = Constants.GeneralFormatting.LineGraphHeight

local MemoryView = Roact.Component:extend("MemoryView")

local function getX(entry)
	return entry.time
end

local function getY(entry)
	return entry.data
end

local function formatValueStr(value)
	return string.format("%.3f", value)
end

function MemoryView:init(props)
	self.getOnButtonPress = function (name)
		return function(rbx, input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or
				(input.UserInputType == Enum.UserInputType.Touch and
				input.UserInputState == Enum.UserInputState.End) then

				self:setState({
					expandIndex = self.state.expandIndex ~= name and name
				})
			end
		end
	end

	self.onSortChanged = function(sortType)
		local currSortType = props.targetMemoryData:getSortType()
		if sortType == currSortType then
			self:setState({
				reverseSort = not self.state.reverseSort
			})
		else
			props.targetMemoryData:setSortType(sortType)
			self:setState({
				reverseSort = false,
			})
		end
	end

	self.onCanvasPosChanged = function()
		local canvasPos = self.scrollingRef.current.CanvasPosition
		if self.state.canvasPos ~= canvasPos then
			self:setState({
				absScrollSize = self.scrollingRef.current.AbsoluteSize,
				canvasPos = canvasPos,
			})
		end
	end

	self.scrollingRef = Roact.createRef()

	self.state = {
		memoryData = props.targetMemoryData:getMemoryData(),
		reverseSort = false,
		expandIndex = false,
	}
end

function MemoryView:willUpdate()
	if self.canvasPosConnector then
		self.canvasPosConnector:Disconnect()
	end
end

function MemoryView:didUpdate()
	if self.scrollingRef.current then
		local signal = self.scrollingRef.current:GetPropertyChangedSignal("CanvasPosition")
		self.canvasPosConnector = signal:Connect(self.onCanvasPosChanged)
	end
end

function MemoryView:didMount()
	local treeUpdatedSignal = self.props.targetMemoryData:treeUpdatedSignal()
	self.treeViewItemConnector = treeUpdatedSignal:Connect(function(memoryData)
		self:setState({
			memoryData = memoryData
		})
	end)

	if self.scrollingRef.current then
		local signal = self.scrollingRef.current:GetPropertyChangedSignal("CanvasPosition")
		self.canvasPosConnector = signal:Connect(self.onCanvasPosChanged)

		self:setState({
			absScrollSize = self.scrollingRef.current.AbsoluteSize,
			canvasPos = self.scrollingRef.current.CanvasPosition,
		})
	end
end

function MemoryView:willUnmount()
	self.treeViewItemConnector:Disconnect()
end

function MemoryView:recursiveConstructEntries(elements, entry, depth, windowing)
	assert(self.scrollingRef.current, "ScrollingFrame not initialized yet")

	local expandIndex = self.state.expandIndex
	local searchTerm = self.props.searchTerm
	local reverseSort = self.state.reverseSort
	local canvasPos = self.scrollingRef.current.CanvasPosition
	local absScrollSize = self.scrollingRef.current.AbsoluteSize

	local name = entry.name

	local found = string.find(name:lower(), searchTerm:lower())

	if found then
		local showGraph =  expandIndex == name
		local frameHeight = showGraph and ENTRY_HEIGHT + GRAPH_HEIGHT or ENTRY_HEIGHT

		if windowing.scrollingFrameHeight + frameHeight >= canvasPos.Y then
			if windowing.usedFrameSpace < absScrollSize.Y then
				windowing.layoutOrder = windowing.layoutOrder + 1

				elements[name] = Roact.createElement(MemoryViewEntry, {
					size = UDim2.new(1, 0, 0, frameHeight),
					depth = depth,
					entry = entry,
					showGraph = showGraph,

					onButtonPress = self.getOnButtonPress(name),
					formatValueStr = formatValueStr,
					getX = getX,
					getY = getY,

					layoutOrder = windowing.layoutOrder,
				})
			end
			if windowing.paddingHeight < 0 then
				windowing.paddingHeight = windowing.scrollingFrameHeight
			else
				windowing.usedFrameSpace = windowing.usedFrameSpace + frameHeight
			end
		end
		windowing.scrollingFrameHeight = windowing.scrollingFrameHeight + frameHeight
	end

	local sortedChildren = entry.dataStats.sortedChildren
	if sortedChildren then
		if reverseSort then
			local totalChildren = #sortedChildren
			for i = 1, totalChildren do
				self:recursiveConstructEntries(elements, sortedChildren[totalChildren - i + 1], depth + 1, windowing)
			end
		else
			for _, entry in ipairs(sortedChildren) do
				self:recursiveConstructEntries(elements, entry, depth + 1, windowing)
			end
		end
	end
end

function MemoryView:render()
	local elements = {}
	local layoutOrder = self.props.layoutOrder
	local size = self.props.size

	-- we pass this table into the recursion to keep sum up
	-- height totals for windowing
	local windowingInfo = {
		scrollingFrameHeight = 0,
		paddingHeight = -1,
		usedFrameSpace = 0,
		layoutOrder = 1
	}

	if self.scrollingRef.current then
		for _, entry in ipairs(self.state.memoryData) do
			self:recursiveConstructEntries(elements, entry, 0, windowingInfo)
		end

		elements["UIListLayout"] = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
		})

		elements["WindowingPadding"] = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, windowingInfo.paddingHeight),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		})
	end

	if layoutOrder == 1 then
		return Roact.createElement("TextLabel",{
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			Text = "Awaiting Memory Stats",
			TextColor3 = Constants.Color.Text,
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		},{
			Entries = Roact.createElement("ScrollingFrame", {
				Size = UDim2.new(1, 0, 1, -HEADER_HEIGHT),
				BackgroundTransparency = 1,

				[Roact.Ref] = self.scrollingRef,
			}),
		})
	end

	return Roact.createElement("Frame",{
		Size = size,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	},{
		Header = 	Roact.createElement("Frame",{
			Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
			BackgroundTransparency = 1,
		},{
			Name = Roact.createElement(HeaderButton, {
				text = HEADER_NAMES[1],
				size = UDim2.new(VALUE_CELL_WIDTH, CELL_PADDING, 0, HEADER_HEIGHT),
				pos = UDim2.new(0, CELL_PADDING, 0, 0),
				sortfunction = self.onSortChanged,
			}),
			ValueMB = Roact.createElement(HeaderButton, {
				text = HEADER_NAMES[2],
				size = UDim2.new(1 - VALUE_CELL_WIDTH, -VALUE_PADDING, 0, HEADER_HEIGHT),
				pos = UDim2.new(1 - VALUE_CELL_WIDTH, VALUE_PADDING, 0, 0),
				sortfunction = self.onSortChanged,
			}),
			TopHorizontal = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 1),
				BackgroundColor3 = LINE_COLOR,
				BorderSizePixel = 0,
			}),
			LowerHorizontal = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, LINE_WIDTH),
				Position = UDim2.new(0, 0, 1, 0),
				BackgroundColor3 = LINE_COLOR,
				BorderSizePixel = 0,
			}),
			vertical = Roact.createElement("Frame",{
				Size = UDim2.new(0, LINE_WIDTH, 1, 0),
				Position = UDim2.new(1 - VALUE_CELL_WIDTH, 0, 0, 0),
				BackgroundColor3 = LINE_COLOR,
				BorderSizePixel = 0,
			}),
		}),

		Entries = Roact.createElement("ScrollingFrame", {
			Size = UDim2.new(1, 0, 1, -HEADER_HEIGHT),
			Position = UDim2.new(0, 0, 0, HEADER_HEIGHT),
			BackgroundTransparency = 1,
			VerticalScrollBarInset = 1,
			ScrollBarThickness = 5,
			CanvasSize = UDim2.new(1, 0, 0, windowingInfo.scrollingFrameHeight),

			[Roact.Ref] = self.scrollingRef,
		}, elements),
	})
end

return MemoryView