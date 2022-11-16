--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local InGameMenu = script.Parent.Parent
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Promise = InGameMenuDependencies.Promise

-- Network request
local GetLocaleInfoRequest = require(InGameMenu.Network.Requests.LanguageSelection.GetLocaleInfo)
local GetExperienceSourceLanguageRequest = require(InGameMenu.Network.Requests.LanguageSelection.GetExperienceSourceLanguage)
local GetExperienceSupportedLanguagesRequest = require(InGameMenu.Network.Requests.LanguageSelection.GetExperienceSupportedLanguages)
local GetUserExperienceLanguagePreferenceRequest = require(InGameMenu.Network.Requests.LanguageSelection.GetUserExperienceLanguagePreference)

-- State change
local SetLanguageSelectionDropdown = require(InGameMenu.Actions.SetLanguageSelectionDropdown)

local PerformFetch = require(CorePackages.Workspace.Packages.Http).PerformFetch

local function handleError(err)
    -- Don't do any state change; the feature will remain disabled
    return Promise.resolve(err)
end

local function GetLocaleInfoThunk(networkImpl, displayValueLocale)
    if type(displayValueLocale) ~= "string" then
        error("GetLocaleInfo thunk expects displayValueLocale to be a string")
    end

    -- Define variables needed for determining state of language selection
    -- dropdown
    local sourceLanguageCode = nil
    local playerLanguageCode = nil
    local playerLocaleCode =  Players.LocalPlayer.LocaleId
    local playerPreferredLanguageCode = nil
    local supportedLanguageCodes = {}
    local languageNameToLanguageCodeMapping = {}
    local languageCodeMetadataMappings = {}
    local languageIdToLanguageCodeMapping = {}

    return PerformFetch.Single("LanguageSelectionEntry", function(store)
        local function userExperienceLanguageSettingsCallback(result)
            -- Check that all data was collected into the thunk's variables, and
            -- if we have everything we need, then we can update the state for
            -- the language selector to the information needed

            local success, _ = pcall(function()
                local localizationSettingValue = result.responseBody.userUniverseLocalizationSettingValue
                if localizationSettingValue == nil then
                    -- A proper status code without an actual setting value was returned
                    -- indicates no existing preferred setting, but NOT a
                    -- failure.
                    playerPreferredLanguageCode = playerLanguageCode
                    return
                end
                
                if localizationSettingValue.settingType == "SourceOrTranslation" then
                    -- 1 indicates source is desired, anything else
                    -- indicates the player's language is desired
                    if localizationSettingValue.settingTargetId == 1 then
                        playerPreferredLanguageCode = sourceLanguageCode
                    else
                        playerPreferredLanguageCode = playerLanguageCode
                    end
                end

                if localizationSettingValue.settingType == "LanguageFamily" then
                    -- The player has a preferred language target
                    -- ID, but only actually set the preferred code
                    -- if the ID maps to an existing language code
                    if languageIdToLanguageCodeMapping[localizationSettingValue.settingTargetId] == nil then
                        playerPreferredLanguageCode = playerLanguageCode
                    else
                        playerPreferredLanguageCode = languageIdToLanguageCodeMapping[localizationSettingValue.settingTargetId]
                    end
                end
            end)

            if not success then
                -- Return early without dispatching a new state
                return Promise.resolve(result)
            end

            -- Calculate the selection mapping
            local selectionMapping = {}
            local selectedIndex = 1
            for key, obj in pairs(supportedLanguageCodes) do
                local name = languageCodeMetadataMappings[obj].languageName
                if obj == sourceLanguageCode then
                    name = name .. " (Original)"
                end

                if obj == playerPreferredLanguageCode then
                    selectedIndex = key
                    Players.LocalPlayer:SetExperienceSettingsLocaleId(languageCodeMetadataMappings[obj].localeCode)
                end

                selectionMapping[key] = {
                        languageName = name,
                        localeCode = languageCodeMetadataMappings[obj].localeCode,
                        id = languageCodeMetadataMappings[obj].id,
                    }
            end
            
            store:dispatch(SetLanguageSelectionDropdown(selectionMapping, selectedIndex, true))
            return Promise.resolve(result)
        end

        local function experienceSupportedLanguagesCallback(result)
            local success, _ = pcall(function()
                -- Populate table of supported language codes
                for key, obj in pairs(result.responseBody.data) do
                    supportedLanguageCodes[key] = obj.languageCode
                end
            end)

            if not success then
                -- Return early without dispatching a new state
                return Promise.resolve(result)
            end
            return GetUserExperienceLanguagePreferenceRequest(networkImpl, game.GameId):andThen(userExperienceLanguageSettingsCallback, handleError)
        end

        local function experienceSourceLanguageCallback(result)
            local success, _ = pcall(function()
                -- Get the source language code and use the metadata
                -- available from the previous call to also get
                -- source locale code and source language name
                sourceLanguageCode = result.responseBody.languageCode
            end)

            if not success then
                -- Return early without dispatching a new state
                return Promise.resolve(result)
            end

            return GetExperienceSupportedLanguagesRequest(networkImpl, game.GameId):andThen(experienceSupportedLanguagesCallback, handleError)
        end

        local function localeInfoCallback(result)
            local success, _ = pcall(function()
                -- Populate language code metadata structure, language
                -- ID to language code reverse lookup, language ID to
                -- language code lookup, and player language
                -- name/language code
                for key, obj in pairs(result.responseBody.data) do
                    local t_languageCode = obj.locale.language.languageCode
                    local t_localeCode = obj.locale.locale
                    local t_languageName = obj.locale.language.name
                    local t_languageId = obj.locale.language.id
                    languageCodeMetadataMappings[t_languageCode] = 
                    {
                        localeCode = t_localeCode,
                        languageName = t_languageName,
                        id = t_languageId
                    }

                    languageIdToLanguageCodeMapping[t_languageId] = t_languageCode
                    languageNameToLanguageCodeMapping[t_languageName] = t_languageCode

                    if obj.locale.locale == playerLocaleCode:gsub('-', '_') then
                        playerLanguageCode = obj.locale.language.languageCode
                    end
                end
            end)

            if not success then
                -- Return early without dispatching a new state
                return Promise.resolve(result)
            end

            return GetExperienceSourceLanguageRequest(networkImpl, game.GameId):andThen(experienceSourceLanguageCallback, handleError)
        end

        return GetLocaleInfoRequest(networkImpl, displayValueLocale):andThen(localeInfoCallback, handleError)
    end)
end

return GetLocaleInfoThunk