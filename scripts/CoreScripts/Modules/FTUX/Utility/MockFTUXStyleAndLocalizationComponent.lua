local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local LocalizationService = game:GetService("LocalizationService")
local renderWithCoreScriptsStyleProvider =
	require(script.Parent.Parent.Parent.Common.renderWithCoreScriptsStyleProvider)

local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider

return function(elements)
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
end
