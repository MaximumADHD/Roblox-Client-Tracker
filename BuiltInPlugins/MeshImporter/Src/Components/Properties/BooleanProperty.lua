local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Checkbox = UI.Checkbox

local function BooleanProperty(props)
	return Roact.createElement(Checkbox, {
		OnClick = props.OnToggleItem,
		Size = props.Size,
		LayoutOrder = props.LayoutOrder,
		Checked = props.Value,
	})
end

return BooleanProperty
