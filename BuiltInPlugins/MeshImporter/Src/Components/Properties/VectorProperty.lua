local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local TextInput = UI.TextInput

local function VectorProperty(props)
	local value = props.Value

	return Roact.createElement(TextInput, {
		LayoutOrder = props.LayoutOrder,
		Size = props.Size,
		Text = ("%.2f, %.2f, %.2f"):format(value.X, value.Y, value.Z),
		Enabled = false,
	})
end

return VectorProperty
