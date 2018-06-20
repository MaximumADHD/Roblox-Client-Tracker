local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Parent.Constants)
local LineWidth = Constants.GeneralFormatting.LineWidth
local LineColor = Constants.GeneralFormatting.LineColor
local DepthIndent = Constants.MemoryFormatting.DepthIndent
local ValueCellWidth = Constants.MemoryFormatting.ValueCellWidth
local CellPadding = Constants.MemoryFormatting.CellPadding
local EntryFrameHeight = Constants.MemoryFormatting.EntryFrameHeight

local CellLabel = require(script.Parent.Parent.Parent.Components.CellLabel)
local ExpandableRow = require(script.Parent.Parent.Parent.Components.ExpandableRow)
local LineGraph = require(script.Parent.Parent.Parent.Components.LineGraph)

local StatsTreeComponent = Roact.Component:extend("StatsTreeComponent")

function StatsTreeComponent:init()
	self.state = {
		isExpanded = false
	}
end

function StatsTreeComponent:render()
	local stat = self.props.stat -- this will be the stat item we are rendering
	local depth = self.props.depth

	local value = stat:getValue()
	local id = stat:getId() or "missing ID"

	local offset = DepthIndent*depth

	local componentHeight = EntryFrameHeight
	if self.state.isExpanded then
		-- insert graph here for expand later
		componentHeight = componentHeight + Constants.GeneralFormatting.LineGraphHeight
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, componentHeight),
		BackgroundTransparency = 1,
		BackgroundColor3 = LineColor,
	}, {
		id = Roact.createElement(CellLabel, {
			text = id,
			size = UDim2.new(1, -offset - ValueCellWidth + CellPadding, 1, 0),
			pos = UDim2.new(0, offset + CellPadding, 0, 0),
		}),

		value = Roact.createElement(CellLabel, {
			text = string.format("%.3f",value),
			size = UDim2.new(0, ValueCellWidth - CellPadding, 1, 0),
			pos = UDim2.new(1, -ValueCellWidth + CellPadding, 0, 0),
		}),

		horizonal1 = Roact.createElement("Frame", {
			Size = UDim2.new(1, -offset , 0, LineWidth),
			Position = UDim2.new(0, offset, 0, 0),
		}),

		horizonal2 = Roact.createElement("Frame", {
			Size = UDim2.new(1, -offset, 0, LineWidth),
			Position = UDim2.new(0, offset, 1, 0),
		}),

		vertical = Roact.createElement("Frame",{
			Size = UDim2.new(0, 1, 1, 0),
			Position = UDim2.new(1, -ValueCellWidth, 0, 0),
		}),

		rowButton = Roact.createElement(ExpandableRow,{
			size = UDim2.new(1, 0, 0, EntryFrameHeight),
			pos = UDim2.new(0, offset, 0, 0),
			ifNowExpanded = function(isNowExpanded)
				self:setState({
					isExpanded = isNowExpanded
				})
			end,
		}),

		graph = self.state.isExpanded and Roact.createElement(LineGraph)
	})
end

return StatsTreeComponent