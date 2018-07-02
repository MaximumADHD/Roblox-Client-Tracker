
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent.Parent.Components
local DataConsumer = require(Components.DataConsumer)
local HeaderButton = require(Components.HeaderButton)
local CellLabel = require(Components.CellLabel)

local Constants = require(script.Parent.Parent.Parent.Constants)
local GeneralFormatting = Constants.GeneralFormatting
local LineWidth = GeneralFormatting.LineWidth
local LineColor = GeneralFormatting.LineColor
local ActionBindingsFormatting = Constants.ActionBindingsFormatting
local ChartHeaderNames = ActionBindingsFormatting.ChartHeaderNames
local ChartCellWidths = ActionBindingsFormatting.ChartCellWidths
local HeaderFrameHeight = ActionBindingsFormatting.HeaderFrameHeight
local EntryFrameHeight = ActionBindingsFormatting.EntryFrameHeight
local CellPadding = ActionBindingsFormatting.CellPadding

local IS_CORE_STR = "Core"
local IS_DEVELOPER_STR = "Developer"

-- create table of offsets and sizes for each cell
local totalCellWidth = 0
for _, cellWidth in ipairs(ChartCellWidths) do
	totalCellWidth = totalCellWidth + cellWidth
end

local currOffset = -totalCellWidth
local cellOffset = {}
local headerCellSize = {}
local entryCellSize = {}

table.insert(cellOffset, UDim2.new(0, CellPadding, 0, 0))
table.insert(headerCellSize, UDim2.new(1, -totalCellWidth - CellPadding, 0, HeaderFrameHeight))
table.insert(entryCellSize, UDim2.new(1, -totalCellWidth - CellPadding, 0, EntryFrameHeight))

for _, cellWidth in ipairs(ChartCellWidths) do
	table.insert(cellOffset,UDim2.new(1, currOffset + CellPadding, 0, 0))
	table.insert(headerCellSize, UDim2.new(0, cellWidth - CellPadding, 0, HeaderFrameHeight))
	table.insert(entryCellSize, UDim2.new(0, cellWidth - CellPadding, 0, EntryFrameHeight))
	currOffset = currOffset + cellWidth
end

local verticalOffsets = {}
for i, offset in ipairs(cellOffset) do
	verticalOffsets[i] = UDim2.new(
		offset.X.Scale,
		offset.X.Offset - CellPadding,
		offset.Y.Scale,
		offset.Y.Offset)
end

local ActionBindingsChart = Roact.Component:extend("ActionBindingsChart")

local function constructHeader()
	local header = {}

	for ind, name in ipairs(ChartHeaderNames) do
		header[name] = Roact.createElement(HeaderButton,{
			text = name,
			size = headerCellSize[ind],
			pos = cellOffset[ind],
			sortfunction = function(rbx)
				print("press sort ", name," button")
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

local function constructEntry(name, actionInfo)
	-- the last element is special cased because the data in the
	-- string is passed in as value in the table
	-- use tostring to convert the enum into an actual string also because it's used twice
	local enumStr = tostring(actionInfo["inputTypes"][1])

	local isCoreString = IS_CORE_STR
	if actionInfo["isCore"] then
		isCoreString = IS_DEVELOPER_STR
	end

	return Roact.createElement("Frame",{
		Size = UDim2.new(1, 0, 0, EntryFrameHeight),
		BackgroundTransparency = 1,
		LayoutOrder = actionInfo.stackOrder,
	},{
		[name] = Roact.createElement(CellLabel, {
			text = enumStr,
			size = entryCellSize[1],
			pos = cellOffset[1],
		}),

		priorityLevel = Roact.createElement(CellLabel, {
			text = actionInfo["priorityLevel"],
			size = entryCellSize[2],
			pos = cellOffset[2],
		}),

		isCore = Roact.createElement(CellLabel, {
			text = isCoreString,
			size = entryCellSize[3],
			pos = cellOffset[3],
		}),

		actionName = Roact.createElement(CellLabel, {
			text = name,
			size = entryCellSize[4],
			pos = cellOffset[4],
		}),

		inputTypes = Roact.createElement(CellLabel, {
			text = enumStr,
			size = entryCellSize[5],
			pos = cellOffset[5],
		}),

		upperHorizontalLine = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, LineWidth),
			BackgroundColor3 = LineColor,
			BorderSizePixel = 0,
		}),

		lowerHorizontalLine = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, LineWidth),
			Position = UDim2.new(0, 0, 1, 0),
			BackgroundColor3 = LineColor,
			BorderSizePixel = 0,
		}),
	})
end

function ActionBindingsChart:init(props)
	local initBindings = props.ActionBindingsData:getCurrentData()
	self.state = {
		actionBindingEntries = initBindings
	}
end

function ActionBindingsChart:didMount()
	self.bindingsUpdated = self.props.ActionBindingsData:Signal():Connect(function(bindingsData)
		self:setState({
			actionBindingEntries = bindingsData
		})
	end)
end

function ActionBindingsChart:willUnmount()
	self.bindingsUpdated:Disconnect()
	self.bindingsUpdated = nil
end

function ActionBindingsChart:render()
	local entries = {}
	local searchTerm = self.props.searchTerm
	local layoutOrder = self.props.layoutOrder

	local entryList = self.state.actionBindingEntries

	table.insert(entries, Roact.createElement("UIListLayout", {
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		SortOrder = Enum.SortOrder.LayoutOrder,
	}))

	local count = 0
	for name, actionInfo in pairs(entryList) do
		if not searchTerm or string.find(name:lower(), searchTerm:lower()) ~= nil then
			entries[name] = constructEntry(name, actionInfo)
			count = count + 1
		end
	end
	local canvasHeight = count * EntryFrameHeight

	local finalFrame = {}
	finalFrame["Header"] = constructHeader()
	finalFrame["MainChart"] = Roact.createElement("ScrollingFrame", {
		Position = UDim2.new(0, 0, 0, HeaderFrameHeight),
		Size = UDim2.new(1, 0, 1, - HeaderFrameHeight),
		CanvasSize = UDim2.new(1, 0, 0, canvasHeight),
		BackgroundColor3 = Constants.Color.BaseGray,
		BackgroundTransparency = 1,
	}, entries)

	-- add vertical lines over components
	-- alternative is to create a line for each entry
	for i = 2,#verticalOffsets do
		local key = string.format("VerticalLine_%d",i)
		finalFrame[key] = Roact.createElement("Frame", {
			Size = UDim2.new(0,LineWidth,1,0),
			Position = verticalOffsets[i],
			BackgroundColor3 = LineColor,
			BorderSizePixel = 0,
		})
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder
	}, finalFrame)
end

return DataConsumer(ActionBindingsChart, "ActionBindingsData")