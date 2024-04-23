--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")

local Roact = require(CorePackages.Roact)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GetFFlagSwitchInExpTranslationsPackage = require(RobloxGui.Modules.Flags.GetFFlagSwitchInExpTranslationsPackage)

local renderWithCoreScriptsStyleProvider = require(RobloxGui.Modules.Common.renderWithCoreScriptsStyleProvider)

local Localization
if GetFFlagSwitchInExpTranslationsPackage() then
	Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
else
	Localization = require(CorePackages.Workspace.Packages.RobloxAppLocales).Localization
end
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider

local FTUXPanel = require(script.Components.FTUXPanel)
local GetFeatures = require(script.Features.GetFeatures)

local PlatformEnum = require(script.Enums.PlatformEnum)
type Platform = PlatformEnum.Platform

return {
	mountFtuxMenu = function(platform: Platform)
		game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
		local ftuxTree = Roact.createElement(LocalizationProvider, {
			localization = Localization.new(LocalizationService.RobloxLocaleId),
		}, {
			FTUXMenu = Roact.createElement("ScreenGui", {}, {
				ThemeProvider = renderWithCoreScriptsStyleProvider({
					FtuxPanel = Roact.createElement(FTUXPanel, {
						platform = platform,
					}, {}),
				}),
			}),
		})

		GetFeatures(platform)

		local hasInternalPermission = UserSettings().GameSettings:InStudioMode()
			and game:GetService("StudioService"):HasInternalPermission()
		local root = Roact.mount(ftuxTree, CoreGui, "FTUXMenu")

		if hasInternalPermission then
			local DeveloperTools = require(CorePackages.DeveloperTools)
			local inspector = DeveloperTools.forCoreGui("FTUX", {
				rootInstance = "FTUX",
			})
			inspector:addRoactTree("Roact tree", root, Roact)
		end

		return
	end,
}
