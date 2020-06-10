--[[
	Shown when the user does not have sufficient permission to edit settings on a page

	No public props
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local ContextServices = require(Plugin.Framework.ContextServices)
local FrameworkUI = require(Plugin.Framework.UI)

local Container = FrameworkUI.Container

local InsufficientPermissionsPage = Roact.Component:extend(script.Name)

function InsufficientPermissionsPage:render()
	local props = self.props
	local theme = props.Theme:get("Plugin")
	local localization = props.Localization

	return Roact.createElement(Container, {
	}, {
		Label = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
			LayoutOrder = 1,

			Text = localization:getText("General", "SettingsInsufficientPermission"),

			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
		}), {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, theme.settingsPage.failLabelPaddingX/2),
				PaddingRight = UDim.new(0, theme.settingsPage.failLabelPaddingX/2),
			}),
		}),
	})
end

ContextServices.mapToProps(InsufficientPermissionsPage, {
	Theme = ContextServices.Theme,
	Localization = ContextServices.Localization,
})

return InsufficientPermissionsPage