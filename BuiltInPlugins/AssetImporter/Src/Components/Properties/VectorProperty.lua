local Plugin = script.Parent.Parent.Parent.Parent

local getFFlagDevFrameworkTextInput2 = require(Plugin.Src.Flags.getFFlagDevFrameworkTextInput2)

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local TextInput = UI.TextInput -- Remove with FFlagDevFrameworkTextInput2
local TextInput2 = UI.TextInput2

local function VectorProperty(props)
	local value = props.Value

	return Roact.createElement(getFFlagDevFrameworkTextInput2() and TextInput2 or TextInput, {
		Disabled = getFFlagDevFrameworkTextInput2() and true or nil,
		Enabled = not getFFlagDevFrameworkTextInput2() and false or nil,
		LayoutOrder = props.LayoutOrder,
		Size = props.Size,
		Text = ("%.2f, %.2f, %.2f"):format(value.X, value.Y, value.Z),
	})
end

return VectorProperty
