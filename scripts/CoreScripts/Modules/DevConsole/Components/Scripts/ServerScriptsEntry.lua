local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent.Parent.Components
local CellLabel = require(Components.CellLabel)
local BannerButton = require(Components.BannerButton)
local LineGraph = require(Components.LineGraph)

local Constants = require(script.Parent.Parent.Parent.Constants)
local LINE_WIDTH = Constants.GeneralFormatting.LineWidth
local LINE_COLOR = Constants.GeneralFormatting.LineColor
local HEADER_NAMES = Constants.ServerScriptsFormatting.ChartHeaderNames
local ENTRY_HEIGHT = Constants.ServerScriptsFormatting.EntryFrameHeight
local ACTIVITYBOX_PADDING = Constants.ServerScriptsFormatting.ActivityBoxPadding
local ACTIVITYBOX_WIDTH = Constants.ServerScriptsFormatting.ActivityBoxWidth

local GRAPH_HEIGHT = Constants.GeneralFormatting.LineGraphHeight

local convertTimeStamp = require(script.Parent.Parent.Parent.Util.convertTimeStamp)

return function(props)
	local scriptData = props.scriptData

	local frameHeight = props.frameHeight
	local showGraph = props.showGraph
	local layoutOrder = props.layoutOrder
	local activityBoxColor = props.activityBoxColor

	local entryCellSize = props.entryCellSize
	local cellOffset = props.cellOffset
	local verticalOffsets = props.verticalOffsets

	local onButtonPress = props.onButtonPress
	local getX = props.getX
	local getActivity = props.getActivity
	local getRate = props.getRate
	local formatScriptsData = props.formatScriptsData

	local scriptDataStats = scriptData.dataStats
	local currEntry = scriptDataStats.dataSet:back()

	return Roact.createElement("Frame",{
		Size = UDim2.new(1, 0, 0, frameHeight),
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		button = Roact.createElement(BannerButton, {
			size = UDim2.new(1, 0, 0, ENTRY_HEIGHT),
			pos = UDim2.new(),
			isExpanded = showGraph,

			onButtonPress = onButtonPress,
		}, {
			ActivityBox = Roact.createElement("Frame", {
				Size = UDim2.new(0, ACTIVITYBOX_WIDTH, 0, ACTIVITYBOX_WIDTH),
				Position = UDim2.new(0, ACTIVITYBOX_PADDING, 0, (ENTRY_HEIGHT - ACTIVITYBOX_WIDTH) / 2),
				BackgroundColor3 = activityBoxColor,
			}),
			ScriptName = Roact.createElement(CellLabel,{
				text = scriptData.name,
				size = entryCellSize[1],
				pos = cellOffset[1],
			}),
			ScriptAcitivity = Roact.createElement(CellLabel,{
				text = formatScriptsData(currEntry.data[1]),
				size = entryCellSize[2],
				pos = cellOffset[2],
			}),
			scriptFreqStr = Roact.createElement(CellLabel,{
				text = formatScriptsData(currEntry.data[2]),
				size = entryCellSize[3],
				pos = cellOffset[3],
			}),

			upperHorizontalLine = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, LINE_WIDTH),
				BackgroundColor3 = LINE_COLOR,
				BorderSizePixel = 0,
			}),

			verticalLine1 = Roact.createElement("Frame", {
				Size = UDim2.new(0, LINE_WIDTH, 1, 0),
				Position = verticalOffsets[2],
				BackgroundColor3 = LINE_COLOR,
				BorderSizePixel = 0,
			}),

			verticalLine2 = Roact.createElement("Frame", {
				Size = UDim2.new(0, LINE_WIDTH, 1, 0),
				Position = verticalOffsets[3],
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

		ActivityGraph = showGraph and Roact.createElement(LineGraph,{
			pos = UDim2.new(0, 0, 0, ENTRY_HEIGHT),
			size = UDim2.new(1, 0, 0, GRAPH_HEIGHT),
			graphData = scriptDataStats.dataSet,
			maxY = scriptDataStats.max[1],
			minY = scriptDataStats.min[1],

			getX = getX,
			getY = getActivity,

			stringFormatX = convertTimeStamp,
			stringFormatY = formatScriptsData,

			axisLabelX = "Timestamp",
			axisLabelY = HEADER_NAMES[2],
		}),

		RateGraph = showGraph and Roact.createElement(LineGraph,{
			pos = UDim2.new(0, 0, 0, ENTRY_HEIGHT + GRAPH_HEIGHT),
			size = UDim2.new(1, 0, 0, GRAPH_HEIGHT),
			graphData = scriptDataStats.dataSet,
			maxY = scriptDataStats.max[2],
			minY = scriptDataStats.min[2],

			getX = getX,
			getY = getRate,

			stringFormatX = convertTimeStamp,
			stringFormatY = formatScriptsData,

			axisLabelX = "Timestamp",
			axisLabelY = HEADER_NAMES[3],
		}),
	})
end