local FFlagEventEmulatorWithContext = game:GetFastFlag("EventEmulatorWithContext")
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local FrameworkTextInput = UI.TextInput

local StudioUI = Framework.StudioUI
local TitledFrame = StudioUI.TitledFrame

local TextInput = Roact.PureComponent:extend("TextInput")

function TextInput:render()
	local props = self.props

	local label = props.Label
	local text = props.Text or ""
	local layoutOrder = props.LayoutOrder
	local onChange = props.OnChange

	local theme = props.Stylizer
	local sizes = theme.Sizes

	return Roact.createElement(TitledFrame, {
		Title = label,
		LayoutOrder = layoutOrder,
	}, {
		TextBox = Roact.createElement(FrameworkTextInput, {
			Size = UDim2.fromOffset(sizes.TextBoxWidth, sizes.ShortHeight),
			Position = UDim2.new(0.1, 0, 0, 0),
			Text = text,
			OnTextChanged = onChange,
		}),
	})
end

if FFlagEventEmulatorWithContext then
	TextInput = withContext({
		Stylizer = ContextServices.Stylizer,
	})(TextInput)
else
	ContextServices.mapToProps(TextInput,{
		Stylizer = ContextServices.Stylizer,
	})
end


return TextInput
