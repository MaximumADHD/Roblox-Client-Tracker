--!nonstrict
-- Can be made strict again when or if GameSettings.lua undergoes the same change
------------------------- Chat Translation -----------
-- The new version of chat translation settings is only set in hub if the associated engine features are enabled
-- The chat language switcher uses DropDownSelection which requires the hub to work
-- This file is only intended for use as a helper initializer for the GameSettings page. See that page for usage.

local TextChatService = game:GetService("TextChatService")
local HttpService = game:GetService('HttpService')
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Url = require(RobloxGui.Modules.Common.Url)
local Settings = UserSettings()
local GameSettings = Settings.GameSettings
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local utility = require(RobloxGui.Modules.Settings.Utility)
local log = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger:new(script.Name)

-- Flags
local FFlagFixChatLanguageSwitcherLabel = game:DefineFastFlag("FixChatLanguageSwitcherLabel", false)
local GetFStringChatTranslationEnabledLocales = require(RobloxGui.Modules.Flags.GetFStringChatTranslationEnabledLocales)
local ChatTranslationSettingsMoved = game:GetEngineFeature("TextChatServiceSettingsSaved")
local FFlagInExperienceSettingsRefactorAnalytics = require(RobloxGui.Modules.Flags.FFlagInExperienceSettingsRefactorAnalytics)

