local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local TextInput = UI.TextInput

local function StringProperty(props)
	return Roact.createElement(TextInput, {
		OnTextChanged = props.OnSetItem,
		LayoutOrder = props.LayoutOrder,
		Size = props.Size,
		Text = props.Value,
	})
end

return StringProperty
