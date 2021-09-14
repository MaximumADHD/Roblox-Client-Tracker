--[[
	Overriden version of TreeTableCell for Breakpoint's TreeTable
]]
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Constants = require(Plugin.Src.Util.Constants)

local Dash = Framework.Dash
local join = Dash.join

local UI = Framework.UI
local Pane = UI.Pane
local Image = UI.Decoration.Image
local Checkbox = UI.Checkbox
local TreeTableCell = UI.TreeTableCell

local BreakpointsTreeTableCell = Roact.PureComponent:extend("BreakpointsTreeTableCell")

local FFlagDevFrameworkAddRightClickEventToPane = game:GetFastFlag("DevFrameworkAddRightClickEventToPane")

local debugpointIconTable = {
	breakpointDisabled = Constants.BreakpointIconDirectoryFilePath .. "breakpoint_disabled@2x.png",
	breakpointEnabled = Constants.BreakpointIconDirectoryFilePath .. "breakpoint_enabled@2x.png",
	conditionalDisabled = Constants.BreakpointIconDirectoryFilePath .. "conditional_disabled@2x.png",
	conditionalEnabled = Constants.BreakpointIconDirectoryFilePath .. "conditional_enabled@2x.png",
	invalidBreakpoint = Constants.BreakpointIconDirectoryFilePath .. "invalid_breakpoint@2x.png",
	invalidLogpoint = Constants.BreakpointIconDirectoryFilePath .. "invalid_logpoint@2x.png",
	logpointDisabled = Constants.BreakpointIconDirectoryFilePath .. "logpoint_disabled@2x.png",
	logpointEnabled = Constants.BreakpointIconDirectoryFilePath .. "logpoint_enabled@2x.png"
}

local ICON_SIZE = 16

function BreakpointsTreeTableCell:init()
	self.onToggle = function()
		local cellProps = self.props.CellProps
		cellProps.OnToggle(self.props.Row)
	end
end

local function fetchDebugpointIcon(row, iconMapping)
	if row.item.debugpointType == "Breakpoint" then
		
		if not row.item.isValid then
			return iconMapping.invalidBreakpoint
		end
		
		if not row.item.condition then
			return (row.item.isEnabled and iconMapping.breakpointEnabled) or iconMapping.breakpointDisabled
		else
			return (row.item.isEnabled and iconMapping.conditionalEnabled) or iconMapping.conditionalDisabled
		end
		
	else
		
		if not row.item.isValid then
			return iconMapping.invalidLogpoint
		end
		
		return (row.item.isEnabled and iconMapping.logpointEnabled) or iconMapping.logpointDisabled
	end
end

function BreakpointsTreeTableCell:render()
	local props = self.props
	local column = props.Columns[props.ColumnIndex]
	local key = column.Key
	local width = UDim.new(1 / #props.Columns, 0)
	local row = props.Row
	local cellProps = props.CellProps
	local value = row.item[key]
	local isEnabledCol = key == "isEnabled"

	local style = join(props.Style, cellProps.CellStyle)
	local backgroundColor = ((props.RowIndex % 2) == 1) and style.BackgroundOdd or style.BackgroundEven
	local isExpanded = cellProps.Expansion[row.item]
	local arrowSize = style.Arrow.Size
	local indent = row.depth * style.Indent

	local isFirstRow = props.ColumnIndex == 1
	local padding = isFirstRow and {
		Top = style.CellPadding.Top,
		Left = style.CellPadding.Left + indent,
		Right = style.CellPadding.Right,
		Bottom = style.CellPadding.Bottom,
	} or style.CellPadding
	
	local hasChildren = isFirstRow and row.item.children and #row.item.children > 0
	
	if isEnabledCol then
		local debugpointIconPath = fetchDebugpointIcon(row, debugpointIconTable)
		return Roact.createElement(Pane, {
			Style = "Box",
			BackgroundColor3 = backgroundColor,
			BorderSizePixel = 1,
			BorderColor3 = style.Border,
			Size = UDim2.new(width.Scale, width.Offset, 1, 0),
			OnRightClick = FFlagDevFrameworkAddRightClickEventToPane and props.OnRightClick or nil,
		}, {
			Left = Roact.createElement(Pane, {
				Layout = Enum.FillDirection.Horizontal,
				LayoutOrder = props.ColumnIndex,
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
				EnabledCheckbox = Roact.createElement(Checkbox, {
					Checked = value,
					-- TODO: replace OnClick with function that toggles the isEnabled for breakpoint.
					OnClick = function() end,
					LayoutOrder = 1,
				}),
				BreakpointIcon = Roact.createElement(Image, {
					LayoutOrder = 2,
					Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
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
		Style = props.Style,
		RowIndex = props.RowIndex,
		OnRightClick = FFlagDevFrameworkAddRightClickEventToPane and props.OnRightClick or nil
	})
end

return BreakpointsTreeTableCell