return function(menu, layoutOrderTable, reportSettingsChangeForAnalyticsFunc)
    -- English is set up as a special case since we always need an option representing English to be available. Otherwise supported languages are determined via fast string
    -- Maps indices of below options to locale codes.
    local indexToLocaleMapping = {
        [1] = "en_us",
    }

    -- Reverse mapping of below options from locale code to index.
    local localeToIndexMapping = {
        ["en_us"] = 1,
    }

    -- List of options for the dropdown. Other options are set by locale API. The same call can also update this value to a localized name for "English"
    local chatLanguageOptions = {
        "English"
    }

    -- Request to locale API to get language/locale mappings and other information like localized language names
    local localeCodeToLanguageCodeMappingUrl = Url.LOCALE_URL .. string.format("v1/locales?displayValueLocale=%s", Players.LocalPlayer.LocaleId:gsub('-', '_'))
    local localeCodeToLanguageCodeMappingRequest = HttpService:RequestInternal({
        Url = localeCodeToLanguageCodeMappingUrl,
        Method = "GET"
    })

    local function localeCodeToLanguageCodeMappingCallback(success, errorMsg)
        if not success then
            if errorMsg == nil then
                errorMsg = "Locales call did not set error message to non-nil value"
                -- This should never happen, but keep this as a catch all
                -- during final evaluation so the log will show it
            end
            log:warning("GameSettings chat language selector initialization failed to get all required information; defaulting to unavailable for the remainder of this session. Error message: " .. errorMsg)
            if FFlagFixChatLanguageSwitcherLabel then
                menu.ChatLanguageSelectorFrame, menu.ChatLanguageSelectorLabel, menu.ChatLanguageSelectorMode =
                    utility:AddNewRow(menu, "Chat Translation Language", "DropDown", {"Unavailable"}, 1)
            else
                menu.ChatLanguageSelectorFrame, menu.ChatLanguageSelectorLabel, menu.ChatLanguageSelectorMode =
                    utility:AddNewRow(menu, "Chat Language", "DropDown", {"Unavailable"}, 1)
            end

            menu.ChatLanguageSelectorFrame.LayoutOrder = layoutOrderTable["ChatLanguageSelectorFrame"]
        end

        -- Call succeeded, perform real initialization
        local startIndex = nil
        -- Logic for calculating start index
        local startingLocale = GameSettings.ChatTranslationLocale
        if startingLocale ~= "" then
            -- A string value exists in the game settings, so we try to use it if we can
            for index, locale in indexToLocaleMapping do
                if locale == startingLocale then
                    startIndex = index
                end
            end
        end

        if startingLocale == "" or startIndex == nil then
            -- If either the starting locale was blank or otherwise was not a valid locale setting, we try to fall back to player locale
            -- If the player locale is a chat supported locale (in the mapping), then we update the index to reflect that
            -- Note that player locale is controlled by the experience language switcher. Any player locale changes caused by that switcher's initialization are NOT picked up here by design.
            -- Since we are attempting a calculated fallback, that means that if we succeed we should enable chat translation, and save the calculated locale into settings so that future sessions pick it up
            for index, locale in indexToLocaleMapping do
                if locale == LocalPlayer.LocaleId:gsub('-', '_') then
                    startIndex = index
                    TextChatService.ChatTranslationEnabled = true
                end
            end
        end

        -- if startIndex is still nil, then neither an existing valid chat locale nor an appropriate player fallback locale was found
        -- In this case we use the final fallback of English, and also set chat translation to be off so that the users can turn it on manually later
        -- Note that in this case we do NOT save the final English fallback in the settings so that on the next session calculating a chat locale can happen again
        -- The most pertinent use case is that if in the future a new locale is added to the supported list, the next time a user joins with that locale as their player locale it will be picked up!
        -- Another use case is if the user decides to start the experience with a different locale that IS chat supported
        if startIndex == nil then
            TextChatService.ChatTranslationEnabled = false
            startIndex = 1
        else
            -- Save the calculated chat translation locale to settings for future sessions
            -- This should only happen if A) a supported locale already was set in the game settings or B) a supported locale was calculated from using the player locale fallback
            GameSettings.ChatTranslationLocale = indexToLocaleMapping[startIndex]
        end

        -- Update chat locale ID value in engine so that initial value is accurately represented in engine
        -- This is safe to do no matter how the startIndex was actually set
        LocalPlayer:SetChatTranslationSettingsLocaleId(indexToLocaleMapping[startIndex])
        -- Track chat locale to report for analytics
        local chatLocaleToReport = indexToLocaleMapping[startIndex]

        -- Chat language selection dropdown
        if FFlagFixChatLanguageSwitcherLabel then
            menu.ChatLanguageSelectorFrame, menu.ChatLanguageSelectorLabel, menu.ChatLanguageSelectorMode =
                utility:AddNewRow(menu, "Chat Translation Language", "DropDown", chatLanguageOptions, startIndex)
        else
            menu.ChatLanguageSelectorFrame, menu.ChatLanguageSelectorLabel, menu.ChatLanguageSelectorMode =
                utility:AddNewRow(menu, "Chat Language", "DropDown", chatLanguageOptions, startIndex)
        end
        menu.ChatLanguageSelectorFrame.LayoutOrder = layoutOrderTable["ChatLanguageSelectorFrame"]

        local function onChatSelectionIndexUpdated(newIndex)
			if FFlagInExperienceSettingsRefactorAnalytics then
				local old_locale = GameSettings.ChatTranslationLocale
				local new_locale = indexToLocaleMapping[newIndex]
				GameSettings.ChatTranslationLocale = new_locale
				LocalPlayer:SetChatTranslationSettingsLocaleId(new_locale)
				chatLocaleToReport = new_locale
				reportSettingsChangeForAnalyticsFunc('chat_translation_locale', old_locale, new_locale)
			else
				GameSettings.ChatTranslationLocale = indexToLocaleMapping[newIndex]
				LocalPlayer:SetChatTranslationSettingsLocaleId(indexToLocaleMapping[newIndex])
				chatLocaleToReport = indexToLocaleMapping[newIndex]
			end
           
        end

        menu.ChatLanguageSelectorMode.IndexChanged:connect(
            onChatSelectionIndexUpdated
        )

        local chatTranslationToggleEnabled = if TextChatService.ChatTranslationToggleEnabled then 1 else 2

        -- Chat translation on/off toggle for ability for users to view untranslated messages in chat
        menu.ChatTranslationToggleFrame, menu.ChatTranslationToggleLabel, menu.ChatTranslationToggleEnabler =
            utility:AddNewRow(menu, "Option to View Untranslated Message", "Selector", {"On", "Off"}, chatTranslationToggleEnabled)
        menu.ChatTranslationToggleFrame.LayoutOrder = layoutOrderTable["ChatTranslationToggleFrame"]

        menu.ChatTranslationToggleEnabler.IndexChanged:connect(
            function(newIndex)
                local newSettingsValue = if newIndex == 1 then true else false
                local oldSettingsValue = TextChatService.ChatTranslationToggleEnabled

                if newSettingsValue ~= oldSettingsValue then
                    if ChatTranslationSettingsMoved then
                        GameSettings.ChatTranslationToggleEnabled = newSettingsValue
                    else
                        TextChatService.ChatTranslationToggleEnabled = newSettingsValue
                    end

                    reportSettingsChangeForAnalyticsFunc("chat_translation_toggle", oldSettingsValue, newSettingsValue, {
                        locale_id = chatLocaleToReport
                    })
                end
            end
        )

        -- Chat translation on/off toggle
        local chatTranslationStartingIndex = if TextChatService.ChatTranslationEnabled then 1 else 2
        -- Hide visibility of other chat related settings depending on if chat translation is enabled or not
        if chatTranslationStartingIndex == 2 then
            menu.ChatLanguageSelectorFrame.Visible = false
            menu.ChatTranslationToggleFrame.Visible = false
        end

        menu.ChatTranslationFrame, menu.ChatTranslationLabel, menu.ChatTranslationEnabler =
            utility:AddNewRow(menu, "Automatic Chat Translation", "Selector", {"On", "Off"}, chatTranslationStartingIndex)
        menu.ChatTranslationFrame.LayoutOrder = layoutOrderTable["ChatTranslationFrame"]

        menu.ChatTranslationEnabler.IndexChanged:connect(
            function(newIndex)
                local newSettingsValue = if newIndex == 1 then true else false
                local oldSettingsValue = TextChatService.ChatTranslationEnabled

                if ChatTranslationSettingsMoved then
                    GameSettings.ChatTranslationEnabled = newSettingsValue
                else
                    TextChatService.ChatTranslationEnabled = newSettingsValue
                end

                reportSettingsChangeForAnalyticsFunc("chat_translation", oldSettingsValue, newSettingsValue, {
                    locale_id = LocalPlayer.LocaleId
                })

                if newIndex == 1 then
                    menu.ChatLanguageSelectorFrame.Visible = true
                    menu.ChatTranslationToggleFrame.Visible = true
                else
                    menu.ChatLanguageSelectorFrame.Visible = false
                    menu.ChatTranslationToggleFrame.Visible = false
                end
            end
        )
    end

    localeCodeToLanguageCodeMappingRequest:Start(function(reqSuccess, reqResponse)
        local success = false
        local err = nil
        if not reqSuccess then
            err = "Locale Code to Language Code Mapping Request: Connection error"
        elseif reqResponse.StatusCode == 401 then
            err = "Locale Code to Language Code Mapping Request: Unauthorized"
        elseif reqResponse.StatusCode < 200 or reqResponse.StatusCode >= 400 then
            err = "Locale Code to Language Code Mapping Request Status code: " .. reqResponse.StatusCode
        else
            -- reqSuccess == true and StatusCode >= 200 and StatusCode < 400
            success, err = pcall(function()
                local json = HttpService:JSONDecode(reqResponse.Body)
                -- Read enabled locales from setting
                local enabledLocalesFString = GetFStringChatTranslationEnabledLocales()
                local supportedLocalesMatchIterator = enabledLocalesFString:gmatch("([^,]+)")
                local supportedLocales = {}
                for locale in supportedLocalesMatchIterator do
                    table.insert(supportedLocales, locale)
                end

                local function shouldAddLocaleAsChatTranslationOption(localeToCheck)
                    for _, locale in supportedLocales do
                        if locale == localeToCheck then
                            return true
                        end
                    end

                    return false
                end

                -- Add available chat language selections and populate mappings
                -- Index 1 has been reserved for English, we only are using the locale API call to get its translated name
                local index = 2
                for _, obj in pairs(json.data) do
                    local t_localeCode = obj.locale.locale
                    local t_languageName = obj.locale.language.name

                    if t_localeCode == "en_us" then
                        chatLanguageOptions[1] = t_languageName
                    elseif shouldAddLocaleAsChatTranslationOption(t_localeCode) then
                        table.insert(chatLanguageOptions, t_languageName)
                        indexToLocaleMapping[index] = t_localeCode
                        localeToIndexMapping[t_localeCode] = index
                        index += 1
                    end
                end
            end)
        end
        if not success then
            log:warning("GameSettings chat language selector initialization: Failed to get response from Localization API for " .. localeCodeToLanguageCodeMappingUrl .. " with error message: " .. err)
        end

        localeCodeToLanguageCodeMappingCallback(success, err)
    end)
end
