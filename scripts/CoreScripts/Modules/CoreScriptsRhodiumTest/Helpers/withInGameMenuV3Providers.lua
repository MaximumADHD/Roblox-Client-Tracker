--[[
	Wrap test components for InGameMenuV3 in helpful providers
	including the style and localization provider
]]

local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(CorePackages.Roact)
local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham
local UIBlox = require(CorePackages.UIBlox)
local Localization = require(Modules.InGameMenuV3.Localization.Localization)
local LocalizationProvider = require(Modules.InGameMenuV3.Localization.LocalizationProvider)

local appStyle = {
	Theme = AppDarkTheme,
	Font = AppFont,
}

return function (component, props)
	local wrappedComponent = function()
		return Roact.createElement(UIBlox.Style.Provider, {
			style = appStyle,
		}, {
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = Localization.new("en-us"),
			}, {
				TestComponent = Roact.createElement(component, props)
			})
		})
	end

	return wrappedComponent
end
