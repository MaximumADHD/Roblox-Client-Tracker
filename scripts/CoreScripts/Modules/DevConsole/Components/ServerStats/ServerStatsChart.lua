local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent.Parent.Components
local DataConsumer = require(Components.DataConsumer)
local HeaderButton = require(Components.HeaderButton)
local CellLabel = require(Components.CellLabel)

local Constants = require(script.Parent.Parent.Parent.Constants)
local LineWidth = Constants.GeneralFormatting.LineWidth
local LineColor = Constants.GeneralFormatting.LineColor
local ChartHeaderNames = Constants.ServerStatsFormatting.ChartHeaderNames
local ValueCellWidth = Constants.ServerStatsFormatting.ValueCellWidth
local CellPadding = Constants.ServerStatsFormatting.CellPadding
local ExpandArrowPadding = Constants.ServerStatsFormatting.ExpandArrowPadding
local HeaderFrameHeight = Constants.ServerStatsFormatting.HeaderFrameHeight
local EntryFrameHeight = Constants.ServerStatsFormatting.EntryFrameHeight

local ServerStats = Roact.Component:extend("ServerStats")

function ServerStats:init()
	local currStatsData, currStatsDataCount = self.props.ServerStatsData:getCurrentData()
	self.state = {
		serverStatsData = currStatsData,
		serverStatsDataCount = currStatsDataCount,
	}
end

function ServerStats:didMount()
	self.statsConnector = self.props.ServerStatsData:Signal():Connect(function(data, count)
		self:setState({
			serverStatsData = data,
			serverStatsDataCount = count
		})
	end)
end

function ServerStats:willUnmount()
	self.statsConnector:Disconnect()
	self.statsConnector = nil
end

function ServerStats:render()
	local elements = {}
	local layoutOrder = self.props.layoutOrder
	local serverStatsData = self.state.serverStatsData

	elements["UIListLayout"] = Roact.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	elements["Header"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, HeaderFrameHeight),
		BackgroundTransparency = 1,
	}, {
		[ChartHeaderNames[1]] = Roact.createElement(HeaderButton,{
			text = ChartHeaderNames[1],
			size = UDim2.new(1, -ValueCellWidth - CellPadding - ExpandArrowPadding, 1, 0),
			pos = UDim2.new(0, CellPadding + ExpandArrowPadding, 0, 0),
			sortfunction = function()
				print("Name button in header")
			end,
		}),
		[ChartHeaderNames[2]] = Roact.createElement(HeaderButton,{
			text = ChartHeaderNames[2],
			size = UDim2.new(0, ValueCellWidth - CellPadding, 1, 0),
			pos = UDim2.new(1, -ValueCellWidth + CellPadding, 0, 0),
			sortfunction = function()
				print("Name button in header")
			end,
		}),
		upperHorizontalLine = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, LineWidth),
			BackgroundColor3 = LineColor,
		}),
		lowerHorizontalLine = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, LineWidth),
			Position = UDim2.new(0, 0, 1, 0),
			BackgroundColor3 = LineColor,
		}),
	})

	local componentHeight = HeaderFrameHeight

	-- insert all stats entries
	local currLayoutIndex = 1
	if serverStatsData then
		for name,data in pairs(serverStatsData) do
			currLayoutIndex = currLayoutIndex + 1

			local row = {}
			row[name] = Roact.createElement(CellLabel,{
				text = name,
				size = UDim2.new(1, -ValueCellWidth - CellPadding - ExpandArrowPadding, 1, 0),
				pos = UDim2.new(0, CellPadding + ExpandArrowPadding, 0, 0),
			})

			row["Data"] = Roact.createElement(CellLabel,{
				text =string.format("%.3f",data),
				size = UDim2.new(0, ValueCellWidth - CellPadding, 1, 0),
				pos = UDim2.new(1, -ValueCellWidth + CellPadding, 0, 0),
			})

			row["lowerHorizontalLine"] = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, LineWidth),
				Position = UDim2.new(0, 0, 1, 0),
				BackgroundColor3 = LineColor,
			})

			elements[name] = Roact.createElement("Frame",{
				Size = UDim2.new(1, 0, 0, EntryFrameHeight),
				BackgroundTransparency = 1,
				LayoutOrder = currLayoutIndex,
			}, row)

			componentHeight = componentHeight + EntryFrameHeight
		end
	end

	-- layer over a vertical line to visually separate name and data
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
		})
	})
end

return DataConsumer(ServerStats, "ServerStatsData")