local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent.Parent.Components
local DataConsumer = require(Components.DataConsumer)
local HeaderButton = require(Components.HeaderButton)
local CellLabel = require(Components.CellLabel)

local Constants = require(script.Parent.Parent.Parent.Constants)
local LineWidth = Constants.GeneralFormatting.LineWidth
local LineColor = Constants.GeneralFormatting.LineColor
local ChartHeaderNames = Constants.DataStoresFormatting.ChartHeaderNames
local ValueCellWidth = Constants.DataStoresFormatting.ValueCellWidth
local CellPadding = Constants.DataStoresFormatting.CellPadding
local ExpandArrowPadding = Constants.DataStoresFormatting.ExpandArrowPadding
local HeaderFrameHeight = Constants.DataStoresFormatting.HeaderFrameHeight
local EntryFrameHeight = Constants.DataStoresFormatting.EntryFrameHeight

local DataStoresChart = Roact.Component:extend("DataStoresChart")

local function constructHeader()
	local header = {}

	header[ChartHeaderNames[1]] = Roact.createElement(HeaderButton,{
		text = ChartHeaderNames[1],
		size = UDim2.new(1, -ValueCellWidth - CellPadding - ExpandArrowPadding, 1, 0),
		pos = UDim2.new(0, CellPadding + ExpandArrowPadding, 0, 0),
		sortfunction = function()
			print(ChartHeaderNames[1], " header button pressed")
		end,
	})
	header[ChartHeaderNames[2]] = Roact.createElement(HeaderButton,{
		text = ChartHeaderNames[2],
		size = UDim2.new(0, ValueCellWidth - CellPadding, 1, 0),
		pos = UDim2.new(1, -ValueCellWidth + CellPadding, 0, 0),
		sortfunction = function()
			print(ChartHeaderNames[2], " header button pressed")
		end,
	})
	header["upperHorizontalLine"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LineWidth),
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
		LayoutOrder = 1,
	}, header)
end

function DataStoresChart:init(props)
	local currStoresData, currStoresDataCount = props.DataStoresData:getCurrentData()
	self.state = {
		dataStoresData = currStoresData,
		dataStoresDataCount = currStoresDataCount,
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
	local layoutOrder = self.props.layoutOrder

	elements["UIListLayout"] = Roact.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	elements["Header"] = constructHeader()
	local componentHeight = HeaderFrameHeight

	local datastoreBudget = self.state.dataStoresData
	local currLayoutOrder = 1
	if datastoreBudget then
		for name,data in pairs(datastoreBudget) do
			if not searchTerm or string.find(name:lower(), searchTerm:lower()) ~= nil then
				currLayoutOrder = currLayoutOrder + 1
				local row = {}
				row[name] = Roact.createElement(CellLabel,{
					text = name,
					size = UDim2.new(1,-ValueCellWidth - CellPadding - ExpandArrowPadding, 1, 0),
					pos = UDim2.new(0, CellPadding + ExpandArrowPadding, 0, 0),
				})

				row["Data"] = Roact.createElement(CellLabel,{
					text = data,
					size = UDim2.new(0, ValueCellWidth - CellPadding, 1, 0),
					pos = UDim2.new(1, -ValueCellWidth + CellPadding, 0, 0),
				})

				row["lowerHorizontalLine"] = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, LineWidth),
					Position = UDim2.new(0, 0, 1, 0),
					BackgroundColor3 = LineColor,
					BorderSizePixel = 0,
				})

				elements[name] = Roact.createElement("Frame",{
					Size = UDim2.new(1, 0, 0, EntryFrameHeight),
					BackgroundTransparency = 1,
					LayoutOrder = currLayoutOrder,
				}, row)

				componentHeight = componentHeight + EntryFrameHeight
			end
		end
	end

	return Roact.createElement("Frame", {
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		},{
			mainFrame = Roact.createElement("Frame", {
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			}, elements),

			VerticalLine = Roact.createElement("Frame", {
				Size = UDim2.new(0, LineWidth, 0, componentHeight),
				Position = UDim2.new(1, -ValueCellWidth, 0, 0),
				BackgroundColor3 = LineColor,
				BorderSizePixel = 0,
			})
		})
end

return DataConsumer(DataStoresChart, "DataStoresData")