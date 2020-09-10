local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent.Parent.Components
local CellLabel = require(Components.CellLabel)
local BannerButton = require(Components.BannerButton)
local LineGraph = require(Components.LineGraph)

local Constants = require(script.Parent.Parent.Parent.Constants)
local LINE_WIDTH = Constants.GeneralFormatting.LineWidth
local LINE_COLOR = Constants.GeneralFormatting.LineColor
local VALUE_CELL_WIDTH = Constants.MemoryFormatting.ValueCellWidth
local CELL_PADDING = Constants.MemoryFormatting.CellPadding
local VALUE_PADDING = Constants.MemoryFormatting.ValuePadding

local ENTRY_HEIGHT = Constants.GeneralFormatting.EntryFrameHeight
local DEPTH_INDENT = Constants.MemoryFormatting.DepthIndent

local convertTimeStamp = require(script.Parent.Parent.Parent.Util.convertTimeStamp)

return function(props)
	local size = props.size
	local depth = props.depth
	local showGraph = props.showGraph
	local dataStats = props.dataStats
	local layoutOrder = props.layoutOrder

	local onButtonPress = props.onButtonPress
	local formatValueStr = props.formatValueStr
	local getX = props.getX
	local getY = props.getY

	local offset = depth * DEPTH_INDENT

	local name = props.name
	local value = props.value
	if dataStats then
		value = dataStats.dataSet:back().data
	end

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		button = Roact.createElement(BannerButton, {
			size = UDim2.new(1, - offset, 0, ENTRY_HEIGHT),
			pos = UDim2.new(0, offset, 0, 0),
			isExpanded = showGraph,

			onButtonPress = onButtonPress,
		}, {
			name = Roact.createElement(CellLabel, {
				text = name,
				size = UDim2.new(1, 0, 1, 0),
				pos = UDim2.new(0, CELL_PADDING, 0, 0),
			}),

			horizonal1 = Roact.createElement("Frame", {
				Size = UDim2.new(1, -offset , 0, LINE_WIDTH),
				Position = UDim2.new(0, offset, 0, 0),
				BackgroundColor3 = LINE_COLOR,
				BorderSizePixel = 0,
			}),

			horizonal2 = Roact.createElement("Frame", {
				Size = UDim2.new(1, -offset, 0, LINE_WIDTH),
				Position = UDim2.new(0, offset, 1, 0),
				BackgroundColor3 = LINE_COLOR,
				BorderSizePixel = 0,
			}),
		}),

		value = value and Roact.createElement(CellLabel, {
			text = formatValueStr(value),
			size = UDim2.new(VALUE_CELL_WIDTH, -VALUE_PADDING, 0, ENTRY_HEIGHT),
			pos = UDim2.new(1 - VALUE_CELL_WIDTH, VALUE_PADDING, 0, 0),
		}),

		vertical = Roact.createElement("Frame", {
			Size = UDim2.new(0, 1, 0, ENTRY_HEIGHT),
			Position = UDim2.new(1 - VALUE_CELL_WIDTH, 0, 0, 0),
			BackgroundColor3 = LINE_COLOR,
			BorderSizePixel = 0,
		}),

		Graph = showGraph and Roact.createElement(LineGraph, {
			pos = UDim2.new(0, 0, 0, ENTRY_HEIGHT),
			size = UDim2.new(1, 0, 1, -ENTRY_HEIGHT),
			graphData = dataStats.dataSet,
			maxY = dataStats.max,
			minY = dataStats.min,

			getX = getX,
			getY = getY,

			stringFormatX = convertTimeStamp,
			stringFormatY = formatValueStr,

			axisLabelX = "Timestamp",
			axisLabelY = name,
		}),
	})
end
