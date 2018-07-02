local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Parent.Constants)

local SummaryHeaderNames = Constants.ClientNetworkFormatting.SummaryHeaderNames
local SummaryCellWidths = Constants.ClientNetworkFormatting.SummaryCellWidths
local HeaderFrameHeight = Constants.ClientNetworkFormatting.HeaderFrameHeight
local EntryFrameHeight = Constants.ClientNetworkFormatting.EntryFrameHeight

local LineWidth = Constants.GeneralFormatting.LineWidth
local LineColor = Constants.GeneralFormatting.LineColor
local GraphPadding = Constants.ClientNetworkFormatting.GraphPadding

local CellLabel = require(script.Parent.Parent.Parent.Components.CellLabel)

local totalSummaryWidth = 0
for _, v in pairs(SummaryCellWidths) do
	totalSummaryWidth = totalSummaryWidth + v
end

-- create table of offsets and sizes for each cell
local currOffset = -totalSummaryWidth
local cellOffset = {}
local headerCellSize = {}
local entryCellSize = {}

table.insert(cellOffset, UDim2.new(0, GraphPadding, 0, 0))
table.insert(headerCellSize, UDim2.new(1, -totalSummaryWidth - GraphPadding, 0, HeaderFrameHeight))
table.insert(entryCellSize, UDim2.new(1, -totalSummaryWidth - GraphPadding, 0, EntryFrameHeight))

for _, width in ipairs(SummaryCellWidths) do
	table.insert(cellOffset,UDim2.new(1, currOffset + GraphPadding, 0, 0))
	table.insert(headerCellSize, UDim2.new(0, width - GraphPadding, 0, HeaderFrameHeight))
	table.insert(entryCellSize, UDim2.new(0, width - GraphPadding, 0, EntryFrameHeight))
	currOffset = currOffset + width
end

local verticalOffsets = {}
for i, offset in ipairs(cellOffset) do
	verticalOffsets[i] = UDim2.new(
		offset.X.Scale,
		offset.X.Offset - GraphPadding,
		offset.Y.Scale,
		offset.Y.Offset
	)
end

local NetworkSummary = Roact.Component:extend("NetworkSummary")

function NetworkSummary:render()
	local elements = {}
	local httpSummaryTable = self.props.httpSummaryTable or {}

	elements["UIListLayout"] = Roact.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	local summaryHeader = {}
	summaryHeader["UpperHorizontalLine"] = Roact.createElement("Frame",{
		Size = UDim2.new(1, 0, 0, LineWidth),
		BackgroundColor3 = LineColor,
		BorderSizePixel = 0,
	})
	summaryHeader["LowerHorizontalLine"] = Roact.createElement("Frame",{
		Size = UDim2.new(1, 0, 0, LineWidth),
		Position = UDim2.new(0, 0, 1, 0),
		BackgroundColor3 = LineColor,
		BorderSizePixel = 0,
	})

	for ind, name in ipairs(SummaryHeaderNames) do
		summaryHeader[name] = Roact.createElement(CellLabel,{
			text = name,
			size = headerCellSize[ind],
			pos = cellOffset[ind],
		})
	end
	elements["Header"] = Roact.createElement("Frame",{
		Size = UDim2.new(1, 0, 0, HeaderFrameHeight),
		BackgroundTransparency = 1,
		LayoutOrder = 1,
	}, summaryHeader)

	local entryCount = 0
	for _, dataEntry in pairs(httpSummaryTable) do
		entryCount = entryCount + 1

		elements[dataEntry.RequestType] = Roact.createElement("Frame",{
			Size = UDim2.new(1, 0, 0, EntryFrameHeight),
			BackgroundTransparency = 1,
			LayoutOrder = entryCount + 1
		}, {
			RequestType = Roact.createElement(CellLabel,{
				text = dataEntry.RequestType,
				size = headerCellSize[1],
				pos = cellOffset[1],
			}),

			RequestCount = Roact.createElement(CellLabel,{
				text = dataEntry.RequestCount,
				size = headerCellSize[2],
				pos = cellOffset[2],
			}),

			FailedCount = Roact.createElement(CellLabel,{
				text = dataEntry.FailedCount,
				size = headerCellSize[3],
				pos = cellOffset[3],
			}),

			AverageTime = Roact.createElement(CellLabel,{
				text = string.format("%.3f", dataEntry.AverageTime),
				size = headerCellSize[4],
				pos = cellOffset[4],
			}),

			MinTime = Roact.createElement(CellLabel,{
				text = string.format("%.3f", dataEntry.MinTime),
				size = headerCellSize[5],
				pos = cellOffset[5],
			}),

			MaxTime = Roact.createElement(CellLabel,{
				text = string.format("%.3f", dataEntry.MaxTime),
				size = headerCellSize[6],
				pos = cellOffset[6],
			}),

			LowerHorizontalLine = Roact.createElement("Frame",{
				Size = UDim2.new(1, 0, 0, LineWidth),
				Position = UDim2.new(0, 0, 1, 0),
				BackgroundColor3 = LineColor,
				BorderSizePixel = 0,
			}),
		})
	end

	local summaryHeight = entryCount * EntryFrameHeight + HeaderFrameHeight

	-- update offsets to remove padding so we can use for vertical line
	local finalFrame = {}
	finalFrame["MainChart"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, summaryHeight),
		BackgroundTransparency = 1,
	}, elements)

	for ind, offset in ipairs(verticalOffsets) do
		-- we dont need a vertical line on the left side of the leftmost column
		if ind ~= 1 then
			local key = string.format("VerticalLine_%d",ind)
			finalFrame[key] = Roact.createElement("Frame", {
				Size = UDim2.new(0, LineWidth, 0, summaryHeight),
				Position = offset,
				BackgroundColor3 = LineColor,
				BorderSizePixel = 0,
			})
		end
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, summaryHeight),
		BackgroundTransparency = 1,
	}, finalFrame)
end

return NetworkSummary