local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent.Parent.Components
local DataConsumer = require(Components.DataConsumer)
local CellLabel = require(Components.CellLabel)
local BannerButton = require(Components.BannerButton)
local LineGraph = require(Components.LineGraph)

local Constants = require(script.Parent.Parent.Parent.Constants)
local LINE_WIDTH = Constants.GeneralFormatting.LineWidth
local LINE_COLOR = Constants.GeneralFormatting.LineColor
local HEADER_NAMES = Constants.DataStoresFormatting.ChartHeaderNames
local VALUE_CELL_WIDTH = Constants.DataStoresFormatting.ValueCellWidth
local CELL_PADDING = Constants.DataStoresFormatting.CellPadding
local ARROW_PADDING = Constants.DataStoresFormatting.ExpandArrowPadding
local HEADER_HEIGHT = Constants.DataStoresFormatting.HeaderFrameHeight
local ENTRY_HEIGHT = Constants.DataStoresFormatting.EntryFrameHeight

local GRAPH_HEIGHT = Constants.GeneralFormatting.LineGraphHeight

local NO_DATA_MSG = "Initialize DataStoresService to view DataStore Budget."
local NO_RESULT_SEARCH_STR = Constants.GeneralFormatting.NoResultSearchStr

local convertTimeStamp = require(script.Parent.Parent.Parent.Util.convertTimeStamp)

local DataStoresChart = Roact.Component:extend("DataStoresChart")

local function getX(entry)
	return entry.time
end

local function getY(entry)
	return entry.value
end

local function stringFormatY(value)
	return math.ceil(value)
end

function DataStoresChart:init(props)
	local currStoresData, currStoresDataCount = props.DataStoresData:getCurrentData()

	self.getOnButtonPress = function (name)
		return function(rbx, input)
			self:setState({
				expandedEntry = self.state.expandedEntry ~= name and name
			})
		end
	end

	self.state = {
		dataStoresData = currStoresData,
		dataStoresDataCount = currStoresDataCount,
		expandedEntry = nil
	}
end

function DataStoresChart:didMount()
	self.statsConnector = self.props.DataStoresData:Signal():Connect(function(data, count)
		self:setState({
			dataStoresData = data,
			dataStoresDataCount = count,
		})
	end)
end

function DataStoresChart:willUnmount()
	self.statsConnector:Disconnect()
	self.statsConnector = nil
end

