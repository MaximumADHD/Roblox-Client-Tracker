--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)

local FFlagFixActionBindingSecurity = game:DefineFastFlag("FixActionBindingSecurity", false)

local Components = script.Parent.Parent.Parent.Components
local DataConsumer = require(Components.DataConsumer)
local HeaderButton = require(Components.HeaderButton)
local CellLabel = require(Components.CellLabel)

local Constants = require(script.Parent.Parent.Parent.Constants)
local GeneralFormatting = Constants.GeneralFormatting
local LINE_WIDTH = GeneralFormatting.LineWidth
local LINE_COLOR = GeneralFormatting.LineColor

local ActionBindingsFormatting = Constants.ActionBindingsFormatting
local HEADER_NAMES = ActionBindingsFormatting.ChartHeaderNames
local CELL_WIDTHS = ActionBindingsFormatting.ChartCellWidths
local HEADER_HEIGHT = ActionBindingsFormatting.HeaderFrameHeight
local ENTRY_HEIGHT = ActionBindingsFormatting.EntryFrameHeight
local CELL_PADDING = ActionBindingsFormatting.CellPadding
local MIN_FRAME_WIDTH = ActionBindingsFormatting.MinFrameWidth

local IS_CORE_STR = "Core"
local IS_DEVELOPER_STR = "Developer"
local NON_FOUND_ENTRIES_STR = "No ActionBindings Found"

-- create table of offsets and sizes for each cell
local totalCellWidth = 0
for _, cellWidth in ipairs(CELL_WIDTHS) do
	totalCellWidth = totalCellWidth + cellWidth
end

local currOffset = -totalCellWidth
local cellOffset = {}
local headerCellSize = {}
local entryCellSize = {}

currOffset = currOffset / 2
table.insert(cellOffset, UDim2.new(0, CELL_PADDING, 0, 0))
table.insert(headerCellSize, UDim2.new(0.5, currOffset - CELL_PADDING, 0, HEADER_HEIGHT))
table.insert(entryCellSize, UDim2.new(0.5, currOffset - CELL_PADDING, 0, ENTRY_HEIGHT))

for _, cellWidth in ipairs(CELL_WIDTHS) do
	table.insert(cellOffset, UDim2.new(0.5, currOffset + CELL_PADDING, 0, 0))
	table.insert(headerCellSize, UDim2.new(0, cellWidth - CELL_PADDING, 0, HEADER_HEIGHT))
	table.insert(entryCellSize, UDim2.new(0, cellWidth - CELL_PADDING, 0, ENTRY_HEIGHT))
	currOffset = currOffset + cellWidth
end

table.insert(cellOffset, UDim2.new(0.5, currOffset + CELL_PADDING, 0, 0))
table.insert(headerCellSize, UDim2.new(0.5, (-totalCellWidth / 2) - CELL_PADDING, 0, HEADER_HEIGHT))
table.insert(entryCellSize, UDim2.new(0.5, (-totalCellWidth / 2) - CELL_PADDING, 0, ENTRY_HEIGHT))

local verticalOffsets = {}
for i, offset in ipairs(cellOffset) do
	verticalOffsets[i] = UDim2.new(offset.X.Scale, offset.X.Offset - CELL_PADDING, offset.Y.Scale, offset.Y.Offset)
end

local ActionBindingsChart = Roact.Component:extend("ActionBindingsChart")

