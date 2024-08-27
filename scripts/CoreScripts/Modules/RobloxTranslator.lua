--!nonstrict
local LocalizationService = game:GetService("LocalizationService")
local CoreGui = game:GetService('CoreGui')
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

game:DefineFastFlag("LuaAppUpdateRobloxTranslatorFallback", false)
local function GetFFlagLuaAppUpdateRobloxTranslatorFallback()
    return game:GetFastFlag("LuaAppUpdateRobloxTranslatorFallback")
end

local FALLBACK_ENGLISH_TRANSLATOR
local getFallbackTranslator
if GetFFlagLuaAppUpdateRobloxTranslatorFallback() then
    function getFallbackTranslator()
        if not FALLBACK_ENGLISH_TRANSLATOR then
            FALLBACK_ENGLISH_TRANSLATOR = CoreGui.CoreScriptLocalization:GetTranslator("en-us")
        end
        return FALLBACK_ENGLISH_TRANSLATOR
    end
else
    FALLBACK_ENGLISH_TRANSLATOR = CoreGui.CoreScriptLocalization:GetTranslator("en-us")
end

-- Waiting for the player ensures that the RobloxLocaleId has been set.
if GetFFlagLuaAppUpdateRobloxTranslatorFallback() then
    if RunService:IsClient() then
        if Players.LocalPlayer == nil then
            Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
        end
    end
else
    if Players.LocalPlayer == nil then
        Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
    end
end

local coreScriptTableTranslator
local function getTranslator()
    if GetFFlagLuaAppUpdateRobloxTranslatorFallback() then
        if not LocalizationService.RobloxLocaleId then
            return getFallbackTranslator()
        end
    end

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
        if GetFFlagLuaAppUpdateRobloxTranslatorFallback() then
            getFallbackTranslator()
        end

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
