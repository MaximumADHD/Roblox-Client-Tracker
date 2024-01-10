--!strict
-- This component is a simple 3-part entry that's used in 'Object Tags', 'Mmeory Categories' and 'Object Categories' views
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent.Parent.Components
local CellLabel = require(Components.CellLabel)
local BannerButton = require(Components.BannerButton)

local LuauHeapTypes = require(script.Parent.LuauHeapTypes)

local Constants = require(script.Parent.Parent.Parent.Constants)
local LINE_WIDTH = Constants.GeneralFormatting.LineWidth
local LINE_COLOR = Constants.GeneralFormatting.LineColor

local STAT_ENTRY_HEIGHT = Constants.LuauHeapFormatting.StatEntryFrameHeight
local DEPTH_INDENT = Constants.LuauHeapFormatting.DepthIndent
local VALUE_CELL_WIDTH = Constants.LuauHeapFormatting.ValueCellWidth
local CELL_PADDING = Constants.LuauHeapFormatting.CellPadding
local VALUE_PADDING = Constants.LuauHeapFormatting.ValuePadding

local LuauHeapViewStatEntry = Roact.PureComponent:extend("LuauHeapViewStatEntry")

type BorderedCellLabelProps = {
	text: string,
	size: UDim2,
	pos: UDim2,
}

local function BorderedCellLabel(props: BorderedCellLabelProps)
	return Roact.createFragment({
		Label = Roact.createElement(CellLabel, {
			text = props.text,
			size = props.size,
			pos = props.pos,
			richText = true,
		}),
		LeftBorder = Roact.createElement("Frame", {
			Size = UDim2.new(UDim.new(0, LINE_WIDTH), props.size.Y),
			Position = UDim2.fromOffset(-VALUE_PADDING, 0) + props.pos,
			AnchorPoint = Vector2.new(0, 0),
			BackgroundColor3 = LINE_COLOR,
			BorderSizePixel = 0,
		}),
	})
end

function LuauHeapViewStatEntry:renderValues(values)
	local children = {}
	local childSize = UDim2.new(VALUE_CELL_WIDTH, -VALUE_PADDING, 0, STAT_ENTRY_HEIGHT)
	local childPosition = UDim2.new(1 - VALUE_CELL_WIDTH * #values, VALUE_PADDING, 0, 0)
	for i, value in values do
		local key = tostring(i)
		children[key] = Roact.createElement(BorderedCellLabel, {
			text = tostring(value),
			size = childSize,
			pos = childPosition + UDim2.fromScale(VALUE_CELL_WIDTH * (i - 1), 0),
		})
	end
	return children
end

function LuauHeapViewStatEntry:render()
	local props = self.props

	local size = props.size or UDim2.new(1, 0, 0, STAT_ENTRY_HEIGHT)
	local layoutOrder = props.layoutOrder or 0
	local data = props.data :: LuauHeapTypes.HeapReportStatsEntry
	local compare = props.compare :: LuauHeapTypes.HeapReportStatsEntry?

	local sizeStr = string.format("%.0f", data.Size)
	local countStr = string.format("%.0f", data.Count)

	if compare then
		if compare.Size ~= data.Size then
			sizeStr = string.format(
				'%d <font color="#%s">(%s%d)</font>',
				data.Size,
				if compare.Size > data.Size then "0f0" else "f00",
				if compare.Size > data.Size then "" else "+",
				data.Size - compare.Size
			)
		end

		if compare.Count ~= data.Count then
			countStr = string.format(
				'%d <font color="#%s">(%s%d)</font>',
				data.Count,
				if compare.Count > data.Count then "0f0" else "f00",
				if compare.Count > data.Count then "" else "+",
				data.Count - compare.Count
			)
		end
	end

	local values = { sizeStr, countStr }

	local nameWidth = UDim.new(1 - VALUE_CELL_WIDTH * #values, 0)

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		AutomaticSize = Enum.AutomaticSize.Y,
	}, {
		layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		button = Roact.createElement(BannerButton, {
			size = UDim2.new(1, 0, 0, STAT_ENTRY_HEIGHT),
			inset = 0,
			isExpanded = false,
			isExpandable = false,
			layoutOrder = -1, -- Ensures it is always displayed first
		}, {
			name = Roact.createElement(CellLabel, {
				text = data.Name,
				size = UDim2.new(nameWidth, UDim.new(1, 0)),
				pos = UDim2.new(0, CELL_PADDING, 0, 0),
			}),
			values = Roact.createFragment(self:renderValues(values)),
		}),
	})
end

return LuauHeapViewStatEntry
