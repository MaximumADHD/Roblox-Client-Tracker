local Table = script.Parent
local App = Table.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local React = require(Packages.React)
local VirtualizedList = require(Packages.VirtualizedList).VirtualizedList
local withStyle = require(Core.Style.withStyle)

local DIVIDER_START_OFFSET = 24

type ListTableProps = {
	layoutOrder: number?,
	size: UDim2?,
	anchorPoint: Vector2?,
	position: UDim2?,
	Name: string?,
	cells: Array<any>,
}

local function ScrollingListTable(props: ListTableProps)
	return withStyle(function(style)
		local size: UDim2 = props.size or UDim2.fromScale(1, 1)

		local children = {}
		local cells = props.cells
		for index, value in ipairs(cells) do
			local key = "Cell " .. index
			children[key] = React.createElement("Frame", {
				LayoutOrder = index,
				Size = UDim2.fromScale(1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.Y,
				Name = key,
			}, {
				Content = value,
				Divider = index < #cells and React.createElement("Frame", {
					Size = UDim2.new(1, -DIVIDER_START_OFFSET, 0, 1),
					Position = UDim2.new(0, DIVIDER_START_OFFSET, 1, -1),
					BorderSizePixel = 0,
					BackgroundColor3 = style.Theme.Divider.Color,
					BackgroundTransparency = style.Theme.Divider.Transparency,
					ZIndex = 100,
				}) or nil,
			})
		end

		return React.createElement(VirtualizedList, {
			Size = size,
			data = children,
			renderItem = function(info)
				return info.item
			end,
			getItemCount = function(data: any)
				return #cells
			end,
			getItem = function(data: any, index: number)
				local key = "Cell " .. tostring(index)
				return data[key]
			end,
			keyExtractor = function(_, index: number): string
				return "Cell " .. tostring(index)
			end,
			style = {
				AnchorPoint = props.anchorPoint,
				Position = props.position,
				BackgroundTransparency = 1,
				LayoutOrder = props.layoutOrder,
				Name = props.Name or "ListTable",
				ScrollBarThickness = 0,
			},
			contentContainerStyle = {
				BackgroundTransparency = 1,
			},
		})
	end)
end

return ScrollingListTable
