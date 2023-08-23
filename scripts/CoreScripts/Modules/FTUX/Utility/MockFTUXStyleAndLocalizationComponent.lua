local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local LocalizationService = game:GetService("LocalizationService")
local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local AppStyleProvider = UIBlox.Core.Style.Provider

local DEFAULT_APP_STYLE = {
	Theme = AppDarkTheme,
	Font = AppFont,
}

return function(elements)
	return Roact.createElement(LocalizationProvider, {
		localization = Localization.new(LocalizationService.RobloxLocaleId),
	}, {
		FTUXMock = Roact.createElement("ScreenGui", {}, {
			ThemeProvider = Roact.createElement(AppStyleProvider, {
				style = DEFAULT_APP_STYLE,
			}, {
				Frame = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
				}, elements),
			}),
		}),
	})
end
