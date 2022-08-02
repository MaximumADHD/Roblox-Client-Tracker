local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local CollisionCheckbox = require(script.Parent.CollisionCheckbox)
local Constants = require(script.Parent.Parent.Constants)

local GroupCollisionMatrix = Roact.PureComponent:extend("GroupCollisionMatrix")

	-- TODO STUDIOPLAT-28529 Extend DF Table to include Row Headers & Horizontal Scrolling
	-- Using string name components here because STUDIOPLAT-27988 and STUDIOPLAT-26721 broke
	-- the layout of this view
function GroupCollisionMatrix:render()
	local props = self.props
	local groupCount = #props.Groups
	local style = props.Stylizer.GroupCollisionMatrix

	local grid = {
		Padding = Roact.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, 0),
			PaddingTop = UDim.new(0, 1),
			PaddingLeft = UDim.new(0, 1),
			PaddingRight = UDim.new(0, 0),
		}),
		UIGridLayout = Roact.createElement("UIGridLayout", {
			CellPadding = UDim2.fromOffset(1, 1),
			CellSize = Constants.GridCellSize,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}

	local columnIndex = groupCount
	for groupIndex, group in ipairs(props.Groups) do
		for otherIndex, otherGroup in ipairs(props.Groups) do
			local gridIndex = (groupCount * groupIndex)  - otherIndex
			grid[gridIndex] = CollisionCheckbox({
				ShouldShowCheckbox = groupIndex <= otherIndex,
				Group = group,
				OtherGroup = otherGroup,
				Style = props.Stylizer,
				RowHovered = props.RowHovered,
				OnColHovered = props.OnColHovered,
				OnRowHovered = props.OnRowHovered,
				LayoutOrder = gridIndex,
				RowIndex = columnIndex,})
		end

		columnIndex = columnIndex - 1
	end

	return Roact.createElement("Frame", {
		Size = Constants.CalculateTableSize(groupCount),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
	}, grid )
end

GroupCollisionMatrix = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
})(GroupCollisionMatrix)

return GroupCollisionMatrix
