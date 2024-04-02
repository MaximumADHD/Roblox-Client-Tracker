local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local ProfilerUtil = require(script.Parent.ProfilerUtil)

local getDurations = ProfilerUtil.getDurations
local getSourceName = ProfilerUtil.getSourceName
local getLine = ProfilerUtil.getLine
local getNativeFlag = ProfilerUtil.getNativeFlag
local getPluginFlag = ProfilerUtil.getPluginFlag
local standardizeChildren = ProfilerUtil.standardizeChildren

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

local ROOT_LABEL = "<root>"
local ANON_LABEL = "<anonymous>"

local ProfilerFunctionViewEntry = Roact.PureComponent:extend("ProfilerFunctionViewEntry")

local FFlagScriptProfilerFunctionsViewUseSourceInfoForAnon =
	game:DefineFastFlag("ScriptProfilerFunctionsViewUseSourceInfoForAnon", false)
local FFlagScriptProfilerPluginAnnotation = game:DefineFastFlag("ScriptProfilerPluginAnnotation", false)
local FFlagScriptProfilerHideGCOverhead = game:DefineFastFlag("ScriptProfilerHideGCOverhead2", false)

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

function ProfilerFunctionViewEntry:init()
	self.state = {
		expanded = self.props.depth == 0,
		showTooltip = false,
		tooltipPos = UDim2.fromOffset(0, 0),
	}

	self.onButtonPress = function()
		self:setState(function(_)
			return {
				expanded = not self.state.expanded,
			}
		end)
	end

	self.onMouseEnter = function(_, x, y)
		self:setState({
			showTooltip = true,
			tooltipPos = UDim2.fromOffset(x, y),
		})
	end

	self.onMouseMove = function(_, x, y)
		self:setState({
			showTooltip = true,
			tooltipPos = UDim2.fromOffset(x, y),
		})
	end

	self.onMouseLeave = function()
		self:setState({
			showTooltip = false,
		})
	end
end

function ProfilerFunctionViewEntry:renderValues(values)
	local children = {}
	local childSize = UDim2.new(VALUE_CELL_WIDTH, -VALUE_PADDING, 0, ENTRY_HEIGHT)
	local childPosition = UDim2.new(1 - VALUE_CELL_WIDTH * #values, VALUE_PADDING, 0, 0)
	for i, value in ipairs(values) do
		local key = tostring(i)
		children[key] = Roact.createElement(BorderedCellLabel, {
			text = tostring(value),
			size = childSize,
			pos = childPosition + UDim2.fromScale(VALUE_CELL_WIDTH * (i - 1), 0),
		})
	end
	return children
end

function ProfilerFunctionViewEntry:render()
	local props = self.props

	local size = props.size or UDim2.new(1, 0, 0, ENTRY_HEIGHT)
	local layoutOrder = props.layoutOrder or 0
	local offset = 0
	local percentageRatio = props.percentageRatio
	local data = props.data

	local functionId = props.functionId
	local func = data.Functions[functionId]

	local totalDuration = func.TotalDuration / self.props.average

	if FFlagScriptProfilerHideGCOverhead then
		totalDuration -= self.props.gcOffset or 0
	end

	local isNative = getNativeFlag(data, func)
	local isPlugin = getPluginFlag(data, func)

	local totalDurationText
	if percentageRatio then
		if percentageRatio == 0 then
			totalDurationText = "N/A"
		else
			totalDurationText = string.format(PERCENT_FORMAT, totalDuration / percentageRatio)
		end
	else
		-- ScriptProfiler returns duration in seconds, convert to milliseconds
		totalDurationText = string.format(MS_FORMAT, totalDuration * 1000)
	end

	local values = { totalDurationText }

	local defaultName = ANON_LABEL
	local name = props.nodeName
	name = if not name or #name == 0 then defaultName else name

	local hoverText = ProfilerUtil.getSourceLocationString(data, func, name)

	if FFlagScriptProfilerFunctionsViewUseSourceInfoForAnon and name == defaultName then
		name = hoverText
		hoverText = ""
	end

	if FFlagScriptProfilerPluginAnnotation and isPlugin then
		name = name .. " <plugin>"
	end

	if isNative then
		name = name .. " <native>"
	end

	local nameWidth = UDim.new(1 - VALUE_CELL_WIDTH * #values, -offset)

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		AutomaticSize = Enum.AutomaticSize.Y,
	}, {

		tooltip = if self.state.showTooltip
			then Roact.createElement(Tooltip, {
				text = hoverText,
				pos = self.state.tooltipPos,
			})
			else nil,

		layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		button = Roact.createElement(BannerButton, {
			size = UDim2.new(1, 0, 0, ENTRY_HEIGHT),
			inset = offset,
			isExpanded = self.state.expanded,
			isExpandable = false,
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
			values = Roact.createFragment(self:renderValues(values)),
		}),
	})
end

return ProfilerFunctionViewEntry
