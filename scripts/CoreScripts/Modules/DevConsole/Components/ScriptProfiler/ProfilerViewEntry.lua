local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent.Parent.Components
local CellLabel = require(Components.CellLabel)
local BannerButton = require(Components.BannerButton)
local Tooltip = require(Components.Tooltip)

local Constants = require(script.Parent.Parent.Parent.Constants)
local LINE_WIDTH = Constants.GeneralFormatting.LineWidth
local LINE_COLOR = Constants.GeneralFormatting.LineColor

local ENTRY_HEIGHT = Constants.GeneralFormatting.EntryFrameHeight
local DEPTH_INDENT = Constants.ScriptProfilerFormatting.DepthIndent
local VALUE_CELL_WIDTH = Constants.ScriptProfilerFormatting.ValueCellWidth
local CELL_PADDING = Constants.ScriptProfilerFormatting.CellPadding
local VALUE_PADDING = Constants.ScriptProfilerFormatting.ValuePadding

local MS_FORMAT = "%.3f"
local PERCENT_FORMAT = "%.3f%%"
local TOOLTIP_FORMAT = "%s:%s"

local ROOT_LABEL = "<root>"
local ANON_LABEL = "<anonymous>"

local ProfilerViewEntry = Roact.PureComponent:extend("ProfilerViewEntry")

local FFlagScriptProfilerNativeFrames = game:DefineFastFlag("ScriptProfilerNativeFrames", false)

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
			pos = props.pos
		}),
		LeftBorder = Roact.createElement("Frame", {
			Size = UDim2.new(UDim.new(0, LINE_WIDTH), props.size.Y),
			Position = UDim2.fromOffset(-VALUE_PADDING, 0) + props.pos,
			AnchorPoint = Vector2.new(0, 0),
			BackgroundColor3 = LINE_COLOR,
			BorderSizePixel = 0
		})
	})
end

function ProfilerViewEntry:init()

	self.state = {
		expanded = self.props.depth == 0,
		showTooltip = false,
		tooltipPos = UDim2.fromOffset(0, 0)
	}

	self.onButtonPress = function ()
		self:setState(function (_)
			return {
				expanded = not self.state.expanded
			}
		end)
	end

	self.onMouseEnter = function (_, x, y)
		self:setState({
			showTooltip = true,
			tooltipPos = UDim2.fromOffset(x, y)
		})
	end

	self.onMouseMove = function (_, x, y)
		self:setState({
			showTooltip = true,
			tooltipPos = UDim2.fromOffset(x, y)
		})
	end

	self.onMouseLeave = function ()
		self:setState({
			showTooltip = false
		})
	end

end

function ProfilerViewEntry:standardizeChildren(data)
	local childData = {}
	local children = data.Children
	if children then
		for k, v in pairs(children) do
			childData["k" .. k] = v
		end
	end
	for i, v in ipairs(data) do
		childData["i" .. i] = v
	end
	return childData
end

function ProfilerViewEntry:renderChildren(childData)
	local children = {}
	if self.state.expanded and childData then
		local percentageRatio = self.props.percentageRatio
		local totalDuration = self.props.data.TotalDuration
		local childDepth = self.props.depth + 1
		for key, data in pairs(childData) do
			children[key] = Roact.createElement(ProfilerViewEntry, {
				layoutOrder = (totalDuration - data.TotalDuration) * 1e6, -- Sort by reverse duration
				depth = childDepth,
				data = data,
				percentageRatio = percentageRatio
			})
		end
	end
	return children
end

function ProfilerViewEntry:renderValues(values)
	local children = {}
	local childSize = UDim2.new(VALUE_CELL_WIDTH, -VALUE_PADDING, 0, ENTRY_HEIGHT)
	local childPosition = UDim2.new(1 - VALUE_CELL_WIDTH * #values, VALUE_PADDING, 0, 0)
	for i, value in ipairs(values) do
		local key = tostring(i)
		children[key] = Roact.createElement(BorderedCellLabel, {
			text = tostring(value),
			size = childSize,
			pos = childPosition + UDim2.fromScale(VALUE_CELL_WIDTH * (i-1), 0)
		})
	end
	return children
end

function ProfilerViewEntry:render()

	local props = self.props

	local size = props.size or UDim2.new(1, 0, 0, ENTRY_HEIGHT)
	local depth = props.depth
	local layoutOrder = props.layoutOrder or 0
	local offset = depth * DEPTH_INDENT
	local percentageRatio = props.percentageRatio
	local data = props.data
	local childData = self:standardizeChildren(data)
	local totalDuration = data.TotalDuration
	local selfDuration = data.Duration
	local isNative = data.IsNative or false

	if percentageRatio then
		if percentageRatio == 0 then
			totalDuration = "N/A"
			selfDuration = "N/A"
		else
			totalDuration = string.format(PERCENT_FORMAT, totalDuration / percentageRatio)
			selfDuration = string.format(PERCENT_FORMAT, selfDuration / percentageRatio)
		end
	else
		-- ScriptProfiler returns duration in seconds, convert to milliseconds
		totalDuration = string.format(MS_FORMAT, totalDuration * 1000)
		selfDuration = string.format(MS_FORMAT, selfDuration * 1000)
	end

	local values = {totalDuration, selfDuration}

	local defaultName = if depth == 0 then ROOT_LABEL else ANON_LABEL
	local name = if not data.Name or #data.Name == 0 then defaultName else data.Name
	local sourceName = if not data.Source or #data.Source == 0 then name else data.Source

	if FFlagScriptProfilerNativeFrames and isNative then
		name = name .. " <native>"
	end

	local hoverText = sourceName
	local lineNumber = data.Line
	if lineNumber and lineNumber >= 1 then
		hoverText = string.format(TOOLTIP_FORMAT, sourceName, tostring(lineNumber))
	end

	local nameWidth = UDim.new(1 - VALUE_CELL_WIDTH * #values, -offset)

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		AutomaticSize = Enum.AutomaticSize.Y
	}, {

		tooltip = if self.state.showTooltip then Roact.createElement(Tooltip, {
			text = hoverText,
			pos = self.state.tooltipPos
		}) else nil,

		layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			SortOrder = Enum.SortOrder.LayoutOrder
		}),

		button = Roact.createElement(BannerButton, {
			size = UDim2.new(1, 0, 0, ENTRY_HEIGHT),
			inset = offset,
			isExpanded = self.state.expanded,
			isExpandable = next(childData) ~= nil,
			onButtonPress = self.onButtonPress,
			onMouseEnter = self.onMouseEnter,
			onMouseLeave = self.onMouseLeave,
			onMouseMove = self.onMouseMove,
			layoutOrder = -1, -- Ensures it is always displayed first
		}, {
			name = Roact.createElement(CellLabel, {
				text = name,
				size = UDim2.new(nameWidth, UDim.new(1, 0)),
				pos = UDim2.new(0, CELL_PADDING + offset, 0, 0),
			}),
			values = Roact.createFragment(self:renderValues(values))
		}),
		children = Roact.createFragment(self:renderChildren(childData))
	})
end

return ProfilerViewEntry
