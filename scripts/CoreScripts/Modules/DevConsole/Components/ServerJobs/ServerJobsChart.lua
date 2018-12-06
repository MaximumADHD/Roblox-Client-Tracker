local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent.Parent.Components
local DataConsumer = require(Components.DataConsumer)
local HeaderButton = require(Components.HeaderButton)
local CellLabel = require(Components.CellLabel)
local BannerButton = require(Components.BannerButton)
local LineGraph = require(Components.LineGraph)

local Constants = require(script.Parent.Parent.Parent.Constants)
local LINE_WIDTH = Constants.GeneralFormatting.LineWidth
local LINE_COLOR = Constants.GeneralFormatting.LineColor
local HEADER_NAMES = Constants.ServerJobsFormatting.ChartHeaderNames
local CELL_WIDTHS = Constants.ServerJobsFormatting.ValueCellWidth
local ENTRY_HEIGHT = Constants.ServerJobsFormatting.EntryFrameHeight
local HEADER_HEIGHT = Constants.ServerJobsFormatting.HeaderFrameHeight
local CELL_PADDING = Constants.ServerJobsFormatting.CellPadding
local MIN_FRAME_WIDTH = Constants.ServerJobsFormatting.MinFrameWidth

local GRAPH_HEIGHT = Constants.GeneralFormatting.LineGraphHeight

local convertTimeStamp = require(script.Parent.Parent.Parent.Util.convertTimeStamp)

local COLUMN_TRANSFORM_FUNC = {
	function(point)
		return point and string.format("%.4f%%", point) or ""
	end,
	function(point)
		return point and string.format("%.4f/s", point) or ""
	end,
	function(point)
		return point and string.format("%.4fms", point) or ""
	end,
}

local NO_DATA_MSG = "Awaiting Server Jobs Information"
local NO_RESULT_SEARCH_STR = Constants.GeneralFormatting.NoResultSearchStr

-- create table of offsets and sizes for each cell
local currOffset = 0
local cellOffset = {}
local headerCellSize = {}
local entryCellSize = {}

local entryCellHeight = ENTRY_HEIGHT - LINE_WIDTH -- to account for border height and to use UIListLayout

for _, cellWidth in ipairs(CELL_WIDTHS) do
	table.insert(cellOffset,UDim2.new(currOffset, CELL_PADDING, 0, 0))
	table.insert(headerCellSize, UDim2.new(cellWidth, -CELL_PADDING, 0, HEADER_HEIGHT))
	table.insert(entryCellSize, UDim2.new(cellWidth, -CELL_PADDING, 0, entryCellHeight))
	currOffset = currOffset + cellWidth
end

local verticalOffsets = {}
for i, offset in ipairs(cellOffset) do
	verticalOffsets[i] = UDim2.new(
		offset.X.Scale,
		offset.X.Offset - CELL_PADDING,
		offset.Y.Scale,
		offset.Y.Offset
	)
end

local ServerJobsChart = Roact.Component:extend("ServerJobsChart")

local function getX(entry)
	return entry.time
end

local function getDutyCycle(entry)
	return entry.data[1]
end

local function getStepsPerSec (entry)
	return entry.data[2]
end

local function getStepTime (entry)
	return entry.data[3]
end

function ServerJobsChart:init(props)
	local currJobsList = props.ServerJobsData:getCurrentData()

	self.getOnButtonPress = function (name)
		return function(rbx, input)
			self:setState({
				expandIndex = self.state.expandIndex ~= name and name
			})
		end
	end

	self.onSortChanged = function(sortType)
		local currSortType = props.ServerJobsData:getSortType()
		if sortType == currSortType then
			self:setState({
				reverseSort = not self.state.reverseSort
			})
		else
			props.ServerJobsData:setSortType(sortType)
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
		serverJobsList = currJobsList,
		reverseSort = false,
		expandIndex = nil,
	}
end

function ServerJobsChart:willUpdate()
	if self.canvasPosConnector then
		self.canvasPosConnector:Disconnect()
	end
end

function ServerJobsChart:didUpdate()
	if self.scrollingRef.current then
		local signal = self.scrollingRef.current:GetPropertyChangedSignal("CanvasPosition")
		self.canvasPosConnector = signal:Connect(self.onCanvasPosChanged)

		local absSize = self.scrollingRef.current.AbsoluteSize
		local currAbsSize = self.state.absScrollSize
		if absSize.X ~= currAbsSize.X or
			absSize.Y ~= currAbsSize.Y then
			self:setState({
				absScrollSize = absSize,
			})
		end
	end
