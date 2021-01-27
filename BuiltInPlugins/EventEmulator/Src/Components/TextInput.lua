local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR
local ContextServices = Framework.ContextServices

local UI = Framework.UI
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

	local theme, sizes, textStyle
	if THEME_REFACTOR then
		theme = props.Stylizer
		sizes = theme.Sizes
		textStyle = theme.Text
	else
		theme = props.Theme
		sizes = theme:get("Sizes")
		textStyle = theme:get("Text")
	end

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
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
})

return TextInput