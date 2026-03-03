------------------------- Player Choice Translation Setting -----------
-- This file is only intended for use as a helper initializer for the GameSettings page. See that page for usage.

local LocalizationService = game:GetService("LocalizationService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local utility = require(RobloxGui.Modules.Settings.Utility)
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization

local SELECTOR_ON_INDEX = 1
local SELECTOR_OFF_INDEX = 2

local settingValues = {
  [SELECTOR_ON_INDEX] = "On",
  [SELECTOR_OFF_INDEX] = "Off",
}

return function(menu, layoutOrderTable, reportSettingsChangeForAnalyticsFunc)
    local locales = Localization.new(LocalizationService.RobloxLocaleId)

    local PlayerChoiceSettingLabel = locales:Format("Translation.PlayerChoiceSettings.GameSettings.PlayerChoiceSettingLabel")
    local PlayerChoiceSettingDescription = locales:Format("Translation.PlayerChoiceSettings.GameSettings.PlayerChoiceSettingDescription")

    local playerChoiceSettingStartingIndex = if LocalizationService:GetIsLoadingInternalTranslations() then SELECTOR_ON_INDEX else SELECTOR_OFF_INDEX
    menu.PlayerChoiceTranslationFrame, menu.PlayerChoiceSettingLabel, menu.PlayerChoiceSettingMode = utility:AddNewRow(
      menu,
      PlayerChoiceSettingLabel,
      "Selector",
      settingValues,
      playerChoiceSettingStartingIndex,
      nil,
      PlayerChoiceSettingDescription
    )
    menu.PlayerChoiceTranslationFrame.LayoutOrder = layoutOrderTable["PlayerChoiceTranslationFrame"]

    menu.PlayerChoiceSettingMode.IndexChanged:connect(
        function(newIndex)
            local newSettingsValue = newIndex == SELECTOR_ON_INDEX
            local oldSettingsValue = playerChoiceSettingStartingIndex == SELECTOR_ON_INDEX

            LocalizationService:IsLoadingInternalTranslationsSettingChanged(newSettingsValue)

            reportSettingsChangeForAnalyticsFunc("player_choice_translation", oldSettingsValue, newSettingsValue)
        end
    )

    return menu.PlayerChoiceTranslationFrame, menu.PlayerChoiceSettingLabel, menu.PlayerChoiceSettingMode
end