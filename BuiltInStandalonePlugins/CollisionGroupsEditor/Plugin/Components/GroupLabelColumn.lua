local Roact = require(script.Parent.Parent.Parent.modules.Roact)

local GroupRow = require(script.Parent.GroupRow)
local Constants = require(script.Parent.Parent.Constants)

local GroupLabelColumn = Roact.PureComponent:extend("GroupLabelColumn")

function GroupLabelColumn.CalculateColumnHeight(groupCount)
	return (Constants.GroupRowHeight + 1) * groupCount
end

function GroupLabelColumn:render()
	local props = self.props

	local children = {
		Layout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 1),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}

	for index, group in pairs(props.Groups) do
		local key = group.Name

		children[key] = Roact.createElement(GroupRow, {
			Group = group,
			Groups = props.Groups,
			GroupsShown = index,
			LayoutOrder = index + 1,
			Window = props.Window,

			Hovered = props.RowHovered == group.Name,
			OnRowHovered = props.OnRowHovered,
		})
	end

	return Roact.createElement("ScrollingFrame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(0, GroupRow.CalculateWidth(), 1, 0),
		CanvasSize = UDim2.new(0, GroupRow.CalculateWidth(), 0, self.CalculateColumnHeight(#props.Groups)),
		CanvasPosition = Vector2.new(0, props.ScrollPosition.Y),
		LayoutOrder = 1,
		ScrollBarThickness = 0,
		ScrollingEnabled = false,
	}, children)
end

return GroupLabelColumn