local function constructHeader(onSortChanged, width)
	local header = {}

	for ind, name in ipairs(HEADER_NAMES) do
		header[name] = Roact.createElement(HeaderButton, {
			text = name,
			size = headerCellSize[ind],
			pos = cellOffset[ind],
			sortfunction = onSortChanged,
		})
	end

	header["upperHorizontalLine"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LINE_WIDTH),
		Position = UDim2.new(0, 0, 0, 0),
		BackgroundColor3 = LINE_COLOR,
		BorderSizePixel = 0,
	})

	header["lowerHorizontalLine"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LINE_WIDTH),
		Position = UDim2.new(0, 0, 1, -LINE_WIDTH),
		BackgroundColor3 = LINE_COLOR,
		BorderSizePixel = 0,
	})

	for ind = 2, #verticalOffsets do
		local key = string.format("VerticalLine_%d", ind)
		header[key] = Roact.createElement("Frame", {
			Size = UDim2.new(0, LINE_WIDTH, 1, 0),
			Position = verticalOffsets[ind],
			BackgroundColor3 = LINE_COLOR,
			BorderSizePixel = 0,
		})
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(0, width, 0, HEADER_HEIGHT),
		BackgroundTransparency = 1,
	}, header)
end

local function constructEntry(entry, width, layoutOrder)
	local name = entry.name
	local actionInfo = entry.actionInfo

	-- the last element is special cased because the data in the
	-- string is passed in as value in the table
	-- use tostring to convert the enum into an actual string also because it's used twice
	local enumStr = tostring(actionInfo["inputTypes"][1])

	local isCoreString -- inline with FFlagFixActionBindingSecurity
	if FFlagFixActionBindingSecurity then
		isCoreString = IS_DEVELOPER_STR
		if actionInfo["isCore"] then
			isCoreString = IS_CORE_STR
		end
	else
		isCoreString = IS_CORE_STR
		if actionInfo["isCore"] then
			isCoreString = IS_DEVELOPER_STR
		end
	end

	local row = {}
	for i = 2, #verticalOffsets do
		local key = string.format("line_%d", i)
		row[key] = Roact.createElement("Frame", {
			Size = UDim2.new(0, LINE_WIDTH, 1, 0),
			Position = verticalOffsets[i],
			BackgroundColor3 = LINE_COLOR,
			BorderSizePixel = 0,
		})
	end

	row[name] = Roact.createElement(CellLabel, {
		text = enumStr,
		size = entryCellSize[1],
		pos = cellOffset[1],
	})

	row.priorityLevel = Roact.createElement(CellLabel, {
		text = actionInfo["priorityLevel"],
		size = entryCellSize[2],
		pos = cellOffset[2],
	})

	row.isCore = Roact.createElement(CellLabel, {
		text = isCoreString,
		size = entryCellSize[3],
		pos = cellOffset[3],
	})

	row.actionName = Roact.createElement(CellLabel, {
		text = name,
		size = entryCellSize[4],
		pos = cellOffset[4],
	})

	row.inputTypes = Roact.createElement(CellLabel, {
		text = enumStr,
		size = entryCellSize[5],
		pos = cellOffset[5],
	})

	row.lowerHorizontalLine = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LINE_WIDTH),
		Position = UDim2.new(0, 0, 1, 0),
		BackgroundColor3 = LINE_COLOR,
		BorderSizePixel = 0,
	})

	return Roact.createElement("Frame", {
		Size = UDim2.new(0, width, 0, ENTRY_HEIGHT),
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, row)
end

function ActionBindingsChart:init(props)
	local initBindings = props.ActionBindingsData:getCurrentData()

	self.onSortChanged = function(sortType)
		local currSortType = props.ActionBindingsData:getSortType()
		if sortType == currSortType then
			self:setState({
				reverseSort = not self.state.reverseSort,
			})
		else
			props.ActionBindingsData:setSortType(sortType)
			self:setState({
				reverseSort = false,
			})
		end
	end

	self.onCanvasPosChanged = function()
		local canvasPos = self.scrollingRef.current.CanvasPosition
		if self.state.canvasPos ~= canvasPos then
			self:setState({
				canvasPos = canvasPos,
			})
		end
	end

	self.scrollingRef = Roact.createRef()

	self.state = {
		actionBindingEntries = initBindings,
		reverseSort = false,
	}
end

function ActionBindingsChart:willUpdate()
	if self.canvasPosConnector then
		self.canvasPosConnector:Disconnect()
	end
end

function ActionBindingsChart:didUpdate()
	if self.scrollingRef.current then
		local signal = self.scrollingRef.current:GetPropertyChangedSignal("CanvasPosition")
		self.canvasPosConnector = signal:Connect(self.onCanvasPosChanged)

		local absSize = self.scrollingRef.current.AbsoluteSize
		local currAbsSize = self.state.absScrollSize
		if absSize.X ~= currAbsSize.X or absSize.Y ~= currAbsSize.Y then
			self:setState({
				absScrollSize = absSize,
			})
		end
	end
end

function ActionBindingsChart:didMount()
	self.bindingsUpdated = self.props.ActionBindingsData:Signal():Connect(function(bindingsData)
		self:setState({
			actionBindingEntries = bindingsData,
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

function ActionBindingsChart:willUnmount()
	self.bindingsUpdated:Disconnect()
	self.bindingsUpdated = nil
	self.canvasPosConnector:Disconnect()
	self.canvasPosConnector = nil
end

function ActionBindingsChart:render()
	local entries = {}
	local searchTerm = self.props.searchTerm
	local size = self.props.size
	local layoutOrder = self.props.layoutOrder

	local entryList = self.state.actionBindingEntries
	local reverseSort = self.state.reverseSort

	local canvasPos = self.state.canvasPos
	local absScrollSize = self.state.absScrollSize
	local frameWidth = absScrollSize and math.max(absScrollSize.X, MIN_FRAME_WIDTH) or MIN_FRAME_WIDTH

	entries["UIListLayout"] = Roact.createElement("UIListLayout", {
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	local totalEntries = #entryList
	local canvasHeight = 0

	if absScrollSize and canvasPos then
		local paddingHeight = -1
		local usedFrameSpace = 0
		local count = 0

		for ind, entry in ipairs(entryList) do
			local foundTerm = false
			if searchTerm then
				local enumStr = tostring(entry.actionInfo["inputTypes"][1])
				foundTerm = string.find(enumStr:lower(), searchTerm:lower()) ~= nil
				foundTerm = foundTerm or string.find(entry.name:lower(), searchTerm:lower()) ~= nil
			end

			if not searchTerm or foundTerm then
				if canvasHeight + ENTRY_HEIGHT >= canvasPos.Y then
					if usedFrameSpace < absScrollSize.Y then
						local entryLayoutOrder = reverseSort and (totalEntries - ind) or ind
						entries[ind] = constructEntry(entry, frameWidth, entryLayoutOrder + 1)
					end
					if paddingHeight < 0 then
						paddingHeight = canvasHeight
					else
						usedFrameSpace = usedFrameSpace + ENTRY_HEIGHT
					end
					count = count + 1
				end

				canvasHeight = canvasHeight + ENTRY_HEIGHT
			end
		end

		if count == 0 then
			entries["NoneFound"] = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Text = NON_FOUND_ENTRIES_STR,
				TextColor3 = LINE_COLOR,

				BackgroundTransparency = 1,

				LayoutOrder = 1,
			})
		else
			entries["WindowingPadding"] = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, paddingHeight),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			})
		end
	end

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundTransparency = 1,
		ClipsDescendants = true,
		LayoutOrder = layoutOrder,
	}, {
		Header = constructHeader(self.onSortChanged, frameWidth),
		MainChart = Roact.createElement("ScrollingFrame", {
			Position = UDim2.new(0, 0, 0, HEADER_HEIGHT),
			Size = UDim2.new(1, 0, 1, -HEADER_HEIGHT),
			CanvasSize = UDim2.new(0, frameWidth, 0, canvasHeight),
			ScrollBarThickness = 6,
			BackgroundColor3 = Constants.Color.BaseGray,
			BackgroundTransparency = 1,

			[Roact.Ref] = self.scrollingRef,
		}, entries),
	})
end

return DataConsumer(ActionBindingsChart, "ActionBindingsData")
