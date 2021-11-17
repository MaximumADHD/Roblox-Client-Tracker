local Plugin = script.Parent.Parent.Parent.Parent

local getFFlagDevFrameworkTextInput2 = require(Plugin.Src.Flags.getFFlagDevFrameworkTextInput2)

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local UI = Framework.UI
local TextInput = UI.TextInput -- Remove with FFlagDevFrameworkTextInput2
local TextInput2 = UI.TextInput2
local TextLabel = UI.Decoration.TextLabel

local function StringProperty(props)
	if props.Editable ~= nil and not props.Editable then
		return Roact.createElement(TextLabel, {
			LayoutOrder = props.LayoutOrder,
			Size = props.Size,
			Text = props.Value,
			TextXAlignment = Enum.TextXAlignment.Left,
		})
	else
		return Roact.createElement(getFFlagDevFrameworkTextInput2() and TextInput2 or TextInput, {
			LayoutOrder = props.LayoutOrder,
			OnTextChanged = props.OnSetItem,
			Size = props.Size,
			Text = props.Value,
		})
	end
end

return StringProperty
