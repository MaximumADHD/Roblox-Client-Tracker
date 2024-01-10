--!strict
-- This component displays individual paths to objects in 'Unique References' view
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent.Parent.Components
local CellLabel = require(Components.CellLabel)
local BannerButton = require(Components.BannerButton)

local LuauHeapTypes = require(script.Parent.LuauHeapTypes)

local Constants = require(script.Parent.Parent.Parent.Constants)
local LINE_WIDTH = Constants.GeneralFormatting.LineWidth
local LINE_COLOR = Constants.GeneralFormatting.LineColor

local PATH_ENTRY_HEIGHT = Constants.LuauHeapFormatting.PathEntryFrameHeight
local DEPTH_INDENT = Constants.LuauHeapFormatting.DepthIndent
local VALUE_CELL_WIDTH = Constants.LuauHeapFormatting.ValueCellWidth
local CELL_PADDING = Constants.LuauHeapFormatting.CellPadding
local VALUE_PADDING = Constants.LuauHeapFormatting.ValuePadding

local LuauHeapViewPathEntry = Roact.PureComponent:extend("LuauHeapViewPathEntry")

function LuauHeapViewPathEntry:init()
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

function LuauHeapViewPathEntry:renderChildren(paths: LuauHeapTypes.UniqueRefEntryPath)
	local children = {}

	local inset = 2 * DEPTH_INDENT + CELL_PADDING

	if self.state.expanded and paths and #paths then
		for key, data in ipairs(paths) do
			children[key] = Roact.createElement(CellLabel, {
				text = data,
				layoutOrder = key,
				size = UDim2.new(UDim.new(1, -inset), UDim.new(0, PATH_ENTRY_HEIGHT)),
				pos = UDim2.new(0, inset, 0, 0),
			})
		end
	end

	return children
end

function LuauHeapViewPathEntry:render()
	local props = self.props

	local size = props.size or UDim2.new(1, 0, 0, PATH_ENTRY_HEIGHT)
	local layoutOrder = props.layoutOrder or 0
	local name = props.name
	local data = props.data :: LuauHeapTypes.UniqueRefEntryPath

	local offset = props.depth * DEPTH_INDENT

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
			size = UDim2.new(1, 0, 0, PATH_ENTRY_HEIGHT),
			inset = offset,
			isExpanded = self.state.expanded,
			isExpandable = #data ~= 0,
			onButtonPress = self.onButtonPress,
			layoutOrder = -1, -- Ensures it is always displayed first
		}, {
			name = Roact.createElement(CellLabel, {
				text = name,
				size = UDim2.new(UDim.new(1, -offset), UDim.new(1, 0)),
				pos = UDim2.new(0, CELL_PADDING + offset, 0, 0),
			}),
		}),
		children = Roact.createFragment(self:renderChildren(data)),
	})
end

return LuauHeapViewPathEntry
