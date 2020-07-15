local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local DF_TextInput = UI.TextInput

local Components = Plugin.Src.Components
local LabeledElementPair = require(Components.LabeledElementPair)

local TextInput = Roact.PureComponent:extend("TextInput")

function TextInput:render()
	local props = self.props

	local label = props.Label
	local text = props.Text or ""
	local layoutOrder = props.LayoutOrder
	local onChange = props.OnChange

	local theme = props.Theme
	local sizes = theme:get("Sizes")
	local textStyle = theme:get("Text")

	return Roact.createElement(LabeledElementPair, {
		Size = UDim2.new(1, 0, 0, 60),
		Text = label,
		LayoutOrder = layoutOrder,
		SizeToContent = true,
		TextColor = textStyle.BrightText.Color,
	}, {
		TextBox = Roact.createElement(DF_TextInput, {
			Size = UDim2.fromOffset(sizes.TextBoxWidth, sizes.ShortHeight),
			Position = UDim2.new(0.1, 0, 0, 0),
			Text = text,
			OnTextChanged = onChange,
		}),
	})
end

ContextServices.mapToProps(TextInput,{
	Theme = ContextServices.Theme,
})

return TextInput