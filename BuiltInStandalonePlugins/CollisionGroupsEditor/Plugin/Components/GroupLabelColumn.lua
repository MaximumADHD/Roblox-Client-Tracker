local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Pane = UI.Pane
local ScrollingFrame = UI.ScrollingFrame

local Constants = require(script.Parent.Parent.Constants)
local GroupLabel = require(script.Parent.GroupLabel)

local GroupLabelColumn = Roact.PureComponent:extend("GroupLabelColumn")

function GroupLabelColumn.CalculateColumnHeight(groupCount)
	return Constants.GroupRowHeight * groupCount
end

function GroupLabelColumn:render()
	local props = self.props
	local style = props.Stylizer

	local width
		if props.ToggleListView then
			width = Constants.GroupRowWidth + style.ScrollBarThickness
		else
			width = Constants.GroupRowWidth
		end

	local children = {}

	for index, group in ipairs(props.Groups) do
		local key = group.Name

		children[key] = Roact.createElement(GroupLabel, {
			Group = group,
			Groups = props.Groups,
			GroupsShown = index,
			LayoutOrder = index,
			Window = props.Window,
			Hovered = props.RowHovered == group.Name,
			OnRowHovered = props.OnRowHovered,
		})
	end

	return Roact.createElement(ScrollingFrame, {
		Size = UDim2.new(0, width, 1, -style.ScrollBarThickness),
		AutomaticCanvasSize = Enum.AutomaticSize.XY,
		CanvasPosition = Vector2.new(0, props.ScrollPositionY),
		LayoutOrder = props.LayoutOrder,
		EnableScrollBarBackground = false,
		ScrollingEnabled = props.ToggleListView,
		Style = if not props.ToggleListView then style.ScrollingFrameNoBar else nil,
		Layout = Enum.FillDirection.Vertical,
		Padding = style.GroupLabelColumn.Padding,
	}, children)
end

GroupLabelColumn = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
})(GroupLabelColumn)


return GroupLabelColumn