end

function ServerJobsChart:didMount()
	self.statsConnector = self.props.ServerJobsData:Signal():Connect(function(data)
		self:setState({
			serverJobsList = data,
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

function ServerJobsChart:willUnmount()
	self.statsConnector:Disconnect()
	self.statsConnector = nil
	if self.canvasPosConnector then
		self.canvasPosConnector:Disconnect()
		self.canvasPosConnector = nil
	end
end

function ServerJobsChart:render()
	local elements = {}
	local searchTerm = self.props.searchTerm
	local size = self.props.size
	local layoutOrder = self.props.layoutOrder

	local serverJobsList = self.state.serverJobsList
	local reverseSort = self.state.reverseSort
	local expandIndex = self.state.expandIndex
	local canvasPos = self.state.canvasPos
	local absScrollSize = self.state.absScrollSize

	local absWidth = absScrollSize and math.max(absScrollSize.X, MIN_FRAME_WIDTH) or MIN_FRAME_WIDTH

	local totalEntries = #serverJobsList

	if totalEntries == 0 then
		return Roact.createElement("TextLabel", {
			Size = size,
			Position = UDim2.new(0, 0, 0, 0),
			Text = NO_DATA_MSG,
			TextColor3 = Constants.Color.Text,
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		})
	end

	local scrollingFrameHeight = 0
	if absScrollSize then
		local paddingHeight = -1
		local usedFrameSpace = 0

		for ind, job in pairs(serverJobsList) do
			local name = job.name
			if not searchTerm or string.find(name:lower(), searchTerm:lower()) ~= nil then

				local jobData = job.dataStats
				local currEntry = jobData.dataSet:back()

				local showGraph = expandIndex == name
				local frameHeight = showGraph and ENTRY_HEIGHT + (3 * GRAPH_HEIGHT / 2) + CELL_PADDING * 4 or ENTRY_HEIGHT

				if scrollingFrameHeight + frameHeight >= canvasPos.Y then
					if usedFrameSpace < absScrollSize.Y then
						local entryLayoutOrder = reverseSort and (totalEntries - ind) or ind

						local entry = {}
						entry[name] = Roact.createElement(CellLabel, {
							text = name,
							size = headerCellSize[1],
							pos = cellOffset[1],
						})

						for i, v in pairs(currEntry.data) do
							entry[HEADER_NAMES[i] ] = Roact.createElement(CellLabel, {
								text = COLUMN_TRANSFORM_FUNC[i](v),
								size = headerCellSize[i + 1],
								pos = cellOffset[i + 1],
							})
						end

						-- add vertical lines over components
						for offsetInd = 2, #verticalOffsets do
							local key = string.format("VerticalLine_%d",offsetInd)
							entry[key] = Roact.createElement("Frame", {
								Size = UDim2.new(0, LINE_WIDTH, 1, 0),
								Position = verticalOffsets[offsetInd],
								BackgroundColor3 = LINE_COLOR,
								BorderSizePixel = 0,
							})
						end

						entry["lowerHorizontalLine"] = Roact.createElement("Frame", {
							Size = UDim2.new(1, 0, 0, LINE_WIDTH),
							Position = UDim2.new(0, 0, 1, 0),
							BackgroundColor3 = LINE_COLOR,
							BorderSizePixel = 0,
						})

						elements[name] = Roact.createElement("Frame", {
							Size = UDim2.new(0, absWidth, 0, frameHeight),
							BackgroundTransparency = 1,
							-- we add 1 to the layoutorder to make room for the windowing padding
							LayoutOrder = entryLayoutOrder + 1,
						}, {
							Button = Roact.createElement(BannerButton, {
								size = UDim2.new(1, 0, 0, ENTRY_HEIGHT),
								pos = UDim2.new(),
								isExpanded = showGraph,

								onButtonPress = self.getOnButtonPress(name)
							}, entry),

							DutyCycleGraph = showGraph and Roact.createElement(LineGraph, {
								pos = UDim2.new(0, 0, 0, ENTRY_HEIGHT + CELL_PADDING),
								size = UDim2.new(0, absWidth, 0, GRAPH_HEIGHT / 2),
								graphData = jobData.dataSet,
								maxY = jobData.max[1],
								minY = jobData.min[1],

								getX = getX,
								getY = getDutyCycle,

								stringFormatX = convertTimeStamp,
								stringFormatY = COLUMN_TRANSFORM_FUNC[1],

								axisLabelX = "Timestamp",
								axisLabelY = name .. " " .. HEADER_NAMES[2],
							}),

							StepsPerSecGraph = showGraph and Roact.createElement(LineGraph, {
								pos = UDim2.new(0, 0, 0, ENTRY_HEIGHT + (GRAPH_HEIGHT / 2) + CELL_PADDING * 2),
								size = UDim2.new(0, absWidth, 0, GRAPH_HEIGHT / 2),
								graphData = jobData.dataSet,
								maxY = jobData.max[2],
								minY = jobData.min[2],

								getX = getX,
								getY = getStepsPerSec,

								stringFormatX = convertTimeStamp,
								stringFormatY = COLUMN_TRANSFORM_FUNC[2],

								axisLabelX = "Timestamp",
								axisLabelY = name .. " " .. HEADER_NAMES[3],
							}),

							StepTimeGraph = showGraph and Roact.createElement(LineGraph, {
								pos = UDim2.new(0, 0, 0, ENTRY_HEIGHT + GRAPH_HEIGHT + CELL_PADDING * 3),
								size = UDim2.new(0, absWidth, 0, GRAPH_HEIGHT / 2),
								graphData = jobData.dataSet,
								maxY = jobData.max[3],
								minY = jobData.min[3],

								getX = getX,
								getY = getStepTime,

								stringFormatX = convertTimeStamp,
								stringFormatY = COLUMN_TRANSFORM_FUNC[3],

								axisLabelX = "Timestamp",
								axisLabelY = name .. " " .. HEADER_NAMES[4],
							}),
						})
					end
					if paddingHeight < 0 then
						paddingHeight = scrollingFrameHeight
					else
						usedFrameSpace = usedFrameSpace + frameHeight
					end
				end
				scrollingFrameHeight = scrollingFrameHeight + frameHeight
			end
		end

		-- if we never set padding height that means we never found any entries when the search
		if paddingHeight == -1 then
			local noResultSearchStr = string.format(NO_RESULT_SEARCH_STR, searchTerm)
			elements["emptyResult"] = Roact.createElement("TextLabel", {
				Size = size,
				Text = noResultSearchStr,
				TextColor3 = Constants.Color.Text,
				BackgroundTransparency = 1,
			})
		else
			elements["WindowingPadding"] = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, paddingHeight),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			})
		end
	end

	local header = {}
	for i = 1, #HEADER_NAMES do
		header[HEADER_NAMES[i]] = Roact.createElement(HeaderButton, {
			text = HEADER_NAMES[i],
			size = headerCellSize[i],
			pos = cellOffset[i],
			sortfunction = self.onSortChanged,
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
		local key = string.format("VerticalLine_%d",ind)
		header[key] = Roact.createElement("Frame", {
			Size = UDim2.new(0, LINE_WIDTH, 1, 0),
			Position = verticalOffsets[ind],
			BackgroundColor3 = LINE_COLOR,
			BorderSizePixel = 0,
		})
	end

	elements["UIListLayout"] = Roact.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundTransparency = 1,
		ClipsDescendants = true,
		LayoutOrder = layoutOrder,
	}, {
		Header = Roact.createElement("Frame", {
			Size = UDim2.new(0, absWidth, 0, HEADER_HEIGHT),
			BackgroundTransparency = 1,
		}, header),

		MainChart = Roact.createElement("ScrollingFrame", {
			Size = UDim2.new(1, 0, 1, -HEADER_HEIGHT),
			Position = UDim2.new(0, 0, 0, HEADER_HEIGHT),
			BackgroundTransparency = 1,
			VerticalScrollBarInset = 1,
			ScrollBarThickness = 5,
			CanvasSize = UDim2.new(0, absWidth, 0, scrollingFrameHeight),

			[Roact.Ref] = self.scrollingRef,
		}, elements),
	})
end

return DataConsumer(ServerJobsChart, "ServerJobsData")