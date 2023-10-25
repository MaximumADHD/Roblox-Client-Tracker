local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local ProfilerData = require(script.Parent.ProfilerDataFormatV2)
local ProfilerUtil = require(script.Parent.ProfilerUtil)

local getDurations = ProfilerUtil.getDurations
local getSourceName = ProfilerUtil.getSourceName
local getLine = ProfilerUtil.getLine
local getNativeFlag = ProfilerUtil.getNativeFlag
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

function ProfilerViewEntry:renderChildren(childData, usingV2FormatFlag: boolean)
	local children = {}
	if self.state.expanded then
		local percentageRatio = self.props.percentageRatio
		local totalDuration = getDurations(self.props.data, self.props.nodeId, usingV2FormatFlag)
		local childDepth = self.props.depth + 1

		if usingV2FormatFlag then
			local rootData = self.props.data :: ProfilerData.RootDataFormat

			if childData then
				for functionId, nodeId in pairs(childData) do
					local node = rootData.Nodes[nodeId]
					local func = rootData.Functions[functionId]
					local childTotalDuration = getDurations(rootData, nodeId, usingV2FormatFlag)
					children[functionId] = Roact.createElement(ProfilerViewEntry, {
						layoutOrder = (totalDuration - childTotalDuration) * 1e6, -- Sort by reverse duration
						depth = childDepth,
						data = rootData,
						nodeId = nodeId,
						functionId = functionId,
						nodeName = func.Name,
						usingV2FormatFlag = usingV2FormatFlag,
						percentageRatio = percentageRatio
					})
				end
			elseif self.props.depth == 0 then
				-- Since this is the "root node", childData should be nil, instead generate children from Category root IDs
				assert(childData == nil)

				for index, category in rootData.Categories do
					local node = rootData.Nodes[category.NodeId]
					local childTotalDuration = getDurations(rootData, category.NodeId, usingV2FormatFlag)

					children[index] = Roact.createElement(ProfilerViewEntry, {
						layoutOrder = (totalDuration - childTotalDuration) * 1e6, -- Sort by reverse duration
						depth = childDepth,
						data = rootData,
						nodeId = category.NodeId,
						functionId = nil,
						nodeName = category.Name,
						usingV2FormatFlag = usingV2FormatFlag,
						percentageRatio = percentageRatio
					})
				end
			end
		elseif childData then
			for key, data in pairs(childData) do
				children[key] = Roact.createElement(ProfilerViewEntry, {
					layoutOrder = (totalDuration - data.TotalDuration) * 1e6, -- Sort by reverse duration
					depth = childDepth,
					data = data,
					nodeId = 0,
					functionId = 0,
					usingV2FormatFlag = usingV2FormatFlag,
					percentageRatio = percentageRatio
				})
			end
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

	local usingV2FormatFlag = props.usingV2FormatFlag

	local size = props.size or UDim2.new(1, 0, 0, ENTRY_HEIGHT)
	local depth = props.depth
	local layoutOrder = props.layoutOrder or 0
	local offset = depth * DEPTH_INDENT
	local percentageRatio = props.percentageRatio
	local data = props.data

	local nodeId = props.nodeId
	local functionId = props.functionId
	local func = if usingV2FormatFlag then data.Functions[functionId] else nil
	local node = if usingV2FormatFlag then data.Nodes[nodeId] else nil

	local totalDuration, selfDuration = getDurations(data, nodeId, usingV2FormatFlag)

	local childData = standardizeChildren(data, node, usingV2FormatFlag)

	local isNative = getNativeFlag(data, func, usingV2FormatFlag)

	local totalDurationText, selfDurationText
	if percentageRatio then
		if percentageRatio == 0 then
			totalDurationText = "N/A"
			selfDurationText = "N/A"
		else
			totalDurationText = string.format(PERCENT_FORMAT, totalDuration / percentageRatio)
			selfDurationText = string.format(PERCENT_FORMAT, selfDuration / percentageRatio)
		end
	else
		-- ScriptProfiler returns duration in seconds, convert to milliseconds
		totalDurationText = string.format(MS_FORMAT, totalDuration * 1000)
		selfDurationText = string.format(MS_FORMAT, selfDuration * 1000)
	end

	local values = {totalDurationText, selfDurationText}

	local defaultName = if depth == 0 then ROOT_LABEL else ANON_LABEL
	local name = if usingV2FormatFlag then props.nodeName else data.Name
	name = if not name or #name == 0 then defaultName else name

	if FFlagScriptProfilerNativeFrames and isNative then
		name = name .. " <native>"
	end

	local sourceName = getSourceName(data, func, usingV2FormatFlag)
	sourceName = if not sourceName or #sourceName == 0 then name else sourceName

	local hoverText = sourceName :: string
	local lineNumber = getLine(data, func, usingV2FormatFlag)
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
			isExpandable = (childData and next(childData) ~= nil) or depth == 0,
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
		children = Roact.createFragment(self:renderChildren(childData, usingV2FormatFlag))
	})
end

return ProfilerViewEntry
