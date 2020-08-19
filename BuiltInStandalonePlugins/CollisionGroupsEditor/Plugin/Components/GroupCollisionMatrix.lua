local Roact = require(script.Parent.Parent.Parent.modules.Roact)

local GroupLabelColumn = require(script.Parent.GroupLabelColumn)
local HeaderRow = require(script.Parent.HeaderRow)
local GroupRow = require(script.Parent.GroupRow)
local GroupCollisionCheckMarks = require(script.Parent.GroupCollisionCheckMarks)

local GroupCollisionMatrix = Roact.PureComponent:extend("GroupCollisionMatrix")

function GroupCollisionMatrix:render()
	local props = self.props
	local groupCount = #props.Groups

	local children = {
		Layout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 1),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}

	for index, group in pairs(props.Groups) do
		local key = group.Name.."CheckMarks"

		children[key] = Roact.createElement(GroupCollisionCheckMarks, {
			Group = group,
			Groups = props.Groups,
			GroupsShown = index,
			Hovered = props.RowHovered == group.Name,
			LayoutOrder = index,

			OnColHovered = props.OnColHovered,
			OnRowHovered = props.OnRowHovered,
		})
	end

	local scrollBarThickness = 8

	return Roact.createElement("ScrollingFrame", {
		Size = UDim2.new(1, -GroupRow.CalculateWidth() + scrollBarThickness, 1, scrollBarThickness),
		CanvasSize = UDim2.new(0, HeaderRow.CalculateRowWidth(groupCount) - 1, 0, GroupLabelColumn.CalculateColumnHeight(groupCount) - 1),
		LayoutOrder = 2,
		ScrollBarThickness = scrollBarThickness,
		BorderSizePixel = 0,
		BackgroundColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground),
		ScrollBarImageColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainText),

		[Roact.Change.CanvasPosition] = function(gui)
			props.OnScrolled(gui.CanvasPosition)
		end,
	}, children)
end

return GroupCollisionMatrix
