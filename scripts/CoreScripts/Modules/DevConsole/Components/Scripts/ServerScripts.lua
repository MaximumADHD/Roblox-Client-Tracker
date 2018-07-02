local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent.Parent.Components
local DataConsumer = require(script.Parent.Parent.Parent.Components.DataConsumer)
local HeaderButton = require(Components.HeaderButton)
local CellLabel = require(Components.CellLabel)

local Constants = require(script.Parent.Parent.Parent.Constants)
local LineWidth = Constants.GeneralFormatting.LineWidth
local LineColor = Constants.GeneralFormatting.LineColor
local ChartCellWidths = Constants.ServerScriptsFormatting.ChartCellWidths
local ChartHeaderNames = Constants.ServerScriptsFormatting.ChartHeaderNames
local HeaderFrameHeight = Constants.ServerScriptsFormatting.HeaderFrameHeight
local EntryFrameHeight = Constants.ServerScriptsFormatting.EntryFrameHeight
local CellPadding = Constants.ServerScriptsFormatting.CellPadding
local ActivityBoxPadding = Constants.ServerScriptsFormatting.ActivityBoxPadding
local ActivityBoxWidth = Constants.ServerScriptsFormatting.ActivityBoxWidth

-- create table of offsets and sizes for each cell
local totalCellWidth = 0
for _, cellWidth in ipairs(ChartCellWidths) do
	totalCellWidth = totalCellWidth + cellWidth
end

local currOffset = -totalCellWidth
local cellOffset = {}
local headerCellSize = {}
local entryCellSize = {}

table.insert(cellOffset, UDim2.new(0, CellPadding + ActivityBoxPadding, 0, 0))
table.insert(headerCellSize, UDim2.new(1, -totalCellWidth - CellPadding - ActivityBoxPadding, 0, HeaderFrameHeight))
table.insert(entryCellSize, UDim2.new(1, -totalCellWidth - CellPadding - ActivityBoxPadding, 0, EntryFrameHeight))

for _, cellWidth in ipairs(ChartCellWidths) do
	table.insert(cellOffset,UDim2.new(1, currOffset + CellPadding, 0, 0))
	table.insert(headerCellSize, UDim2.new(0, cellWidth - CellPadding, 0, HeaderFrameHeight))
	table.insert(entryCellSize, UDim2.new(0, cellWidth - CellPadding, 0, EntryFrameHeight))
	currOffset = currOffset + cellWidth
end

local verticalOffsets = {}
for i, offset in ipairs(cellOffset) do
	verticalOffsets[i] = UDim2.new(offset.X.Scale, offset.X.Offset - CellPadding,
		offset.Y.Scale, offset.Y.Offset)
end

local ServerScripts = Roact.PureComponent:extend("ServerScripts")

local function constructHeader()
	local header = {}
	-- NameButton
	for i = 1, #ChartHeaderNames do
		header[ChartHeaderNames[i]] = Roact.createElement(HeaderButton,{
			text = ChartHeaderNames[i],
			size = headerCellSize[i],
			pos = cellOffset[i],
			sortfunction = function(rbx)
				print("press sort ", ChartHeaderNames[i]," button")
			end,
		})
	end

	header["upperHorizontalLine"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LineWidth),
		Position = UDim2.new(0, 0, 0, 0),
		BackgroundColor3 = LineColor,
		BorderSizePixel = 0,
	})

	header["lowerHorizontalLine"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LineWidth),
		Position = UDim2.new(0, 0, 1, 0),
		BackgroundColor3 = LineColor,
		BorderSizePixel = 0,
	})

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, HeaderFrameHeight),
		BackgroundTransparency = 1,
	}, header)
end

local function constructScriptEntry(scriptName, scriptData)
	local row = {}

	local scriptActiveStr = string.format("%.3f", scriptData[1])
	local scriptFreqStr = string.format("%.3f", scriptData[2])

	local ActivityBoxColor = Constants.Color.InactiveBox
	if scriptData[2] > 0 then
		ActivityBoxColor = Constants.Color.ActiveBox
	end
	row["ActivityBox"] = Roact.createElement("Frame", {
		Size = UDim2.new(0, ActivityBoxWidth, 0, ActivityBoxWidth),
		Position = UDim2.new(0, ActivityBoxPadding, 0, (EntryFrameHeight - ActivityBoxWidth) / 2),
		BackgroundColor3 = ActivityBoxColor,
	})

	row["ScriptName"] = Roact.createElement(CellLabel,{
		text = scriptName,
		size = entryCellSize[1],
		pos = cellOffset[1],
	})
	row["ScriptAcitivity"] = Roact.createElement(CellLabel,{
		text = scriptActiveStr,
		size = entryCellSize[2],
		pos = cellOffset[2],
	})
	row["scriptFreqStr"] = Roact.createElement(CellLabel,{
		text = scriptFreqStr,
		size = entryCellSize[3],
		pos = cellOffset[3],
	})

	row["upperHorizontalLine"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LineWidth),
		BackgroundColor3 = LineColor,
		BorderSizePixel = 0,
	})

	row["lowerHorizontalLine"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LineWidth),
		Position = UDim2.new(0, 0, 1, 0),
		BackgroundColor3 = LineColor,
		BorderSizePixel = 0,
	})

	return Roact.createElement("Frame",{
		Size = UDim2.new(1, 0, 0, EntryFrameHeight),
		BackgroundTransparency = 1,
	}, row)
end

function ServerScripts:init()
	local currScriptsData, currScripsDataCount = self.props.ServerScriptsData:getCurrentData()
	self.state = {
		serverScriptsData = currScriptsData,
		serverScriptsCount = currScripsDataCount,
	}
end

function ServerScripts:didMount()
	self.statsConnector = self.props.ServerScriptsData:Signal():Connect(function(data, count)
		self:setState({
			serverScriptsData = data,
			serverScriptsCount = count,
		})
	end)
end

function ServerScripts:willUnmount()
	self.statsConnector:Disconnect()
	self.statsConnector = nil
end

function ServerScripts:render()
	local elements = {}
	local searchTerm = self.props.searchTerm
	local layoutOrder = self.props.layoutOrder

	local serverData = self.state.serverScriptsData

	table.insert(elements, Roact.createElement("UIListLayout", {
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		SortOrder = Enum.SortOrder.LayoutOrder,
	}))

	table.insert(elements, constructHeader())

	for i,v in pairs(serverData) do
		if v then
			if not searchTerm or string.find(i:lower(), searchTerm:lower()) ~= nil then
				table.insert(elements, constructScriptEntry(i,v)) -- currently all entries in scripts are active
			end
		end
	end

	local finalFrame = {}
	finalFrame["MainChart"] = Roact.createElement("ScrollingFrame", {
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(1, 0, 1, 0),
		CanvasSize = UDim2.new(1, 0, 0, #elements * EntryFrameHeight),
		BackgroundColor3 = Constants.Color.BaseGray,
		BackgroundTransparency = 1,
	}, elements)

	-- add vertical lines over components
	-- alternative is to create a line for each entry
	for i = 2,#verticalOffsets do
		local key = string.format("VerticalLine_%d",i)
		finalFrame[key] = Roact.createElement("Frame", {
			Size = UDim2.new(0, LineWidth, 1, 0),
			Position = verticalOffsets[i],
			BackgroundColor3 = LineColor,
			BorderSizePixel = 0,
		})
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, finalFrame)
end

return DataConsumer(ServerScripts, "ServerScriptsData")