local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Parent.Constants)

local HEADER_NAMES = Constants.NetworkFormatting.SummaryHeaderNames
local CELL_WIDTH = Constants.NetworkFormatting.SummaryCellWidths
local HEADER_HEIGHT = Constants.NetworkFormatting.HeaderFrameHeight
local ENTRY_HEIGHT = Constants.NetworkFormatting.EntryFrameHeight

local LINE_WIDTH = Constants.GeneralFormatting.LineWidth
local LINE_COLOR = Constants.GeneralFormatting.LineColor
local CELL_PADDING = Constants.NetworkFormatting.CellPadding
local TEXT_COLOR = Constants.Color.Text
local NON_DATA_STR = "No Summary Data Found"

local CellLabel = require(script.Parent.Parent.Parent.Components.CellLabel)
local HeaderButton = require(script.Parent.Parent.Parent.Components.HeaderButton)

local totalSummaryWidth = 0
for _, v in pairs(CELL_WIDTH) do
	totalSummaryWidth = totalSummaryWidth + v
end

-- create table of offsets and sizes for each cell
local currOffset = -totalSummaryWidth
local cellOffset = {}
local headerCellSize = {}
local entryCellSize = {}

table.insert(cellOffset, UDim2.new(0, CELL_PADDING, 0, 0))
table.insert(headerCellSize, UDim2.new(1, -totalSummaryWidth - CELL_PADDING, 0, HEADER_HEIGHT))
table.insert(entryCellSize, UDim2.new(1, -totalSummaryWidth - CELL_PADDING, 0, ENTRY_HEIGHT))

for _, width in ipairs(CELL_WIDTH) do
	table.insert(cellOffset,UDim2.new(1, currOffset + CELL_PADDING, 0, 0))
	table.insert(headerCellSize, UDim2.new(0, width - CELL_PADDING, 0, HEADER_HEIGHT))
	table.insert(entryCellSize, UDim2.new(0, width - CELL_PADDING, 0, ENTRY_HEIGHT))
	currOffset = currOffset + width
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

local NetworkSummary = Roact.Component:extend("NetworkSummary")

function NetworkSummary:render()
	local width = self.props.width
	local httpSummaryTable = self.props.httpSummaryTable or {}
	local layoutOrder = self.props.layoutOrder

	local elements = {}
	elements["UIListLayout"] = Roact.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	local summaryHeader = {}
	summaryHeader["UpperHorizontalLine"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LINE_WIDTH),
		BackgroundColor3 = LINE_COLOR,
		BorderSizePixel = 0,
	})
	summaryHeader["LowerHorizontalLine"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LINE_WIDTH),
		Position = UDim2.new(0, 0, 1, 0),
		BackgroundColor3 = LINE_COLOR,
		BorderSizePixel = 0,
	})

	for i = 2, #verticalOffsets do
		local key = string.format("VerticalLine_%d",i)
		summaryHeader[key] = Roact.createElement("Frame", {
			Size = UDim2.new(0, LINE_WIDTH, 0, HEADER_HEIGHT),
			Position = verticalOffsets[i],
			BackgroundColor3 = LINE_COLOR,
			BorderSizePixel = 0,
		})
	end

	for ind, name in ipairs(HEADER_NAMES) do
		summaryHeader[name] = Roact.createElement(HeaderButton, {
			text = name,
			size = headerCellSize[ind],
			pos = cellOffset[ind],
		})
	end
	elements["Header"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
		BackgroundTransparency = 1,
		LayoutOrder = 1,
	}, summaryHeader)

	local entryCount = 0
	for _, dataEntry in pairs(httpSummaryTable) do
		entryCount = entryCount + 1

		local row = {}

		row.RequestType = Roact.createElement(CellLabel, {
			text = dataEntry.RequestType,
			size = headerCellSize[1],
			pos = cellOffset[1],
		})

		row.RequestCount = Roact.createElement(CellLabel, {
			text = dataEntry.RequestCount,
			size = headerCellSize[2],
			pos = cellOffset[2],
		})

		row.FailedCount = Roact.createElement(CellLabel, {
			text = dataEntry.FailedCount,
			size = headerCellSize[3],
			pos = cellOffset[3],
		})

		row.AverageTime = Roact.createElement(CellLabel, {
			text = string.format("%.3f", dataEntry.AverageTime),
			size = headerCellSize[4],
			pos = cellOffset[4],
		})

		row.MinTime = Roact.createElement(CellLabel, {
			text = string.format("%.3f", dataEntry.MinTime),
			size = headerCellSize[5],
			pos = cellOffset[5],
		})

		row.MaxTime = Roact.createElement(CellLabel, {
			text = string.format("%.3f", dataEntry.MaxTime),
			size = headerCellSize[6],
			pos = cellOffset[6],
		})

		row.LowerHorizontalLine = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, LINE_WIDTH),
			Position = UDim2.new(0, 0, 1, 0),
			BackgroundColor3 = LINE_COLOR,
			BorderSizePixel = 0,
		})

		for ind = 2, #verticalOffsets do
			local key = string.format("VerticalLine_%d",ind)
			row[key] = Roact.createElement("Frame", {
				Size = UDim2.new(0, LINE_WIDTH, 1, 0),
				Position = verticalOffsets[ind],
				BackgroundColor3 = LINE_COLOR,
				BorderSizePixel = 0,
			})
		end

		elements[dataEntry.RequestType] = Roact.createElement("Frame", {
			Size = UDim2.new(0, width, 0, ENTRY_HEIGHT),
			BackgroundTransparency = 1,
			LayoutOrder = entryCount + 1
		},row)
	end

	if entryCount == 0 then
		elements["Padding"] = Roact.createElement("TextLabel", {
			Size = UDim2.new(0, width, 0, ENTRY_HEIGHT),
			Text = NON_DATA_STR,
			TextColor3 = TEXT_COLOR,
			BackgroundTransparency = 1,
			LayoutOrder = 2
		})
		entryCount = 1
	end

	local summaryHeight = entryCount * ENTRY_HEIGHT + HEADER_HEIGHT

	-- update offsets to remove padding so we can use for vertical line
	return Roact.createElement("ScrollingFrame", {
		Size = UDim2.new(1, 0, 0, summaryHeight),
		ScrollingEnabled = false,
		ScrollBarThickness = 0,
		BackgroundTransparency = 1,

		LayoutOrder = layoutOrder,
	}, elements)
end

return NetworkSummary