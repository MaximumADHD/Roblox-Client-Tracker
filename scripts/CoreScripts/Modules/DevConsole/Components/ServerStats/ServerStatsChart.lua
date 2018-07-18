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
local HEADER_NAMES = Constants.ServerStatsFormatting.ChartHeaderNames
local VALUE_CELL_WIDTH = Constants.ServerStatsFormatting.ValueCellWidth
local CELL_PADDING = Constants.ServerStatsFormatting.CellPadding
local ARROW_PADDING = Constants.ServerStatsFormatting.ExpandArrowPadding
local HEADER_HEIGHT = Constants.ServerStatsFormatting.HeaderFrameHeight
local ENTRY_HEIGHT = Constants.ServerStatsFormatting.EntryFrameHeight

local GRAPH_HEIGHT = Constants.GeneralFormatting.LineGraphHeight
local NO_DATA_MSG = "Awaiting Server Stats"

local convertTimeStamp = require(script.Parent.Parent.Parent.Util.convertTimeStamp)

local ServerStats = Roact.Component:extend("ServerStats")

local function formatData(data)
	return string.format("%.3f", data)
end
local function getX(entry)
	return entry.time
end

local function getY(entry)
	return entry.value
end

function ServerStats:init()
	local currStatsData = self.props.ServerStatsData:getCurrentData()

	self.getOnButtonPress = function (name)
		return function(rbx, input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or
				(input.UserInputType == Enum.UserInputType.Touch and
				input.UserInputState == Enum.UserInputState.End) then
				self:setState({
					expandedEntry = self.state.expandedEntry ~= name and name
				})
			end
		end
	end

	self.state = {
		serverStatsData = currStatsData,
	}
end

function ServerStats:didMount()
	self.statsConnector = self.props.ServerStatsData:Signal():Connect(function(data)
		self:setState({
			serverStatsData = data,
		})
	end)
end

function ServerStats:willUnmount()
	self.statsConnector:Disconnect()
	self.statsConnector = nil
end

function ServerStats:render()
	local elements = {}
	local searchTerm = self.props.searchTerm
	local layoutOrder = self.props.layoutOrder
	local size = self.props.size

	local expandedEntry = self.state.expandedEntry
	local serverStatsData = self.state.serverStatsData

	-- insert all stats entries
	local currLayoutIndex = 1
	local entryCount = 0
	local graphCount = 0
	if serverStatsData then
		for name, data in pairs(serverStatsData) do
			if not searchTerm or string.find(name:lower(), searchTerm:lower()) ~= nil then
				currLayoutIndex = currLayoutIndex + 1

				local showGraph = expandedEntry == name
				local frameHeight = showGraph and ENTRY_HEIGHT + GRAPH_HEIGHT or ENTRY_HEIGHT

				entryCount = entryCount + 1
				graphCount = showGraph and graphCount + 1 or graphCount

				elements[name] = Roact.createElement("Frame",{
					Size = UDim2.new(1, 0, 0, frameHeight),
					BackgroundTransparency = 1,
					LayoutOrder = currLayoutIndex,
				}, {
					DataButton = Roact.createElement(BannerButton,{
						size = UDim2.new(1, 0, 0, ENTRY_HEIGHT),
						pos = UDim2.new(),
						isExpanded = showGraph,

						onButtonPress = self.getOnButtonPress(name),
					}, {
						[name] = Roact.createElement(CellLabel,{
							text = name,
							size = UDim2.new(1 - VALUE_CELL_WIDTH, -CELL_PADDING - ARROW_PADDING, 1, 0),
							pos = UDim2.new(0, CELL_PADDING + ARROW_PADDING, 0, 0),
						}),

						Data = Roact.createElement(CellLabel,{
							text = formatData(data.dataSet:back().value),
							size = UDim2.new(VALUE_CELL_WIDTH, -CELL_PADDING, 1, 0),
							pos = UDim2.new(1 - VALUE_CELL_WIDTH, CELL_PADDING, 0, 0),
						}),

						VerticalLine = Roact.createElement("Frame", {
							Size = UDim2.new(0, LINE_WIDTH, 1, 0),
							Position = UDim2.new(1 - VALUE_CELL_WIDTH, 0, 0, 0),
							BackgroundColor3 = LINE_COLOR,
							BorderSizePixel = 0,
						}),

						HorizontalAlignment = Roact.createElement("Frame", {
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
						minY = data.min,
						maxY = data.max,

						getX = getX,
						getY = getY,

						stringFormatX = convertTimeStamp,
						stringFormatY = formatData,

						axisLabelX = "Timestamp",
						axisLabelY = name,
					}),
				})
			end
		end
	end

	if currLayoutIndex == 1 then
		return Roact.createElement("TextLabel",{
			Size = size,
			Position = UDim2.new(0, 0, 0, 0),
			Text = NO_DATA_MSG,
			TextColor3 = Constants.Color.Text,
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		})
	end

	elements["UIListLayout"] = Roact.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	local canvasHeight = entryCount * ENTRY_HEIGHT + graphCount * GRAPH_HEIGHT
	-- layer over a vertical line to visually separate name and data
	return Roact.createElement("Frame", {
		Size = size,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	},{
		Header = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
			BackgroundTransparency = 1,
		}, {
			[HEADER_NAMES[1]] = Roact.createElement(CellLabel,{
				text = HEADER_NAMES[1],
				size = UDim2.new(1 - VALUE_CELL_WIDTH, -CELL_PADDING - ARROW_PADDING, 1, 0),
				pos = UDim2.new(0, CELL_PADDING + ARROW_PADDING, 0, 0),
			}),

			[HEADER_NAMES[2]] = Roact.createElement(CellLabel,{
				text = HEADER_NAMES[2],
				size = UDim2.new(VALUE_CELL_WIDTH , -CELL_PADDING, 1, 0),
				pos = UDim2.new(1 - VALUE_CELL_WIDTH, CELL_PADDING, 0, 0),
			}),

			upperHorizontalLine = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, LINE_WIDTH),
				BackgroundColor3 = LINE_COLOR,
				BorderSizePixel = 0,
			}),

			VerticalLine = Roact.createElement("Frame", {
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
			CanvasSize = UDim2.new(1, 0, 0, canvasHeight),
			ScrollBarThickness = 5,

			BackgroundTransparency = 1,
		}, elements),
	})
end

return DataConsumer(ServerStats, "ServerStatsData")