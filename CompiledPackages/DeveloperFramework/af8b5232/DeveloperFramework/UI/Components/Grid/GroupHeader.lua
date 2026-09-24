local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Components = Framework.UI.Components
local Image = require(Components.Image)
local Pane = require(Components.Pane)
local TextLabel = require(Components.TextLabel)

local Util = Framework.Util
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local StyleModifier = require(Util.StyleModifier)

export type Props = {
	Collapsible: boolean?,
	IsCollapsed: boolean?,
	OnExpandCollapseClicked: (() -> ())?,
	Position: UDim2,
	Size: UDim2,
	Style: any,
	Text: string,
}

type _Style = {
	Arrow: any,
	ArrowButtonSize: UDim2,
	BackgroundColor: Color3?,
	BorderColor: Color3?,
	Padding: any,
	Size: UDim2,
	Spacing: number,
	Style: string?,
	TextColor: Color3?,
	TextSize: number?,
}

local GroupHeader = Roact.PureComponent:extend("GroupHeader")

function GroupHeader:render()
	local props: Props = self.props
	local style: _Style = props.Style

	local styleModifier = if props.IsCollapsed then nil else StyleModifier.Selected
	local layoutOrderIterator = LayoutOrderIterator.new()

	return Roact.createElement(Pane, {
		BackgroundColor = style.BackgroundColor,
		BorderColor = style.BorderColor,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Layout = Enum.FillDirection.Horizontal,
		Padding = style.Padding,
		Position = props.Position,
		Size = props.Size,
		Spacing = style.Spacing,
		Style = style.Style,
		VerticalAlignment = Enum.VerticalAlignment.Center,
	}, {
		Arrow = if props.Collapsible
			then Roact.createElement(Pane, {
				Layout = Enum.FillDirection.Horizontal,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				OnClick = function()
					if props.OnExpandCollapseClicked then
						props.OnExpandCollapseClicked()
					end
				end,
				Size = style.ArrowButtonSize,
			}, {
				Image = Roact.createElement(Image, {
					Style = style.Arrow,
					StyleModifier = styleModifier,
				}),
			})
			else nil,

		Text = Roact.createElement(TextLabel, {
			AutomaticSize = Enum.AutomaticSize.X,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = UDim2.fromScale(0, 1),
			Text = props.Text,
			TextColor = style.TextColor,
			TextSize = style.TextSize,
			TextYAlignment = Enum.TextYAlignment.Center,
		}),
	})
end

return GroupHeader
