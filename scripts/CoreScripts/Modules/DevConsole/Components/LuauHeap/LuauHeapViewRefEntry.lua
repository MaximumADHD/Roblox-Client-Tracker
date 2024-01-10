--!strict
-- This components displays top level data of the 'Unique References' view (a list of unique references found)
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent.Parent.Components
local CellLabel = require(Components.CellLabel)
local BannerButton = require(Components.BannerButton)

local LuauHeapTypes = require(script.Parent.LuauHeapTypes)

local Constants = require(script.Parent.Parent.Parent.Constants)
local LINE_WIDTH = Constants.GeneralFormatting.LineWidth
local LINE_COLOR = Constants.GeneralFormatting.LineColor

local REF_ENTRY_HEIGHT = Constants.LuauHeapFormatting.RefEntryFrameHeight
local DEPTH_INDENT = Constants.LuauHeapFormatting.DepthIndent
local VALUE_CELL_WIDTH = Constants.LuauHeapFormatting.ValueCellWidth
local CELL_PADDING = Constants.LuauHeapFormatting.CellPadding
local VALUE_PADDING = Constants.LuauHeapFormatting.ValuePadding

local LuauHeapViewPathEntry = require(script.Parent.LuauHeapViewPathEntry)

local LuauHeapViewRefEntry = Roact.PureComponent:extend("LuauHeapViewRefEntry")

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

function LuauHeapViewRefEntry:init()
	self.state = {
		expanded = false,
	}

	self.onButtonPress = function()
		self:setState(function(oldState)
			return {
				expanded = not oldState.expanded,
			}
		end)
	end
end

function LuauHeapViewRefEntry:renderValues(values)
	local children = {}
	local childSize = UDim2.new(VALUE_CELL_WIDTH, -VALUE_PADDING, 0, REF_ENTRY_HEIGHT)
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

function LuauHeapViewRefEntry:renderChildren(paths: { LuauHeapTypes.UniqueRefEntryPath })
	local children = {}

	if self.state.expanded and paths and #paths then
		for key, data in ipairs(paths) do
			children[key] = Roact.createElement(LuauHeapViewPathEntry, {
				layoutOrder = key,
				depth = 1,
				name = `Path #{key}`,
				data = data,
			})
		end
	end

	return children
end

function LuauHeapViewRefEntry:render()
	local props = self.props

	local size = props.size or UDim2.new(1, 0, 0, REF_ENTRY_HEIGHT)
	local layoutOrder = props.layoutOrder or 0
	local data = props.data :: LuauHeapTypes.UniqueRefEntry

	local values = { `{data.Count}`, `{data.Instances}` }

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
			size = UDim2.new(1, 0, 0, REF_ENTRY_HEIGHT),
			inset = 0,
			isExpanded = self.state.expanded,
			isExpandable = data.Paths and #data.Paths ~= 0,
			onButtonPress = self.onButtonPress,
			layoutOrder = -1, -- Ensures it is always displayed first
		}, {
			name = Roact.createElement(CellLabel, {
				text = data.Name,
				size = UDim2.new(nameWidth, UDim.new(1, 0)),
				pos = UDim2.new(0, CELL_PADDING, 0, 0),
			}),
			values = Roact.createFragment(self:renderValues(values)),
		}),
		children = Roact.createFragment(self:renderChildren(data.Paths)),
	})
end

return LuauHeapViewRefEntry
