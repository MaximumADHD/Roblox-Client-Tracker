local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local join = Framework.Dash.join
local UI = Framework.UI
local TextLabel = UI.Decoration.TextLabel
local Pane = UI.Pane

export type Props = {
	ErrorText: string?,
	InfoText: string?,
	LabelColumnWidth: UDim?,
	LayoutOrder: number?,
	Spacing: number?,
	Text: string?,
	TextSize: number?,
	TextXAlignment: Enum.TextXAlignment?,
	TextYAlignment: Enum.TextYAlignment?,
	UnderlyingColor: Color3?,
	VerticalSpacing: number?,
	WarningText: string?,
	WrapperProps: any?,
}

local LabeledElement = Roact.PureComponent:extend("LabeledElement")

LabeledElement.defaultProps = {
	LabelColumnWidth = UDim.new(0, 100),
	LayoutOrder = 1,
	Spacing = 0,
	Text = "",
	TextSize = 16,
	TextXAlignment = Enum.TextXAlignment.Left,
	TextYAlignment = Enum.TextYAlignment.Top,
	VerticalSpacing = 0,
}

function LabeledElement:render()
	local props: Props = self.props

	local fillDirection = Enum.FillDirection.Vertical
	local labelColumnWidth = props.LabelColumnWidth
	local labelSize = UDim2.new(labelColumnWidth, UDim.new(0, 25))
	local captionText
	if props.ErrorText and props.ErrorText ~= "" then
		captionText = props.ErrorText
	elseif props.WarningText and props.WarningText ~= "" then
		captionText = props.WarningText
	elseif props.InfoText and props.InfoText ~= "" then
		captionText = props.InfoText
	end

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.Y,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		Layout = fillDirection,
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = Roact.createElement(TextLabel, {
			LayoutOrder = 1,
			Size = labelSize,
			Text = props.Text,
			TextXAlignment = props.TextXAlignment,
			TextYAlignment = props.TextYAlignment,
		}),
		Content = Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.XY,
			LayoutOrder = 2,
			Layout = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}, {
			ElementListItem = Roact.createElement(Pane, join({
				LayoutOrder = 3,
				AutomaticSize = Enum.AutomaticSize.XY,
			}, props.WrapperProps), (props:: any)[Roact.Children]),
			Caption = Roact.createElement(Pane, {
				Size = UDim2.new(1, 0, 0, props.TextSize :: number),
				LayoutOrder = 4,
			}, {
				CaptionText = (captionText and captionText ~= "") and Roact.createElement(TextLabel, {
					Text = captionText,
					TextSize = props.TextSize,
					TextColor = props.UnderlyingColor,
					AutomaticSize = Enum.AutomaticSize.XY,
				}) or nil,
			})
		})
	})
end

return LabeledElement
