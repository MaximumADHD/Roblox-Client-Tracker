local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)

-- TODO: Ask for these to be put into ui framework and reference that
-- sworzalla 4/8/2020
local UILibrary = Plugin.Src.DELETE_UILibrary
local LabeledTextInput = require(UILibrary.LabeledTextInput)
local LabeledElementPair = require(UILibrary.LabeledElementPair)

local TextInput = Roact.PureComponent:extend("TextInput")

function TextInput:render()
	local props = self.props

	local label = props.Label
	local text = props.Text or ""
	local layoutOrder = props.LayoutOrder
	local onFocusLost = props.OnFocusLost

	local theme = props.Theme
	local sizes = theme:get("Sizes")
	local textStyle = theme:get("Text")

	return Roact.createElement(LabeledElementPair, {
		Size = UDim2.new(1, 0, 0, 60),
		Text = label,
		SizeToContent = true,
		TextColor = textStyle.BrightText.Color,
	}, {
		TextBox = Roact.createElement("TextBox", {
			Name = label,
			Size = UDim2.fromOffset(sizes.TextBoxWidth, sizes.TextBoxHeight),
			Position = UDim2.new(0.1, 0, 0, 0),
			Text = text,
			ClearTextOnFocus = false,
			LayoutOrder = layoutOrder,
			[Roact.Event.FocusLost] = onFocusLost,
		}),
	})
end

ContextServices.mapToProps(TextInput,{
	Theme = ContextServices.Theme,
})

return TextInput