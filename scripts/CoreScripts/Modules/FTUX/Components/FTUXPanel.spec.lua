return function()
	local CorePackages = game:GetService("CorePackages")
	local LocalizationService = game:GetService("LocalizationService")
	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)
	local Localization = require(CorePackages.Workspace.Packages.RobloxAppLocales).Localization
	local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider

	local PlatformEnum = require(script.Parent.Parent.Enums.PlatformEnum)
	type Platform = PlatformEnum.Platform

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	describe("FTUXPanel", function()
		it("should create and destroy without errors for QuestVR", function()
			local FTUXPanel = require(script.Parent.FTUXPanel)

			local ftuxTree = Roact.createElement(LocalizationProvider, {
				localization = Localization.new(LocalizationService.RobloxLocaleId),
			}, {
				Roact.createElement("ScreenGui", {}, {
					ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
						style = appStyle,
					}, {
						FtuxPanel = Roact.createElement(FTUXPanel, {
							platform = PlatformEnum.QuestVR,
						}, {}),
					}),
				}),
			})

			local instance = Roact.mount(ftuxTree)
			Roact.unmount(instance)
		end)
	end)
end
