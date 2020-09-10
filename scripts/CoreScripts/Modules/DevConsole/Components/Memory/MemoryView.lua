local CorePackages = game:GetService("CorePackages")
local TweenService = game:GetService("TweenService")
local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent.Parent.Components
local HeaderButton = require(Components.HeaderButton)
local MemoryViewEntry = require(script.Parent.MemoryViewEntry)

local Constants = require(script.Parent.Parent.Parent.Constants)
local LINE_WIDTH = Constants.GeneralFormatting.LineWidth
local LINE_COLOR = Constants.GeneralFormatting.LineColor

local HEADER_NAMES = Constants.MemoryFormatting.ChartHeaderNames
local HEADER_HEIGHT = Constants.GeneralFormatting.HeaderFrameHeight
local VALUE_CELL_WIDTH = Constants.MemoryFormatting.ValueCellWidth
local CELL_PADDING = Constants.MemoryFormatting.CellPadding
local VALUE_PADDING = Constants.MemoryFormatting.ValuePadding

local ENTRY_HEIGHT = Constants.GeneralFormatting.EntryFrameHeight
local GRAPH_HEIGHT = Constants.GeneralFormatting.LineGraphHeight

local NO_RESULT_SEARCH_STR = Constants.GeneralFormatting.NoResultSearchStr

local tweenInfo = TweenInfo.new(
	.3, -- Time
	Enum.EasingStyle.Back,
	Enum.EasingDirection.Out,
	0,
	false,
	0
)

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
	self.getOnButtonPress = function (name, index)
		return function(rbx, input)
			if self.state.expandIndex ~= name and name then
				local scrollingRef = self.scrollingRef.current
				-- LayoutOrder is used to keep track of the order of the entires.
				-- We subtrack 1 to account for the position of the top left corner
				-- of the entry, and another 1.4 to provide a 1.4 * ENTRY_HEIGHT's
				-- worth of buffer space
				if scrollingRef then
					local newCanvasPosY = (index-2.4) * ENTRY_HEIGHT
					TweenService:Create(
						scrollingRef,
						tweenInfo,
						{CanvasPosition = Vector2.new(0, newCanvasPosY)}
					):Play()
				end
			end

			self:setState({
				expandIndex = self.state.expandIndex ~= name and name
			})
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

function MemoryView:appendAdditionTabInformation(elements, infoTable, parentName, depth, windowing)
	local canvasPos = self.scrollingRef.current.CanvasPosition
	local absScrollSize = self.scrollingRef.current.AbsoluteSize

	-- this function, where applicable is in clientMemoryData
	for _,additionalEntry in ipairs(infoTable) do
		local name = additionalEntry.name
		local value = additionalEntry.value
		local new_key = parentName .. name
		windowing.layoutOrder = windowing.layoutOrder + 1

		if windowing.scrollingFrameHeight + ENTRY_HEIGHT >= canvasPos.Y then
			if windowing.usedFrameSpace < absScrollSize.Y then
				local new_key = parentName .. name

				elements[new_key] = Roact.createElement(MemoryViewEntry, {
					size = UDim2.new(1, 0, 0, ENTRY_HEIGHT),
					depth = depth,
					name = name,

					showGraph = false,
					value = value,

					formatValueStr = formatValueStr,
					layoutOrder = windowing.layoutOrder,
				})
				if windowing.paddingHeight < 0 then
					windowing.paddingHeight = windowing.scrollingFrameHeight
				else
					windowing.usedFrameSpace = windowing.usedFrameSpace + ENTRY_HEIGHT
				end
			end
		end
		windowing.scrollingFrameHeight = windowing.scrollingFrameHeight + ENTRY_HEIGHT

		if additionalEntry.moreInfo and type(additionalEntry.moreInfo) == "table" then
			self:appendAdditionTabInformation(elements, additionalEntry.moreInfo, new_key, depth + 1, windowing)
		end
	end
end

function MemoryView:recursiveConstructEntries(elements, entry, depth, windowing)
	assert(self.scrollingRef.current, "ScrollingFrame not initialized yet")

	local expandIndex = self.state.expandIndex
	local searchTerm = self.props.searchTerm or ""
	local reverseSort = self.state.reverseSort
	local canvasPos = self.scrollingRef.current.CanvasPosition
	local absScrollSize = self.scrollingRef.current.AbsoluteSize

	local name = entry.name

	local found = string.find(name:lower(), searchTerm:lower())

	if found then
		local showGraph =  expandIndex == name
		local frameHeight = showGraph and ENTRY_HEIGHT + GRAPH_HEIGHT or ENTRY_HEIGHT
		windowing.layoutOrder = windowing.layoutOrder + 1

		if windowing.scrollingFrameHeight + frameHeight >= canvasPos.Y then
			if windowing.usedFrameSpace < absScrollSize.Y then
				elements[name] = Roact.createElement(MemoryViewEntry, {
					size = UDim2.new(1, 0, 0, frameHeight),
					depth = depth,
					name = entry.name,
					showGraph = showGraph,
					dataStats = entry.dataStats,

					onButtonPress = self.getOnButtonPress(name, windowing.layoutOrder),
					formatValueStr = formatValueStr,
					getX = getX,
					getY = getY,

					layoutOrder = windowing.layoutOrder,
				})
				if windowing.paddingHeight < 0 then
					windowing.paddingHeight = windowing.scrollingFrameHeight
				else
					windowing.usedFrameSpace = windowing.usedFrameSpace + frameHeight
				end
			end
		end
		windowing.scrollingFrameHeight = windowing.scrollingFrameHeight + frameHeight

		-- callback is set in ClientMemoryData
		if showGraph then
			-- this function, where applicable is in clientMemoryData
			if entry.dataStats.additionalInfoFunc then
				local infoTable = entry.dataStats.additionalInfoFunc()
				self:appendAdditionTabInformation(elements, infoTable, entry.name, depth + 1, windowing)
			end
		end
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
	local searchTerm = self.props.searchTerm or ""

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

	if windowingInfo.layoutOrder == 1 then
		if searchTerm == "" then
			elements["noDataMessage"] = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0, 0, 0, 0),
				Text = "Awaiting Memory Stats",
				TextColor3 = Constants.Color.Text,
				BackgroundTransparency = 1,
				LayoutOrder = layoutOrder,
			})
		else
			local noResultSearchStr = string.format(NO_RESULT_SEARCH_STR, searchTerm )

			elements["noDataMessage"] = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0, 0, 0, 0),
				Text = noResultSearchStr,
				TextColor3 = Constants.Color.Text,
				BackgroundTransparency = 1,
				LayoutOrder = layoutOrder,
			})
		end
	end

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		Header = 	Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
			BackgroundTransparency = 1,
		}, {
			Name = Roact.createElement(HeaderButton, {
				text = HEADER_NAMES[1],
				size = UDim2.new(1 - VALUE_CELL_WIDTH, -VALUE_PADDING - CELL_PADDING, 0, HEADER_HEIGHT),
				pos = UDim2.new(0, CELL_PADDING, 0, 0),
				sortfunction = self.onSortChanged,
			}),
			ValueMB = Roact.createElement(HeaderButton, {
				text = HEADER_NAMES[2],
				size = UDim2.new( VALUE_CELL_WIDTH, -CELL_PADDING, 0, HEADER_HEIGHT),
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
			vertical = Roact.createElement("Frame", {
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