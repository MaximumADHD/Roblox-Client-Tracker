--[[
	Overriden version of TreeTableCell for Breakpoint's TreeTable
]]
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local Constants = require(Plugin.Src.Util.Constants)
local BreakpointHelperFunctions = require(Plugin.Src.Util.BreakpointHelperFunctions)
local StyleModifier = Framework.Util.StyleModifier

local Dash = Framework.Dash
local join = Dash.join

local UI = Framework.UI
local Pane = UI.Pane
local Image = UI.Decoration.Image
local TextLabel = UI.Decoration.TextLabel
local TreeTableCell = UI.TreeTableCell

local BreakpointsTreeTableCell = Roact.PureComponent:extend("BreakpointsTreeTableCell")

local FFlagDevFrameworkFixSplitPaneAlignment = game:GetFastFlag("DevFrameworkFixSplitPaneAlignment")

function BreakpointsTreeTableCell:init()
	self.onToggle = function()
		local cellProps = self.props.CellProps
		cellProps.OnToggle(self.props.Row)
	end
end

local function fetchDebugpointIcon(row)
	if row.item.debugpointType == "Breakpoint" then
		if not row.item.condition or row.item.condition == "" then
			return (row.item.isEnabled and Constants.DebugpointIconTable.breakpointEnabled) or Constants.DebugpointIconTable.breakpointDisabled
		else
			return (row.item.isEnabled and Constants.DebugpointIconTable.conditionalEnabled) or Constants.DebugpointIconTable.conditionalDisabled
		end
	else
		return (row.item.isEnabled and Constants.DebugpointIconTable.logpointEnabled) or Constants.DebugpointIconTable.logpointDisabled
	end
end

function BreakpointsTreeTableCell:render()
	local props = self.props
	local column = props.Columns[props.ColumnIndex]
	local key = column.Key
	local width = props.Width or UDim.new(1 / #props.Columns, 0)
	local row = props.Row
	local cellProps = props.CellProps
	local isEnabledCol = key == "isEnabled"

	local style = join(props.Style, cellProps.CellStyle)
	local backgroundColor = ((props.RowIndex % 2) == 1) and style.BackgroundOdd or style.BackgroundEven
	if props.HighlightCell then
		if style[StyleModifier.Hover] then
			backgroundColor = ((props.RowIndex % 2) == 1) and style[StyleModifier.Hover].BackgroundOdd or
				style[StyleModifier.Hover].BackgroundEven
		end
	end
	local isExpanded = cellProps.Expansion[row.item]
	local arrowSize = style.Arrow.Size
	local hasChildren = row.item.children and #row.item.children > 0
	if isEnabledCol then
		local isFirstCol = props.ColumnIndex == 1

		local indent = row.depth * style.Indent
		local left = style.CellPadding.Left + indent
		if not hasChildren then
			left = left + indent*2
		end

		local padding = isFirstCol and {
			Top = style.CellPadding.Top,
			Left = left,
			Right = style.CellPadding.Right,
			Bottom = style.CellPadding.Bottom,
		} or style.CellPadding

		local debugpointIconPath = fetchDebugpointIcon(row)
		return Roact.createElement(Pane, {
			Style = "Box",
			BackgroundColor3 = backgroundColor,
			BorderSizePixel = 1,
			BorderColor3 = style.Border,
			Size = UDim2.new(width.Scale, width.Offset, 1, 0),
			ClipsDescendants = FFlagDevFrameworkFixSplitPaneAlignment,
			OnPress = function()
				local bpManager = game:GetService("BreakpointManager")
				local bp = bpManager:GetBreakpointById(row.item.id)
				BreakpointHelperFunctions.setBreakpointRowEnabled(bp, row)
			end,
		}, {
			Left = Roact.createElement(Pane, {
				Layout = Enum.FillDirection.Horizontal,
				LayoutOrder = 0,
				Padding = padding,
				Spacing = style.CellSpacing,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.XY,
			}, {
				Toggle = hasChildren and Roact.createElement("ImageButton", {
					LayoutOrder = 0,
					Size = UDim2.new(0, arrowSize, 0, arrowSize),
					BackgroundTransparency = 1,
					Image = style.Arrow.Image,
					ImageColor3 = style.Arrow.Color,
					ImageRectSize = Vector2.new(arrowSize, arrowSize),
					ImageRectOffset = isExpanded and style.Arrow.ExpandedOffset or style.Arrow.CollapsedOffset,
					[Roact.Event.Activated] = self.onToggle
				}) or nil,
				ChildCountIndicator = hasChildren and Roact.createElement(TextLabel, {
					Text = '(x' .. #row.item.children .. ')',
					BackgroundTransparency = 1,
					LayoutOrder = 1,
					Size = UDim2.new(0, Constants.ICON_SIZE, 0, Constants.ICON_SIZE),
				}),
				BreakpointIcon = Roact.createElement(Image, {
					LayoutOrder = 2,
					Size = UDim2.new(0, Constants.ICON_SIZE, 0, Constants.ICON_SIZE),
					Image = debugpointIconPath,
				}),
			})
		})
	end

	return Roact.createElement(TreeTableCell, {
		CellProps = props.CellProps,
		Columns = props.Columns,
		ColumnIndex = props.ColumnIndex,
		Row = props.Row,
		Width = props.Width,
		Style = props.Style,
		RowIndex = props.RowIndex,
		HighlightCell = props.HighlightCell,
		OnRightClick = props.OnRightClick
	})
end

BreakpointsTreeTableCell = RoactRodux.connect(
	function(state, props)
		return {
			-- empty
		}
	end,

	function(dispatch)
		return nil
	end
)(BreakpointsTreeTableCell)

return BreakpointsTreeTableCell

