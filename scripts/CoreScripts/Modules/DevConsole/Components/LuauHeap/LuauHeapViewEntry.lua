--!strict
-- For the 'Graph' tab view, this component displays the shortest paths to where memory is stored going from the root of the engine Luau references (as a tree)
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent.Parent.Components
local CellLabel = require(Components.CellLabel)
local BannerButton = require(Components.BannerButton)
local Tooltip = require(Components.Tooltip)

local LuauHeapTypes = require(script.Parent.LuauHeapTypes)

local Constants = require(script.Parent.Parent.Parent.Constants)
local LINE_WIDTH = Constants.GeneralFormatting.LineWidth
local LINE_COLOR = Constants.GeneralFormatting.LineColor

local ENTRY_HEIGHT = Constants.LuauHeapFormatting.GraphEntryFrameHeight
local DEPTH_INDENT = Constants.LuauHeapFormatting.DepthIndent
local VALUE_CELL_WIDTH = Constants.LuauHeapFormatting.ValueCellWidth
local CELL_PADDING = Constants.LuauHeapFormatting.CellPadding
local VALUE_PADDING = Constants.LuauHeapFormatting.ValuePadding

local FFlagLuauHeapExpandableEllipsis = game:DefineFastFlag("LuauHeapExpandableEllipsis", false)

local LuauHeapViewEntry = Roact.PureComponent:extend("LuauHeapViewEntry")

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

function LuauHeapViewEntry:init()
	self.state = {
		expanded = self.props.depth == 0,
		expandedEllipsis = false,
		showTooltip = false,
		tooltipPos = UDim2.fromOffset(0, 0),
	}

	self.onButtonPress = function()
		self:setState(function(oldState)
			return {
				expanded = not oldState.expanded,
			}
		end)
	end

	self.onExpandEllipsis = function()
		self:setState({
			expandedEllipsis = true,
		})
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