function DataStoresChart:render()
	local elements = {}
	local searchTerm = self.props.searchTerm
	local size = self.props.size
	local layoutOrder = self.props.layoutOrder

	local expandedEntry = self.state.expandedEntry

	elements["UIListLayout"] = Roact.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	local componentHeight = HEADER_HEIGHT

	local datastoreBudget = self.state.dataStoresData
	local totalCount = 0
	local currLayoutOrder = 1
	if datastoreBudget then
		for name, data in pairs(datastoreBudget) do
			totalCount = totalCount + 1
			if not searchTerm or string.find(name:lower(), searchTerm:lower()) ~= nil then
				currLayoutOrder = currLayoutOrder + 1

				local showGraph = expandedEntry == name
				local frameHeight = showGraph and ENTRY_HEIGHT + GRAPH_HEIGHT or ENTRY_HEIGHT

				elements[name] = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, frameHeight),
					BackgroundTransparency = 1,
					LayoutOrder = currLayoutOrder,
				}, {

					DataButton = Roact.createElement(BannerButton, {
						size = UDim2.new(1, 0, 0, ENTRY_HEIGHT),
						pos = UDim2.new(),
						isExpanded = showGraph,

						onButtonPress = self.getOnButtonPress(name),
					}, {
						[name] =  Roact.createElement(CellLabel, {
							text = name,
							size = UDim2.new(1 - VALUE_CELL_WIDTH, -CELL_PADDING - ARROW_PADDING, 1, 0),
							pos = UDim2.new(0, CELL_PADDING + ARROW_PADDING, 0, 0),
						}),

						Data = Roact.createElement(CellLabel, {
							text = data.dataSet:back().value,
							size = UDim2.new(VALUE_CELL_WIDTH , -CELL_PADDING, 1, 0),
							pos = UDim2.new(1 - VALUE_CELL_WIDTH, CELL_PADDING, 0, 0),
						}),

						VerticalLine = Roact.createElement("Frame", {
							Size = UDim2.new(0, LINE_WIDTH, 0, ENTRY_HEIGHT),
							Position = UDim2.new(1 - VALUE_CELL_WIDTH, 0, 0, 0),
							BackgroundColor3 = LINE_COLOR,
							BorderSizePixel = 0,
						}),

						lowerHorizontalLine = Roact.createElement("Frame", {
							Size = UDim2.new(1, 0, 0, LINE_WIDTH),
							Position = UDim2.new(0, 0, 1, 0),
							BackgroundColor3 = LINE_COLOR,
							BorderSizePixel = 0,
						}),
					}),

					Graph = showGraph and Roact.createElement(LineGraph, {
						pos = UDim2.new(0, 0, 0, ENTRY_HEIGHT),
						size = UDim2.new(1, 0, 1, -ENTRY_HEIGHT),
						graphData = data.dataSet,
						maxY = data.max,
						minY = data.min,

						getX = getX,
						getY = getY,

						axisLabelX = "Timestamp",
						axisLabelY = name,

						stringFormatX = convertTimeStamp,
						stringFormatY = stringFormatY,

					}),
				})
				componentHeight = componentHeight + ENTRY_HEIGHT
			end
		end
	end

	if currLayoutOrder == 1 then
		if totalCount == 0 then
			return Roact.createElement("TextLabel", {
				Size = size,
				Text = NO_DATA_MSG,
				TextColor3 = Constants.Color.Text,
				BackgroundTransparency = 1,
				LayoutOrder = layoutOrder,
			})
		else
			local noResultSearchStr = string.format(NO_RESULT_SEARCH_STR, searchTerm)
			elements["emptyResult"] = Roact.createElement("TextLabel", {
				Size = size,
				Text = noResultSearchStr,
				TextColor3 = Constants.Color.Text,
				BackgroundTransparency = 1,
			})
		end
	end

	return Roact.createElement("Frame", {
			Size = size,
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		}, {
			Header = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}, {
				[HEADER_NAMES[1]] = Roact.createElement(CellLabel, {
					text = HEADER_NAMES[1],
					size = UDim2.new(1 - VALUE_CELL_WIDTH, -CELL_PADDING - ARROW_PADDING, 1, 0),
					pos = UDim2.new(0, CELL_PADDING + ARROW_PADDING, 0, 0),
				}),

				[HEADER_NAMES[2]] = Roact.createElement(CellLabel, {
					text = HEADER_NAMES[2],
					size = UDim2.new(VALUE_CELL_WIDTH , -CELL_PADDING, 1, 0),
					pos = UDim2.new(1 - VALUE_CELL_WIDTH, CELL_PADDING, 0, 0),
				}),

				upperHorizontalLine = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, LINE_WIDTH),
					BackgroundColor3 = LINE_COLOR,
					BorderSizePixel = 0,
				}),

				vertical = Roact.createElement("Frame", {
					Size = UDim2.new(0, LINE_WIDTH, 1, 0),
					Position = UDim2.new(1 - VALUE_CELL_WIDTH, 0, 0, 0),
					BackgroundColor3 = LINE_COLOR,
					BorderSizePixel = 0,
				}),

				lowerHorizontalLine = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, LINE_WIDTH),
					Position = UDim2.new(0, 0, 1, 0),
					BackgroundColor3 = LINE_COLOR,
					BorderSizePixel = 0,
				}),
			}),
			mainFrame = Roact.createElement("ScrollingFrame", {
				Position = UDim2.new(0, 0, 0, HEADER_HEIGHT),
				Size = UDim2.new(1, 0, 1, -HEADER_HEIGHT),
				ScrollBarThickness = 5,

				CanvasSize = UDim2.new(1, 0, 0, componentHeight),

				BackgroundTransparency = 1,
			}, elements),
		})
end

return DataConsumer(DataStoresChart, "DataStoresData")