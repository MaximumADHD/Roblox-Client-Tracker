local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent.Parent.Components
local DataConsumer = require(Components.DataConsumer)
local HeaderButton = require(Components.HeaderButton)
local CellLabel = require(Components.CellLabel)

local Constants = require(script.Parent.Parent.Parent.Constants)
local LineWidth = Constants.GeneralFormatting.LineWidth
local LineColor = Constants.GeneralFormatting.LineColor
local ChartHeaderNames = Constants.ServerJobsFormatting.ChartHeaderNames
local ChartCellWidths = Constants.ServerJobsFormatting.ValueCellWidth
local ColumnTransformFunc = Constants.ServerJobsFormatting.ColumnTransformFunc
local EntryFrameHeight = Constants.ServerJobsFormatting.EntryFrameHeight
local HeaderFrameHeight = Constants.ServerJobsFormatting.HeaderFrameHeight
local CellPadding = Constants.ServerJobsFormatting.CellPadding
local ExpandArrowPadding = Constants.ServerJobsFormatting.ExpandArrowPadding

-- create table of offsets and sizes for each cell
local totalCellWidth = 0
for _, cellWidth in ipairs(ChartCellWidths) do
	totalCellWidth = totalCellWidth + cellWidth
end

local currOffset = -totalCellWidth
local cellOffset = {}
local headerCellSize = {}
local entryCellSize = {}

local entryCellHeight = EntryFrameHeight - LineWidth -- to account for border height and to use UIListLayout

table.insert(cellOffset, UDim2.new(0, CellPadding + ExpandArrowPadding, 0, 0))
table.insert(headerCellSize, UDim2.new(1,-totalCellWidth - CellPadding - ExpandArrowPadding, 0, HeaderFrameHeight))
table.insert(entryCellSize, UDim2.new(1,-totalCellWidth - CellPadding - ExpandArrowPadding, 0, entryCellHeight))

for _, cellWidth in ipairs(ChartCellWidths) do
	table.insert(cellOffset,UDim2.new(1, currOffset + CellPadding, 0, 0))
	table.insert(headerCellSize, UDim2.new(0, cellWidth - CellPadding, 0, HeaderFrameHeight))
	table.insert(entryCellSize, UDim2.new(0, cellWidth - CellPadding, 0, entryCellHeight))
	currOffset = currOffset + cellWidth
end

local verticalOffsets = {}
for i, offset in ipairs(cellOffset) do
	verticalOffsets[i] = UDim2.new(
		offset.X.Scale,
		offset.X.Offset - CellPadding,
		offset.Y.Scale,
		offset.Y.Offset
	)
end

local ServerJobsChart = Roact.Component:extend("ServerJobsChart")

function ServerJobsChart:init()
	local currJobsList, currJobsListCount = self.props.ServerJobsData:getCurrentData()
	self.state = {
		serverJobsList = currJobsList,
		serverJobsListCount = currJobsListCount,
	}
end

function ServerJobsChart:didMount()
	self.statsConnector = self.props.ServerJobsData:Signal():Connect(function(data, count)
		self:setState({
			serverJobsList = data,
			serverJobsListCount = count,
		})
	end)
end

function ServerJobsChart:willUnmount()
	self.statsConnector:Disconnect()
	self.statsConnector = nil
end

function ServerJobsChart:render()
	local elements = {}
	local layoutOrder = self.props.layoutOrder

	local serverJobsList = self.state.serverJobsList

	elements["UIListLayout"] = Roact.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	local header = {}
	for i = 1, #ChartHeaderNames do
		header[ChartHeaderNames[i]] = Roact.createElement(HeaderButton, {
			text = ChartHeaderNames[i],
			size = headerCellSize[i],
			pos = cellOffset[i],
			sortfunction = function(rbx)
				print("pressed ",ChartHeaderNames[i]," button")
			end,
		})
	end

	header["upperHorizontalLine"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LineWidth),
		Position = UDim2.new(0, 0, 0, 0),
		BackgroundColor3 = LineColor,
	})

	header["lowerHorizontalLine"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LineWidth),
		Position = UDim2.new(0, 0, 1, 0),
		BackgroundColor3 = LineColor,
	})

	local numEntries = 0
	for name,data in pairs(serverJobsList) do
		numEntries = numEntries + 1
		local entry = {}
		entry[name] = Roact.createElement(CellLabel,{
			text = name,
			size = headerCellSize[1],
			pos = cellOffset[1],
		})
		for i = 1,#data do
			entry[ChartHeaderNames[i+1]] = Roact.createElement(CellLabel,{
				text = ColumnTransformFunc[i](data[i]),
				size = headerCellSize[i + 1],
				pos = cellOffset[i + 1],
			})
		end
		entry["lowerHorizontalLine"] = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, LineWidth),
			Position = UDim2.new(0, 0, 1, 0),
			BackgroundColor3 = LineColor,
		})

		elements[name] = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, EntryFrameHeight),
			BackgroundTransparency = 1,
		}, entry)
	end

	local finalFrame = {}
	finalFrame["Header"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, HeaderFrameHeight),
		BackgroundTransparency = 1,
	}, header)

	local scrollingFrameHeight = numEntries * EntryFrameHeight

	finalFrame["MainChart"] = Roact.createElement("ScrollingFrame", {
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 0, 0, HeaderFrameHeight),
		BackgroundTransparency = 1,
		VerticalScrollBarInset = 1,
		ScrollBarThickness = 5,
		CanvasSize = UDim2.new(1, 0, 0, scrollingFrameHeight),
	}, elements)

	-- add vertical lines over components
	for ind, offset in ipairs(verticalOffsets) do
		-- we dont need a vertical line on the left side of the leftmost column
		if ind ~= 1 then
			local key = string.format("VerticalLine_%d",ind)
			finalFrame[key] = Roact.createElement("Frame", {
				Size = UDim2.new(0, LineWidth, 1, 0),
				Position = offset,
				BackgroundColor3 = LineColor,
			})
		end
	end

	return Roact.createElement("Frame",{
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	},finalFrame)

end

return DataConsumer(ServerJobsChart, "ServerJobsData")