function LuauHeapViewEntry:renderChildren(
	childData: { LuauHeapTypes.HeapReportGraphEntry },
	compareData: { LuauHeapTypes.HeapReportGraphEntry }?
)
	if not self.state.expanded then
		return {}
	end

	local hasChildrenToShow

	if FFlagLuauHeapExpandableEllipsis then
		hasChildrenToShow = #childData ~= 0 or (compareData ~= nil and #compareData ~= 0)
	else
		hasChildrenToShow = (#childData or (compareData and #compareData)) :: any -- have to cast the old check, which kind of shows the issue
	end

	if not hasChildrenToShow then
		return {}
	end

	local children = {}
	local totalSize = self.props.data.TotalSize

	local childDepth = self.props.depth + 1

	local totalSkipSize = 0
	local totalSkipSizeCompare = 0

	local lastKey = 0

	if FFlagLuauHeapExpandableEllipsis then
		local function getCompareInfo(data): LuauHeapTypes.HeapReportGraphEntry?
			if compareData then
				for ck, cv in ipairs(compareData) do
					if data.Name == cv.Name then
						return cv
					end
				end
			end
			return nil
		end

		local minChildrenToStartFiltering = 4
		local childFilterSizeThreshold = 128

		for key, data in ipairs(childData) do
			local compare = getCompareInfo(data)

			-- Filter out small nodes if there are more than a certain amount of them.
			-- While this does mean that N small children will be displayed, but N+1 children of the same size are collapsed,
			-- the list can be expanded by clicking on '...' so it's not a big issue in practice
			if data.TotalSize <= childFilterSizeThreshold and #childData > minChildrenToStartFiltering and not self.state.expandedEllipsis then
				totalSkipSize += data.TotalSize

				if compare then
					totalSkipSizeCompare += compare.TotalSize
				end

				continue
			end

			lastKey += 1

			children[lastKey] = Roact.createElement(LuauHeapViewEntry, {
				layoutOrder = (totalSize - data.TotalSize), -- Sort by reverse size
				depth = childDepth,
				data = data,
				compare = compare,
			})
		end
	else
		for key, data in ipairs(childData) do
			local compare = nil

			if compareData then
				for ck, cv in ipairs(compareData) do
					if data.Name == cv.Name then
						compare = cv
						break
					end
				end
			end

			-- Filter out small nodes (TODO: configuration button)
			if data.TotalSize < 2 * 1024 then
				totalSkipSize += data.TotalSize

				if compare then
					totalSkipSizeCompare += compare.TotalSize
				end

				continue
			end

			lastKey += 1

			children[lastKey] = Roact.createElement(LuauHeapViewEntry, {
				layoutOrder = (totalSize - data.TotalSize), -- Sort by reverse size
				depth = childDepth,
				data = data,
				compare = compare,
			})
		end
	end

	-- Add entry corresponding to skipped small size entries
	if totalSkipSize > 0 then
		lastKey += 1

		children[lastKey] = Roact.createElement(LuauHeapViewEntry, {
			layoutOrder = totalSize, -- Sort by reverse size
			depth = childDepth,
			data = {
				Size = totalSkipSize,
				TotalSize = totalSkipSize,
				Name = "...",
				Children = {},
			},
			compare = if compareData
				then {
					Size = totalSkipSizeCompare,
					TotalSize = totalSkipSizeCompare,
					Name = "...",
					Children = {},
				}
				else nil,
			customButtonPress = if FFlagLuauHeapExpandableEllipsis then self.onExpandEllipsis else nil,
		})
	end

	-- Add entries from the comparison that are missing from current data
	if compareData then
		for ck, cv in ipairs(compareData) do
			local found = false

			for key, data in ipairs(childData) do
				if data.Name == cv.Name then
					found = true
					break
				end
			end

			if found then
				continue
			end

			local data = {}
			data.Size = 0
			data.TotalSize = 0
			data.Name = cv.Name
			data.Source = cv.Source
			data.Children = {}

			lastKey += 1

			children[lastKey] = Roact.createElement(LuauHeapViewEntry, {
				layoutOrder = totalSize, -- Sort by reverse size
				depth = childDepth,
				data = data,
				compare = cv,
			})
		end
	end

	return children
end

function LuauHeapViewEntry:renderValues(values)
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

function LuauHeapViewEntry:render()
	local props = self.props

	local size = props.size or UDim2.new(1, 0, 0, ENTRY_HEIGHT)
	local depth = props.depth
	local layoutOrder = props.layoutOrder or 0
	local offset = depth * DEPTH_INDENT

	local data = props.data :: LuauHeapTypes.HeapReportGraphEntry
	local compare = props.compare :: LuauHeapTypes.HeapReportGraphEntry?

	local totalSize = ""
	local selfSize = ""

	if compare and compare.TotalSize ~= data.TotalSize then
		totalSize = string.format(
			'%d <font color="#%s">(%s%d)</font>',
			data.TotalSize,
			if compare.TotalSize > data.TotalSize then "0f0" else "f00",
			if compare.TotalSize > data.TotalSize then "" else "+",
			data.TotalSize - compare.TotalSize
		)
	else
		totalSize = string.format("%.0f", data.TotalSize)
	end

	if compare and compare.Size ~= data.Size then
		selfSize = string.format(
			'%d <font color="#%s">(%s%d)</font>',
			data.Size,
			if compare.Size > data.Size then "0f0" else "f00",
			if compare.Size > data.Size then "" else "+",
			data.Size - compare.Size
		)
	else
		selfSize = string.format("%.0f", data.Size)
	end

	local values = { totalSize, selfSize }

	local defaultName = if depth == 0 then "<root>" else "<anonymous>"
	local name = if not data.Name or #data.Name == 0 then defaultName else data.Name
	local sourceName = if not data.Source or #data.Source == 0 then name else data.Source

	local hoverText = sourceName

	local nameWidth = UDim.new(1 - VALUE_CELL_WIDTH * #values, -(CELL_PADDING + offset))

	local isExpandable
	local onButtonPress

	if FFlagLuauHeapExpandableEllipsis then
		isExpandable = #data.Children ~= 0 or (compare ~= nil and #compare.Children ~= 0) or props.customButtonPress ~= nil
		onButtonPress = if props.customButtonPress then props.customButtonPress else self.onButtonPress
	end

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
			isExpandable = if FFlagLuauHeapExpandableEllipsis then isExpandable else (#data.Children ~= 0 or (compare and #compare.Children ~= 0)),
			onButtonPress = if FFlagLuauHeapExpandableEllipsis then onButtonPress else (self.onButtonPress),
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
		children = Roact.createFragment(self:renderChildren(data.Children, if compare then compare.Children else nil)),
	})
end

return LuauHeapViewEntry
