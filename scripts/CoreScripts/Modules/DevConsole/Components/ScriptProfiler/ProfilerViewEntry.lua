local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local ProfilerData = require(script.Parent.ProfilerDataFormatV2)
local ProfilerUtil = require(script.Parent.ProfilerUtil)

local getDurations = ProfilerUtil.getDurations
local getNativeFlag = ProfilerUtil.getNativeFlag
local getPluginFlag = ProfilerUtil.getPluginFlag
local standardizeChildren = ProfilerUtil.standardizeChildren

local Components = script.Parent.Parent.Parent.Components
local CellLabel = require(Components.CellLabel)
local BannerButton = require(Components.BannerButton)
local Tooltip = require(Components.Tooltip)

local Actions = script.Parent.Parent.Parent.Actions
local SetScriptProfilerRoot = require(Actions.SetScriptProfilerRoot)

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

local FFlagScriptProfilerRememberExpandedNodes = game:DefineFastFlag("ScriptProfilerRememberExpandedNodes2", false)
local FFlagScriptProfilerPluginAnnotation = game:DefineFastFlag("ScriptProfilerPluginAnnotation", false)

local ProfilerViewEntryComponent = Roact.PureComponent:extend("ProfilerViewEntry")

local function mapDispatchToProps(dispatch)
	return {
		dispatchSetScriptProfilerRoot = function(
			nodeId: ProfilerData.NodeId,
			funcId: ProfilerData.FunctionId,
			nodeName: string?
		)
			dispatch(SetScriptProfilerRoot(nodeId, funcId, nodeName))
		end,
	}
end

local ProfilerViewEntry = RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(ProfilerViewEntryComponent)

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

local function getNodeName(props: any): string
	local depth = props.depth
	local data = props.data :: ProfilerData.RootDataFormat
	local functionId = props.functionId

	local func = data.Functions[functionId]

	local defaultName = if depth == 0 and functionId == 0 then ROOT_LABEL else ANON_LABEL
	local name = props.nodeName
	name = if not name or #name == 0 then defaultName else name

	return name
end

function ProfilerViewEntryComponent:init()
	self.state = {
		expanded = self.props.depth == 0
			or (FFlagScriptProfilerRememberExpandedNodes and self.props.expandedNodes[self.props.nodeId]),
		showTooltip = false,
		tooltipPos = UDim2.fromOffset(0, 0),
	}

	self.onButtonPress = function()
		if FFlagScriptProfilerRememberExpandedNodes then
			self.props.expandedNodes[self.props.nodeId] = not self.state.expanded
		end

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

	self.onMouse2Click = function()
		self.props.dispatchSetScriptProfilerRoot(self.props.nodeId, self.props.functionId, getNodeName(self.props))
	end
end

