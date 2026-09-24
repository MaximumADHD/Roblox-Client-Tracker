local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Components = Framework.UI.Components
local Image = require(Components.Image)
local Pane = require(Components.Pane)
local TextLabel = require(Components.TextLabel)

local GridCell = Roact.PureComponent:extend("GridCell")

function GridCell:render()
	local props = self.props
	local cell = props.Cell
	local style = props.Style

	return Roact.createElement(Pane, {
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Layout = Enum.FillDirection.Vertical,
		Padding = style.GridCell.Padding,
		Position = props.Position,
		Size = props.Size,
		Spacing = style.GridCell.Spacing,
	}, {
		Icon = if cell.icon then Roact.createElement(Image, cell.icon) else nil,
		Text = Roact.createElement(TextLabel, {
			AutomaticSize = Enum.AutomaticSize.XY,
			LayoutOrder = 2,
			Text = cell.text,
		}),
	})
end

return GridCell
