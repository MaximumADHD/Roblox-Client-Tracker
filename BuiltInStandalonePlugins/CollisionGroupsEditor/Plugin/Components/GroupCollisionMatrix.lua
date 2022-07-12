local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Pane = UI.Pane
local Table = UI.Table

local CollisionCheckbox = require(script.Parent.CollisionCheckbox)
local Constants = require(script.Parent.Parent.Constants)

local GroupCollisionMatrix = Roact.PureComponent:extend("GroupCollisionMatrix")

function GroupCollisionMatrix:render()
	local props = self.props
	local groupCount = #props.Groups
	local style = props.Stylizer.GroupCollisionMatrix

	local rows = {}
	local columns = {}
	local initialSizes = {}

	local columnIndex = groupCount
	for groupIndex, group in ipairs(props.Groups) do
		local newRow = {}
		for otherIndex, otherGroup in ipairs(props.Groups) do
			newRow[groupCount - (otherIndex - 1)] = {
				ShouldShowCheckbox = groupIndex <= otherIndex,
				Group = group,
				OtherGroup = otherGroup,
				style = props.Stylizer,
				OnColHovered = props.OnColHovered,
				OnRowHovered = props.OnRowHovered,
			}
		end
		rows[groupIndex] = newRow

		columns[columnIndex] = {Key = columnIndex}
		initialSizes[columnIndex] = UDim.new(0, Constants.GridCellSize.X.Offset)
		columnIndex = columnIndex - 1
	end

	return Roact.createElement(Table, {
		Size = Constants.CalculateTableSize(groupCount),
		ShowHeader = false,
		initialSizes = initialSizes,
		RowHeight = Constants.GroupRowHeight,
		ColumnHeaderHeight = 0,
		Rows = rows,
		Columns = columns,
		CellComponent = CollisionCheckbox,
		Padding = 0,
		OnHoverRow = function(row, rowIndex)
			props.OnRowHovered(row[1].Group.Name)
		end,
		OnSelectRow = function(row, rowIndex)
			row[1].Group.OnSelected()
		end,
	})
end

GroupCollisionMatrix = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
})(GroupCollisionMatrix)

return GroupCollisionMatrix
