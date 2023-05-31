return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")
	local RobloxGui = CoreGui:WaitForChild("RobloxGui")
	local LocalizationService = game:GetService("LocalizationService")
	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)
	local Localization = require(CorePackages.Workspace.Packages.RobloxAppLocales).Localization
	local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider

	local FTUX = RobloxGui.Modules.FTUX
	local MockFTUXStyleAndLocalization = require(FTUX.Utility.MockFTUXStyleAndLocalizationComponent)
	local PlatformEnum = require(FTUX.Enums.PlatformEnum)
	type Platform = PlatformEnum.Platform

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	describe("FTUXPanel", function()
		it("should create and destroy without errors for QuestVR", function()
			local FTUXPanel = require(FTUX.Components.FTUXPanel)

			local ftuxTree = MockFTUXStyleAndLocalization({
				FtuxPanel = Roact.createElement(FTUXPanel, {
					platform = PlatformEnum.QuestVR,
				}, {}),
			})

			local instance = Roact.mount(ftuxTree, CoreGui, "FTUXMenu")
			Roact.unmount(instance)
		end)
	end)
end
