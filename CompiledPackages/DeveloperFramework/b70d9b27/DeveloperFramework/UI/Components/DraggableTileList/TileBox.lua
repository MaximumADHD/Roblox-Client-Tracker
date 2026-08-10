local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local UI = Framework.UI
local Image = require(UI.Components.Image)
local Pane = require(UI.Components.Pane)
local TextLabel = require(UI.Components.TextLabel)

local TileBox = Roact.PureComponent:extend("TileBox")

function TileBox:render()
	local props = self.props
	local tile = props.Tile
	local style = props.Style

	return Roact.createElement(Pane, {
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Layout = Enum.FillDirection.Horizontal,
		Position = props.Position,
		Size = props.Size,
	}, {
		Icon = if tile.icon then Roact.createElement(Image, tile.icon) else nil,
		Text = Roact.createElement(TextLabel, {
			Size = UDim2.new(1, 0, 1, 0),
			LayoutOrder = 2,
			Text = tile.Text,
			TextXAlignment = style.TextXAlignment or Enum.TextXAlignment.Center,
		}),
	})
end

return TileBox
