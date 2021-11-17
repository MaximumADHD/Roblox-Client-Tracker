--[[
	Toggle button with label

	Required Props:
		Text: string -- The label text
		Selected: boolean -- Whether the button is toggled
		Disabled: boolean -- The toggle button is greyed out and cannot be toggled
		OnClick: () -> () -- A function called when the toggle button was clicked, and not disabled.

		Style:
			ComponentSize: UDim2 -- size of entire toggle button and label
			ToggleSize: UDim2 -- size of toggle button
	
	Optional Props:
		Context: string -- Context string passed to 2nd argument of ToggleAction
]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local UI = Framework.UI
local TextLabel = UI.Decoration.TextLabel
local ToggleButton = UI.ToggleButton

local Util = Framework.Util
local StyleModifier = Util.StyleModifier

local LabeledToggleButton = Roact.PureComponent:extend("LabeledToggleButton")

LabeledToggleButton.defaultProps = {
	Disabled = false,
	Selected = false,
}

function LabeledToggleButton:render()
	local props = self.props
	local style = props.Stylizer

	return Roact.createElement(UI.Pane, {
		Size = style.ComponentSize,
		BackgroundTransparency = 1,
		Layout = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		Padding = {
			Left = style.LeftInsetPx,
		},
		Spacing = style.PaddingPx,
	}, {
		ToggleButton = Roact.createElement(ToggleButton, {
			OnClick = props.OnClick,
			Size = style.ToggleSize,
			Selected = props.Selected,
			AnchorPoint = Vector2.new(0, 0.5),
			Disabled = props.Disabled,
		}),

		TextLabel = Roact.createElement(TextLabel, {
			Size = UDim2.fromScale(0, 0),
			AutomaticSize = Enum.AutomaticSize.XY,
			Text = props.Text,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			StyleModifier = props.Disabled and StyleModifier.Disabled or nil
		}),
	})
end

LabeledToggleButton = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
})(LabeledToggleButton)

return LabeledToggleButton
