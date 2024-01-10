local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local LocalizationService = game:GetService("LocalizationService")
local GetFFlagEnableStyleProviderCleanUp =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableStyleProviderCleanUp
local AppDarkTheme = if GetFFlagEnableStyleProviderCleanUp()
	then nil
	else require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local AppFont = if GetFFlagEnableStyleProviderCleanUp()
	then nil
	else require(CorePackages.Workspace.Packages.Style).Fonts.Gotham
local renderWithCoreScriptsStyleProvider =
	require(script.Parent.Parent.Parent.Common.renderWithCoreScriptsStyleProvider)

local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local AppStyleProvider = UIBlox.Core.Style.Provider

return function(elements)
	if GetFFlagEnableStyleProviderCleanUp() then
		return Roact.createElement(LocalizationProvider, {
			localization = Localization.new(LocalizationService.RobloxLocaleId),
		}, {
			FTUXMock = Roact.createElement("ScreenGui", {}, {
				ThemeProvider = renderWithCoreScriptsStyleProvider({
					Frame = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 1, 0),
					}, elements),
				}),
			}),
		})
	else
		local DEFAULT_APP_STYLE = {
			Theme = AppDarkTheme,
			Font = AppFont,
		}
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
end
