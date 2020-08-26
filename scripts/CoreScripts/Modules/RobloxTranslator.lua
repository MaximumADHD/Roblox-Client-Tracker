local LocalizationService = game:GetService("LocalizationService")
local CoreGui = game:GetService('CoreGui')
local Players = game:GetService("Players")

local FALLBACK_ENGLISH_TRANSLATOR = CoreGui.CoreScriptLocalization:GetTranslator("en-us")

-- Waiting for the player ensures that the RobloxLocaleId has been set.
if Players.LocalPlayer == nil then
    Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
end

local coreScriptTableTranslator
local function getTranslator()
    if coreScriptTableTranslator == nil then
        coreScriptTableTranslator = CoreGui.CoreScriptLocalization:GetTranslator(
            LocalizationService.RobloxLocaleId)
    end
    return coreScriptTableTranslator
end

local translatorsCache = {}

local function getTranslatorForLocale(locale)
    local translator = translatorsCache[locale]
    if translator then
        return translator
    end

    translator = CoreGui.CoreScriptLocalization:GetTranslator(locale)
    translatorsCache[locale] = translator

    return translator
end

local function formatByKeyWithFallback(key, args, translator)
    local success, result = pcall(function()
        return translator:FormatByKey(key, args)
    end)

    if success then
        return result
    elseif translator.LocaleId == "zh-cjv" then
        return ""
    else
        return FALLBACK_ENGLISH_TRANSLATOR:FormatByKey(key, args)
    end
end

local RobloxTranslator = {}

function RobloxTranslator:FormatByKey(key, args)
    return formatByKeyWithFallback(key, args, getTranslator())
end

function RobloxTranslator:FormatByKeyForLocale(key, locale, args)
    return formatByKeyWithFallback(key, args, getTranslatorForLocale(locale))
end

return RobloxTranslator
