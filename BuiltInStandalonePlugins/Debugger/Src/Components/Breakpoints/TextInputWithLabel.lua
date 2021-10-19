--[[
	Debugpoint component for Logpoints and Breakpoints.

	Required Props:
		callback OnDetailsChange: A callback to handle user text input
		string DetailsText: Text within the input box
		string PlaceholderText: Placeholder text for input box when box is empty
		number LabelWidth: Lenth of the label (including any wanted offset)
		UDim2.new Size = Dimensions of the entire component
		string LabelText = Text of the Label
		number LayoutOrder = Standard LayoutOrder prop
	Optional Props:
		string TooltipText = Tooltip text that shows up while hovering on the Label
]]
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local UI = Framework.UI
local Pane = UI.Pane
local MultiLineTextInput = UI.MultiLineTextInput
local TextLabel = UI.Decoration.TextLabel
local Tooltip = UI.Tooltip

local TextInputWithLabel = Roact.PureComponent:extend("TextInputWithLabel")

function TextInputWithLabel:render()
	local props = self.props
	local onDetailsChange = props.OnDetailsChange
	local detailsText = props.DetailsText
	local placeholderText = props.PlaceholderText
	local labelWidth = props.LabelWidth
	local size = props.Size
	local labelText = props.LabelText
	local tooltipText = props.TooltipText
	local layoutOrder = props.LayoutOrder

	return Roact.createElement(Pane, {
		Size =  size,
		Style = "Box",
		LayoutOrder = layoutOrder,
		Layout = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
	}, {
		Label = Roact.createElement(TextLabel, {
			Text = labelText,
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = 1,
			Size = UDim2.new(0, labelWidth, 1, 0),
		}, {
			Tooltip = tooltipText and Roact.createElement(Tooltip, {
				Text = tooltipText,
			})
		}),

		Input = Roact.createElement(MultiLineTextInput, {
			Style = "FilledRoundedBorder",
			Size = UDim2.new(1, -labelWidth, 1, 0),
			TextInputProps = {
				Text = detailsText,
				PlaceholderText = placeholderText,
				OnTextChanged = onDetailsChange,
			},
			TextSize = 16,
			LayoutOrder = 2,
		}),
	})
end

return TextInputWithLabel
