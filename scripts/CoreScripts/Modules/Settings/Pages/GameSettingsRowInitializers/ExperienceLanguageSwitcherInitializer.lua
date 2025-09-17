--!nonstrict
-- Can be made strict again when or if GameSettings.lua undergoes the same change
------------------------- Experience Language -----------
-- The experience language switcher uses DropDownSelection which requires the hub to work
-- This file is only intended for use as a helper initializer for the GameSettings page. See that page for usage.
-- NOTE: Though this version of the language switcher allows for selection at the locale level, some variables still refer to this as the "language switcher" because users don't usually perceive a difference.

local RunService = game:GetService("RunService")
local HttpService = game:GetService('HttpService')
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Url = require(CorePackages.Workspace.Packages.CoreScriptsCommon).Url
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local utility = require(RobloxGui.Modules.Settings.Utility)
local log = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger:new(script.Name)

local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

return function(menu, layoutOrderTable, reportSettingsChangeForAnalyticsFunc)
  ------------------------------------------------------
  ------------------
  ------------------ Language Selection -----------------
  local initialLocaleIndex = 1 -- Default to "Original" index
  local lastValidLocaleIndex = 1 -- Remember the last succeeded set index so that in event of failed POST on toggle the dropdown selection can be reset easily
  local isHandlingFailedLocalePreferenceUpdatePost = false -- Keep track of if an index toggle is a result of handling a failed POST; this should only be set to true when beginning handling and should be set back to false after handling

  -- Check experience settings
  local experienceSourceLocaleCode = nil -- corresponding locale code of the game, example: "en_us"
  local playerLocaleCode = Players.LocalPlayer.LocaleId
  local playerPreferredLocaleCode = nil -- Player preferred locale code, calculated by checking result of user-localization-settings-API call. Either the call returns a locale directly or it returns a language, and the preferred locale is treated as that language's default locale according to the map that we set (populated statically from source of truth as Locale API).
  local localeNameToLocaleCodeMapping = {}
  local supportedLocaleCodes = {}

  type LocaleCodeMetadata = { localeName: string, localeId: number, languageName: string, languageId: number, languageCode: string }
  local localeCodeMetadataMappings: { [string]: LocaleCodeMetadata } = {} -- Tracks important locale data keyed by locale code
  local localeIdToLocaleCodeMapping = { } -- Maps locale IDs ex: 3 to locale codes ex: fr_fr

  -- This is statically populated by the default locale code stored in the backend Localization Service.
  -- In the longer term, we should consider exposing a default locale for language endpoint so that this mapping can be dynamically requested; in case new languages are released on platform.
  -- The static config is vulnerable to future changes to the list of languages and their default supported locales, so usage of default locale for the switcher should be coded defensively
  -- The massive upshot of this approach is saving on network traffic per client for a relatively harmless risk
  local languageCodeToDefaultLocaleCodeMapping = {
    ["sq"] = "sq_al", -- Albanian
    ["ar"] = "ar_001", -- Arabic
    ["bn"] = "bn_bd", -- Bengali
    ["nb"] = "nb_no", -- Bokmal
    ["bs"] = "bs_ba", -- Bosnian
    ["bg"] = "bg_bg", -- Bulgarian
    ["my"] = "my_mm", -- Burmese
    ["zh-hans"] = "zh_cn", -- Chinese (Simplified)
    ["zh-hant"] = "zh_tw", -- Chinese (Traditional)
    ["hr"] = "hr_hr", -- Croatian
    ["cs"] = "cs_cz", -- Czech
    ["da"] = "da_dk", -- Danish
    ["nl"] = "nl_nl", -- Dutch
    ["en"] = "en_us", -- English
    ["et"] = "et_ee", -- Estonian
    ["fil"] = "fil_ph", -- Filipino
    ["fi"] = "fi_fi", -- Finnish
    ["fr"] = "fr_fr", -- French
    ["ka"] = "ka_ge", -- Georgian
    ["de"] = "de_de", -- German
    ["el"] = "el_gr", -- Greek
    ["hi"] = "hi_in", -- Hindi
    ["hu"] = "hu_hu", -- Hungarian
    ["id"] = "id_id", -- Indonesian
    ["it"] = "it_it", -- Italian
    ["ja"] = "ja_jp", -- Japanese
    ["kk"] = "kk_kz", -- Kazakh
    ["km"] = "km_kh", -- Khmer
    ["ko"] = "ko_kr", -- Korean
    ["lv"] = "lv_lv", -- Latvian
    ["lt"] = "lt_lt", -- Lithuanian
    ["ms"] = "ms_my", -- Malay
    ["pl"] = "pl_pl", -- Polish
    ["pt"] = "pt_br", -- Portuguese
    ["ro"] = "ro_ro", -- Romanian
    ["ru"] = "ru_ru", -- Russian
    ["sr"] = "sr_rs", -- Serbian
    ["si"] = "si_lk", -- Sinhala
    ["sk"] = "sk_sk", -- Slovak
    ["sl"] = "sl_sl", -- Slovenian
    ["es"] = "es_es", -- Spanish
    ["sv"] = "sv_se", -- Swedish
    ["th"] = "th_th", -- Thai
    ["tr"] = "tr_tr", -- Turkish
    ["uk"] = "uk_ua", -- Ukranian
    ["vi"] = "vi_vn", -- Vietnamese
  }
  
  local languageIdToDefaultLocaleIdMapping = {} -- Maps a language id to the locale ID of the language's default locale for migration purposes
  -- Holds the dropdown option strings for the locale selection dropdown
  local localeOptions = {}

  -- These requests populate the dropdown and set the initial index
  -- Request to get overall locale information. This provides a mapping of
  -- locales to language codes, and also the supported translations for
  -- the language/locale strings
  local localeInformationUrl = Url.LOCALE_URL
    .. string.format("v1/locales?displayValueLocale=%s", Players.LocalPlayer.LocaleId:gsub("-", "_"))
  local localeInformationRequest = HttpService:RequestInternal({
    Url = localeInformationUrl,
    Method = "GET",
  })

  -- Request to get the source language code of the game the user is in. Used to calculate source locale code
  local experienceSourceLanguageUrl = Url.GAME_INTERNATIONALIZATION_URL
    .. string.format("v1/source-language/games/%d", game.GameId)
  local experienceSourceLanguageRequest = HttpService:RequestInternal({
    Url = experienceSourceLanguageUrl,
    Method = "GET",
  })

  -- Request to get the supported language codes for the experience. Used to calculate list of supported locale codes
  local experienceSupportedLanguagesUrl = Url.GAME_INTERNATIONALIZATION_URL
    .. string.format("v1/supported-languages/games/%d/in-experience-language-selection", game.GameId)
  local experienceSupportedLanguagesRequest = HttpService:RequestInternal({
    Url = experienceSupportedLanguagesUrl,
    Method = "GET",
  })

  -- Request to get the languaage code the user prefers for the game they
  local userExperienceLanguageSettingsUrl = Url.GAME_INTERNATIONALIZATION_URL
    .. string.format("v1/user-localization-settings/universe/%d", game.GameId)
  local userExperienceLanguageSettingRequest = HttpService:RequestInternal({
    Url = userExperienceLanguageSettingsUrl,
    Method = "GET",
  })

  -- Helper function used by callbacks to populate error messages
  local function tryGetErrorMessage(reqSuccess, reqResponse)
    local err = nil
    if not reqSuccess then
      err = "Connection error"
    elseif reqResponse.StatusCode == 401 then
      err = "Unauthorized"
    elseif reqResponse.StatusCode < 200 or reqResponse.StatusCode >= 400 then
      err = reqResponse.StatusCode
    end
    return err
  end

  -- Helper function to set selection menu to a dormant state
  local function createSessionDormantLanguageSwitcherRow()
    menu.LanguageSelectorFrame, menu.LanguageSelectorLabel, menu.LanguageSelectorMode =
      utility:AddNewRow(
        menu,
        RobloxTranslator:FormatByKey("Feature.SettingsHub.LanguageSelection.SettingLabel"),
        "DropDown",
        { RobloxTranslator:FormatByKey("Feature.SettingsHub.LanguageSelection.Unavailable") },
        1
      )
    menu.LanguageSelectorMode:SetInteractable(false)
    menu.LanguageSelectorFrame.LayoutOrder = layoutOrderTable["LanguageSelectorFrame"]
  end

  -- Callback functions (These are defined in reverse order of calling)
  -- If one callback in the chain fails, then other calls are not made and
  -- failure is propogated to the final executed callback to handle appropriately
  local function userExperienceLanguageSettingsCallback(previousCallsSuccess, earliestErr)
    if not previousCallsSuccess then
      if earliestErr == nil then
        earliestErr = "Execution path did not set earliest error to non-nil value."
        -- This should never happen, but keep this as a catch all
        -- during final evaluation so the log will show it
      end
      log:warning(
        "GameSettings language selector initialization failed to get all required information; defaulting to player locale and disabling language selection toggle. Earliest error message: "
          .. earliestErr
      )
      -- The feature should remain unavailable and user remains in
      -- their locale if required start state info isn't captured
      createSessionDormantLanguageSwitcherRow()
    else
      -- All GET API calls succeeded, so the feature should be enabled
      -- and starting state calculated
      local playerPreferenceSupported = false

      -- Add an option for each supported locale code and check if
      -- the playered preferred locale code is among the supported locales
      for i, code in supportedLocaleCodes do
        if code == playerPreferredLocaleCode then
          playerPreferenceSupported = true
        end

        if code ~= experienceSourceLocaleCode then
          table.insert(localeOptions, localeCodeMetadataMappings[code].localeName)
        end
      end

      table.sort(localeOptions)

      -- Reserve index 1 for the default locale of the experience's source language, regardless of the original ordering
      local sourceOptionAvailable = true
      
      if experienceSourceLocaleCode == nil or localeCodeMetadataMappings[experienceSourceLocaleCode].localeName == nil then
        sourceOptionAvailable = false
      end

      if not sourceOptionAvailable then
        createSessionDormantLanguageSwitcherRow()
        return
      end

      table.insert(
        localeOptions,
        1,
        localeCodeMetadataMappings[experienceSourceLocaleCode].localeName .. " (Original)"
      )

      -- If the player preference is supported, then we should set the
      -- initial state to the corresponding dropdown option
      if playerPreferenceSupported == true then
        for i, name in localeOptions do
          if i ~= 1 and localeNameToLocaleCodeMapping[name] == playerPreferredLocaleCode then
            initialLocaleIndex = i
            lastValidLocaleIndex = i
          end
        end
      end

      menu.LanguageSelectorFrame, menu.LanguageSelectorLabel, menu.LanguageSelectorMode =
        utility:AddNewRow(
          menu,
          RobloxTranslator:FormatByKey("Feature.SettingsHub.LanguageSelection.SettingLabel"),
          "DropDown",
          localeOptions,
          initialLocaleIndex
        )
      menu.LanguageSelectorFrame.LayoutOrder = layoutOrderTable["LanguageSelectorFrame"]

      -- Perform call to game engine to set the locale to match the
      -- dropdown selection in the UI
      if initialLocaleIndex == 1 then
        LocalPlayer:SetExperienceSettingsLocaleId(experienceSourceLocaleCode)
      else
        local newLocaleCode = localeNameToLocaleCodeMapping[localeOptions[initialLocaleIndex]]
        LocalPlayer:SetExperienceSettingsLocaleId(newLocaleCode)
      end

      -- stores current locale
      menu.LanguageSelectorMode.CurrentLocale =
        menu.LanguageSelectorMode.DropDownFrame.DropDownFrameTextLabel.Text

      -- Create on toggle change function
      local function toggleTranslation(newIndex)
        -- Disable interactability of the setting until API call is
        -- completed and response processed
        menu.LanguageSelectorMode:SetInteractable(false)

        -- Calculate payload to POST to GI API to remember the
        -- user's preference for the experience
        local newTargetId = nil

        if newIndex == 1 and localeCodeMetadataMappings[experienceSourceLocaleCode] ~= nil then
          newTargetId = localeCodeMetadataMappings[experienceSourceLocaleCode].localeId
        else
          newTargetId =
            localeCodeMetadataMappings[localeNameToLocaleCodeMapping[localeOptions[newIndex]]].localeId
        end

        local old_locale = menu.LanguageSelectorMode.CurrentLocale
        local new_locale = localeOptions[newIndex]
        if old_locale ~= new_locale then
          -- update current locale when new locale is selected
          menu.LanguageSelectorMode.CurrentLocale = new_locale
          reportSettingsChangeForAnalyticsFunc("experience_locale", old_locale, new_locale)
        end

        -- Note that the posted payload now always uses SupportedLocales, and the provided target ID is a locale id and never a language ID
        -- Prior implementations used a LanguageFamily with a language ID here
        local payload = {
          settingValue = {
            settingType = "SupportedLocale",
            settingTargetId = newTargetId,
          },
        }

        local userExperienceLanguageSettingsUpdateUrl = Url.GAME_INTERNATIONALIZATION_URL
          .. string.format("v1/user-localization-settings/universe/%d", game.GameId)
        local userExperienceLanguageSettingsUpdateRequest = HttpService:RequestInternal({
          Url = userExperienceLanguageSettingsUpdateUrl,
          Method = "POST",
          Headers = {
            ["Content-Type"] = "application/json",
          },
          Body = HttpService:JSONEncode(payload),
        })

        -- Callback for API call to make upon completion
        -- If the POST succeeded then we should perform the call to
        -- game engine to update the locale
        -- This callback can be invoked simply with "true" to set
        -- the locale without needing to wait for a POST request to succeed
        local function userExperienceLanguageSettingsUpdateCallback(success, errorMsg)
          if success then
            -- Status update succeeded, update the game locale
            -- to reflect the changes
            lastValidLocaleIndex = newIndex
            if newIndex == 1 then
              LocalPlayer:SetExperienceSettingsLocaleId(experienceSourceLocaleCode)
            else
              local newLocaleCode = localeNameToLocaleCodeMapping[localeOptions[newIndex]]
              LocalPlayer:SetExperienceSettingsLocaleId(newLocaleCode)
            end
          else
            log:warning(
              "Request to update user experience language status failed, keeping language toggle disabled for the remainder of the session. Error: "
                .. errorMsg
            )
            -- Reset dropdown selection to the remembered
            -- selection before the index change since the POST failed
            isHandlingFailedLocalePreferenceUpdatePost = true
            menu.LanguageSelectorMode:SetSelectionIndex(lastValidLocaleIndex)
          end

          -- Reset interactability to true since we are done
          -- processing a dropdown change
          menu.LanguageSelectorMode:SetInteractable(true)
        end

        if RunService:IsStudio() then
          -- Don't bother performing the POST request if running from
          -- Studio and just flip the toggle
          -- Feature will thus still be emulated in Studio, but have
          -- no effect on the setting from the Roblox Player
          userExperienceLanguageSettingsUpdateCallback(true, nil)
        elseif isHandlingFailedLocalePreferenceUpdatePost then
          -- The index change is a result of an index reset from
          -- a POST failure, so we don't want to fire another POST request
          isHandlingFailedLocalePreferenceUpdatePost = false
          userExperienceLanguageSettingsUpdateCallback(true, nil)
        elseif newTargetId == nil then
          -- If the new target ID is somehow nil, then the payload is going to cause an error and we skip the network call completely, making a callback as if it failed
          userExperienceLanguageSettingsUpdateCallback(false, nil)
        else
          -- Call is made from client and is not from handling an
          -- index reset, so POST to remember the preference update
          userExperienceLanguageSettingsUpdateRequest:Start(function(reqSuccess, reqResponse)
            local success = false
            local err = nil
            local logPrefix = "User Experience Language Settings Update Request: "
            err = tryGetErrorMessage(reqSuccess, reqResponse)
            if err ~= nil then
              err = logPrefix .. err
              log:warning(
                "GameSettings language selector toggle: Failed to update user experience language status from GameInternationalization API for "
                  .. userExperienceLanguageSettingsUpdateUrl
                  .. " with error message: "
                  .. err
              )
            else
              log:info(
                logPrefix .. "Succeeded with code - "
                  .. reqResponse.StatusCode
              )
              success = true
            end
            userExperienceLanguageSettingsUpdateCallback(success, err)
          end)
        end
      end

      menu.LanguageSelectorMode.IndexChanged:connect(toggleTranslation)
    end
  end

  local function experienceSourceLanguageCallback(previousCallsSuccess, earliestErr)
    if previousCallsSuccess then
      userExperienceLanguageSettingRequest:Start(function(reqSuccess, reqResponse)
        local success = false
        local err = nil
        local logPrefix = "User Experience Language Setting Get Request: "
        err = tryGetErrorMessage(reqResponse, reqResponse)
        if err ~= nil then
          err = logPrefix .. err
        else
          -- reqSuccess == true and StatusCode >= 200 and StatusCode < 400
          success, err = pcall(function()
            local json = HttpService:JSONDecode(reqResponse.Body)
            local localizationSettingValue = json.userUniverseLocalizationSettingValue
            if localizationSettingValue == nil then
              -- A proper status code without an actual setting value was returned
              -- indicates no existing preferred setting, but NOT a
              -- failure.
              playerPreferredLocaleCode = playerLocaleCode
              return
            end

            local settingTargetId = localizationSettingValue.settingTargetId
            local settingType = localizationSettingValue.settingType
            if settingTargetId == nil then
              -- Defensive check against malformed response, this isn't expected to ever happen but if somehow it does we treat it as if no setting exists
              playerPreferredLocaleCode = playerLocaleCode
            end

            if settingType == "SourceOrTranslation" then
              -- 1 indicates source is desired, anything else
              -- indicates the player's language is desired
              local SOURCE_LOCALE_DESIRED = 1
              if settingTargetId == SOURCE_LOCALE_DESIRED then
                playerPreferredLocaleCode = experienceSourceLocaleCode
              else
                playerPreferredLocaleCode = playerLocaleCode
              end
            elseif settingType == "LanguageFamily" then
              -- The player has a preferred language, so we try to find the default locale of the language for higher granularity
              -- This case should become less and less common since the only public path for updating the setting uses SupportedLocale for the migration
              if languageIdToDefaultLocaleIdMapping[settingTargetId] == nil then
                -- The existing setting somehow doesn't have a default locale, so we will fall back to the player's normal locale as a "user facing reset". The next time they set a preference with the switcher an explicit locale will be picked and this unexpected one off should be fixed.
                playerPreferredLocaleCode = playerLocaleCode
              else
                -- A default locale for the language setting was found, so we find that locale's code here. It's ok if it doesn't exist, usage of the preferred code handles this case
                playerPreferredLocaleCode =
                  localeIdToLocaleCodeMapping[languageIdToDefaultLocaleIdMapping[settingTargetId]]
              end
            elseif settingType == "SupportedLocale" then
              -- The back end stored a locale, which means either an in place migration succeeded for it in the past, or we are on the new code that is using this setting type
              if localeIdToLocaleCodeMapping[settingTargetId] == nil then
                -- The target ID for some reason isn't actually a locale code, in which case we fall back to whatever the player locale code already is
                playerPreferredLocaleCode = playerLocaleCode
              else
                -- The setting exists and is a locale code, so we set it directly
                playerPreferredLocaleCode = 
                  localeIdToLocaleCodeMapping[settingTargetId]
              end
            end
          end)
        end
        if not success then
          log:warning(
            "GameSettings language selector initialization: Failed to get response from GameInternationalization API for "
              .. userExperienceLanguageSettingsUrl
              .. " with error message: "
              .. err
          )
        end
        userExperienceLanguageSettingsCallback(success, err)
      end)
    else
      userExperienceLanguageSettingsCallback(false, earliestErr)
    end
  end

  local function experienceSupportedLanguagesCallback(previousCallsSuccess, earliestErr)
    if previousCallsSuccess then
      experienceSourceLanguageRequest:Start(function(reqSuccess, reqResponse)
        local success = false
        local err = nil
        local logPrefix = "Experience Source Language Request: "
        err = tryGetErrorMessage(reqResponse, reqResponse)
        if err ~= nil then
          err = logPrefix .. err
        else
          -- reqSuccess == true and StatusCode >= 200 and StatusCode < 400
          success, err = pcall(function()
            local json = HttpService:JSONDecode(reqResponse.Body)
            -- Get the source language code and use the metadata
            -- available from the previous call to also get
            -- source locale code and source language name
            local sourceLanguageCode = json.languageCode
            experienceSourceLocaleCode = languageCodeToDefaultLocaleCodeMapping[sourceLanguageCode]
          end)
        end
        if not success then
          log:warning(
            "GameSettings language selector initialization: Failed to get response from GameInternationalization API for "
              .. experienceSourceLanguageUrl
              .. " with error message: "
              .. err
          )
        end

        -- If we haven't hit an error yet then this is potentially the
        -- earliest error
        if earliestErr == nil then
          earliestErr = err
        end

        experienceSourceLanguageCallback(success and previousCallsSuccess, earliestErr)
      end)
    else
      experienceSourceLanguageCallback(false, earliestErr)
    end
  end

  local function localeInformationCallback(previousCallsSuccess, earliestErr)
    if previousCallsSuccess then
      experienceSupportedLanguagesRequest:Start(function(reqSuccess, reqResponse)
        local success = false
        local err = nil
        local logPrefix = "Experience Supported Language Language Request: "
        err = tryGetErrorMessage(reqResponse, reqResponse)
        if err ~= nil then
          err = logPrefix .. err
        else
          success, err = pcall(function()
            local json = HttpService:JSONDecode(reqResponse.Body)
            local supportedLanguageCodes = {} -- List of supported language codes for the experience
            -- Populate table of supported language codes
            for key, obj in pairs(json.data) do
              supportedLanguageCodes[key] = obj.languageCode
            end

            -- Every locale available from Locale API with a language appearing in the experience's supported languages list is a supported locale
            for key, languageCode in supportedLanguageCodes do
              for localeCode, localeMetadata in localeCodeMetadataMappings do
                if localeMetadata.languageCode == languageCode then
                  table.insert(supportedLocaleCodes, localeCode)
                end
              end
            end
          end)
        end

        if not success then
          log:warning(
            "GameSettings language selector initialization: Failed to get response from Localization API for "
              .. experienceSupportedLanguagesUrl
              .. " with error message: "
              .. err
          )
        end

        if earliestErr == nil then
          earliestErr = err
        end

        experienceSupportedLanguagesCallback(success and previousCallsSuccess, earliestErr)
      end)
    else
      experienceSupportedLanguagesCallback(false, earliestErr)
    end
  end

  localeInformationRequest:Start(function(reqSuccess, reqResponse)
    local success = false
    local err = nil
    local logPrefix = "Locale Information Request: "
    err = tryGetErrorMessage(reqResponse, reqResponse)
    if err ~= nil then
      err = logPrefix .. err
    else
      -- reqSuccess == true and StatusCode >= 200 and StatusCode < 400
      success, err = pcall(function()
        local json = HttpService:JSONDecode(reqResponse.Body)
        -- Populate language code metadata structure, language
        -- ID to language code reverse lookup, language ID to
        -- language code lookup, and player language
        -- name/language code
        for key, obj in pairs(json.data) do
          local t_languageCode = obj.locale.language.languageCode
          local t_languageId = obj.locale.language.id
          local t_languageName = obj.locale.language.name
          local t_localeCode = obj.locale.locale
          local t_localeId = obj.locale.id
          local t_localeName = obj.locale.name

          if languageCodeToDefaultLocaleCodeMapping[t_languageCode] == t_localeCode then
            -- If the current iteration has languageId and localeId for our default mapping then we set it for setting migration purposes
            languageIdToDefaultLocaleIdMapping[t_languageId] = t_localeId
          end
          
          localeCodeMetadataMappings[t_localeCode] = {
            localeName = t_localeName,
            localeId = t_localeId,
            languageName = t_languageName,
            languageId = t_languageId,
            languageCode = t_languageCode 
          }

          localeIdToLocaleCodeMapping[t_localeId] = t_localeCode
          localeNameToLocaleCodeMapping[t_localeName] = t_localeCode
        end
      end)
    end
    if not success then
      log:warning(
        "GameSettings language selector initialization: Failed to get response from Localization API for "
          .. localeInformationUrl
          .. " with error message: "
          .. err
      )
    end

    localeInformationCallback(success, err)
  end)
end
