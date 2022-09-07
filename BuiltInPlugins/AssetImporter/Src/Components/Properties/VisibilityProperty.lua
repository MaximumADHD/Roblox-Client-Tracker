local FFlagDevFrameworkToggleAllowOtherIcons = game:GetFastFlag("DevFrameworkToggleAllowOtherIcons")
local FFlagDevFrameworkToggleAllowEyeIcon = game:GetFastFlag("DevFrameworkToggleAllowEyeIcon")
local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local ToggleButton = UI.ToggleButton

local function VisibilityProperty(props)
	if FFlagDevFrameworkToggleAllowOtherIcons and FFlagDevFrameworkToggleAllowEyeIcon then
		return Roact.createElement(ToggleButton, {
			OnClick = props.OnToggleItem,
			Size = props.Size,
			LayoutOrder = props.LayoutOrder,
			Selected = props.Value,
			Stylizer = Stylizer,
			Style = "EyeIcon",
		})
	else
		return Roact.createElement(ToggleButton, {
			OnClick = props.OnToggleItem,
			Size = props.Size,
			LayoutOrder = props.LayoutOrder,
			Selected = props.Value,
			Stylizer = Stylizer,
		})
	end
end

return VisibilityProperty