function ProfilerViewEntryComponent:renderChildren(childData)
	local children = {}
	if self.state.expanded then
		local percentageRatio = self.props.percentageRatio
		local totalDuration = getDurations(self.props.data, self.props.nodeId)
		local childDepth = self.props.depth + 1
		local average = self.props.average
		local searchTerm = self.props.searchTerm
		local searchFilter = self.props.searchFilter
		local showPlugins = self.props.showPlugins
		local showGC = self.props.showGC
		local gcNodeOffsets = self.props.gcNodeOffsets
		local expandedNodes = self.props.expandedNodes

		local rootData = self.props.data :: ProfilerData.RootDataFormat
		local gcFuncId = rootData.GCFuncId

		if childData then
			for functionId, nodeId in pairs(childData) do
				if #searchFilter > 0 and not searchFilter[nodeId] then
					continue
				end

				if not showGC and functionId == gcFuncId then
					continue
				end

				local node = rootData.Nodes[nodeId]
				local func = rootData.Functions[functionId]

				if not showPlugins and getPluginFlag(rootData, func) then
					continue
				end

				local childTotalDuration = getDurations(rootData, nodeId)
				children[functionId] = Roact.createElement(ProfilerViewEntry, {
					layoutOrder = (totalDuration - childTotalDuration) * 1e6, -- Sort by reverse duration
					depth = childDepth,
					data = rootData,
					nodeId = nodeId,
					functionId = functionId,
					nodeName = func.Name,
					average = average,
					percentageRatio = percentageRatio,
					searchTerm = searchTerm,
					searchFilter = searchFilter,
					showPlugins = showPlugins,
					showGC = showGC,
					gcNodeOffsets = gcNodeOffsets,
					expandedNodes = expandedNodes,
				})
			end
		elseif self.props.nodeId == 0 then
			-- Since this is the "root node", childData should be nil, instead generate children from Category root IDs
			assert(childData == nil)

			for index, category in rootData.Categories do
				if #searchFilter > 0 and not searchFilter[category.NodeId] then
					continue
				end

				local node = rootData.Nodes[category.NodeId]
				local childTotalDuration = getDurations(rootData, category.NodeId)

				local pluginOffset = self.props.pluginOffsets[index]
				local pluginGCOffset = self.props.pluginGCOffsets[index]

				if not showPlugins then
					childTotalDuration -= pluginOffset

					if showGC then
						childTotalDuration -= pluginGCOffset
					end
				end

				children[index] = Roact.createElement(ProfilerViewEntry, {
					layoutOrder = (totalDuration - childTotalDuration) * 1e6, -- Sort by reverse duration
					depth = childDepth,
					data = rootData,
					nodeId = category.NodeId,
					functionId = nil,
					nodeName = category.Name,
					average = average,
					percentageRatio = percentageRatio,
					searchTerm = searchTerm,
					searchFilter = searchFilter,
					showPlugins = showPlugins,
					pluginOffset = pluginOffset,
					pluginGCOffset = pluginGCOffset,
					showGC = showGC,
					gcNodeOffsets = gcNodeOffsets,
					expandedNodes = expandedNodes,
				})
			end
		end
	end
	return children
end

function ProfilerViewEntryComponent:renderValues(values)
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

function ProfilerViewEntryComponent:render()
	local props = self.props

	local size = props.size or UDim2.new(1, 0, 0, ENTRY_HEIGHT)
	local depth = props.depth
	local layoutOrder = props.layoutOrder or 0
	local offset = depth * DEPTH_INDENT
	local percentageRatio = props.percentageRatio
	local data = props.data :: ProfilerData.RootDataFormat
	local showPlugins = props.showPlugins
	local showGC = props.showGC

	local nodeId = props.nodeId
	local functionId = props.functionId
	local func = data.Functions[functionId]
	local node = data.Nodes[nodeId]

	local totalDuration, selfDuration = getDurations(data, nodeId)

	totalDuration /= self.props.average
	selfDuration /= self.props.average

	local childData = standardizeChildren(data, node)

	if not showPlugins then
		if nodeId == 0 then
			local pluginOffsets = self.props.pluginOffsets
			totalDuration -= pluginOffsets.Total or 0

			if showGC then
				totalDuration -= self.props.pluginGCOffsets.Total or 0
			end
		else
			totalDuration -= self.props.pluginOffset or 0

			if showGC then
				totalDuration -= self.props.pluginGCOffset or 0
			end
		end
	end

	if not showGC then
		local gcNodeOffsets = props.gcNodeOffsets

		if nodeId == 0 then
			totalDuration -= gcNodeOffsets.Total or 0
		else
			totalDuration -= gcNodeOffsets[nodeId] or 0
		end
	end

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

	local values = { totalDurationText, selfDurationText }

	local name = getNodeName(props)

	local hoverText = ProfilerUtil.getSourceLocationString(data, func, name)

	local isNative = getNativeFlag(data, func)
	local isPlugin = getPluginFlag(data, func)

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
			isExpandable = (childData and next(childData) ~= nil) or depth == 0,
			onButtonPress = self.onButtonPress,
			onMouseEnter = self.onMouseEnter,
			onMouseLeave = self.onMouseLeave,
			onMouseMove = self.onMouseMove,
			onMouse2Click = self.onMouse2Click,
			layoutOrder = -1, -- Ensures it is always displayed first
		}, {
			name = Roact.createElement(CellLabel, {
				text = name,
				size = UDim2.new(nameWidth, UDim.new(1, 0)),
				pos = UDim2.new(0, CELL_PADDING + offset, 0, 0),
			}),
			values = Roact.createFragment(self:renderValues(values)),
		}),
		children = Roact.createFragment(self:renderChildren(childData)),
	})
end

return ProfilerViewEntry
