local Table = script.Parent
local App = Table.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local t = require(Packages.t)
local Roact = require(Packages.Roact)
local withStyle = require(Core.Style.withStyle)

local DIVIDER_START_OFFSET = 24

--[[
	Right now ListTable is a simple list container and it just renders everything
	passed in. It is not recyclable at the moment and it would be migrated to the
	new https://github.com/Roblox/virtualized-list-lua when that's ready.
]]
local ListTable = Roact.PureComponent:extend("ListTable")

ListTable.validateProps = t.strictInterface({
	layoutOrder = t.optional(t.integer),
	size = t.optional(t.UDim2),
	anchorPoint = t.optional(t.Vector2),
	position = t.optional(t.UDim2),

	cells = t.array(t.table),
})

function ListTable:render()
	return withStyle(function(style)
		local size = self.props.size
		if not size then
			size = UDim2.fromScale(1, 1)
		end

		local children = {
			ListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
			}),
		}

		local cells = self.props.cells
		for index, value in ipairs(cells) do
			local key = "Cell " .. index
			children[key] = Roact.createElement("Frame", {
				LayoutOrder = index,
				Size = UDim2.fromScale(1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.Y,
			}, {
				Content = value,
				Divider = index < #cells and Roact.createElement("Frame", {
					Size = UDim2.new(1, -DIVIDER_START_OFFSET, 0, 1),
					Position = UDim2.new(0, DIVIDER_START_OFFSET, 1, -1),
					BorderSizePixel = 0,
					BackgroundColor3 = style.Theme.Divider.Color,
					BackgroundTransparency = style.Theme.Divider.Transparency,
					ZIndex = 100,
				}) or nil,
			})
		end

		return Roact.createElement("Frame", {
			LayoutOrder = self.props.layoutOrder,
			Size = size,
			AnchorPoint = self.props.anchorPoint,
			Position = self.props.position,
			BackgroundTransparency = 1,
		}, children)
	end)
end

return ListTable
