local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local UI = Framework.UI
local Image = require(UI.Components.Image)
local Pane = require(UI.Components.Pane)
local TextLabel = require(UI.Components.TextLabel)

local ListRow = Roact.PureComponent:extend("ListRow")

function ListRow:render()
	local props = self.props
	local row = props.Row
	local style = props.Style

	return Roact.createElement(Pane, {
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Layout = Enum.FillDirection.Horizontal,
		Position = props.Position,
		Size = props.Size,
		Spacing = style.ListRow.Spacing,
		Padding = style.ListRow.Padding,
	}, {
		Icon = if row.icon then Roact.createElement(Image, row.icon) else nil,
		Text = Roact.createElement(TextLabel, {
			AutomaticSize = Enum.AutomaticSize.XY,
			LayoutOrder = 2,
			Text = row.text,
		}),
	})
end

return ListRow
