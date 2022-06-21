local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local join = Framework.Dash.join
local withAbsoluteSize = Framework.Wrappers.withAbsoluteSize
local UI = Framework.UI
local TextLabel = UI.Decoration.TextLabel
local Pane = UI.Pane

export type Props = {
	AbsoluteSize: Vector2,
	LabelColumnWidth: UDim?,
	LayoutOrder: number?,
	Spacing: number?,
	VerticalSpacing: number?,
	Text: string?,
	TextSize: number?,
	TextXAlignment: Enum.TextXAlignment?,
	TextYAlignment: Enum.TextYAlignment?,
	TextErrorOrWarningColor: Color3?,
	WrapperProps: any?,
	ErrorText: string?,
	WarningText: string?,
}

local LabeledElementListItem = Roact.PureComponent:extend("LabeledElementListItem")

LabeledElementListItem.defaultProps = {
	LabelColumnWidth = UDim.new(0, 100),
	LayoutOrder = 1,
	Spacing = 0,
	VerticalSpacing = 0,
	Text = "",
	TextSize = 16,
	TextXAlignment = Enum.TextXAlignment.Left,
	TextYAlignment = Enum.TextYAlignment.Top,
}

function LabeledElementListItem:render()
	local props: Props = self.props

	local fillDirection = Enum.FillDirection.Horizontal
	local labelColumnWidth = props.LabelColumnWidth
	local labelSize = UDim2.new(labelColumnWidth, UDim.new(0, props.AbsoluteSize.Y))
	local errorOrWarningText = if props.ErrorText and props.ErrorText ~= "" then props.ErrorText else props.WarningText

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.Y,
		Spacing = props.Spacing,
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
			Spacing = props.VerticalSpacing,
			LayoutOrder = 2,
			Layout = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}, {
			ElementListItem = Roact.createElement(Pane, join({
				LayoutOrder = 3,
				AutomaticSize = Enum.AutomaticSize.XY,
			}, props.WrapperProps), (props:: any)[Roact.Children]),
			ErrorOrWarning = Roact.createElement(Pane, {
				Size = UDim2.new(1, 0, 0, props.TextSize :: number),
				LayoutOrder = 4,
			}, {
				TextErrorOrWarning = (errorOrWarningText and errorOrWarningText ~= "") and Roact.createElement(TextLabel, {
					Text = errorOrWarningText,
					TextSize = props.TextSize,
					TextColor = props.TextErrorOrWarningColor,
					AutomaticSize = Enum.AutomaticSize.XY,
				}) or nil,
			})
		})
	})
end

return withAbsoluteSize(LabeledElementListItem)