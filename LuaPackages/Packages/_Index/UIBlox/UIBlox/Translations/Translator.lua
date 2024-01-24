--!nonstrict
local LocalizationService = game:GetService("LocalizationService")
local GuiService = game:GetService("GuiService")

local Translations = script.Parent
local Constants = require(Translations.Constants)
local GeneratedTranslations = require(Translations.GeneratedTranslations)

local function createUIBloxLocalizationTable(parent)
	if GuiService:FindFirstChild(Constants.LOCALIZATION_TABLE_NAME) then
		return
	end

	local UIBloxLocalization = Instance.new("LocalizationTable")
	UIBloxLocalization.Name = Constants.LOCALIZATION_TABLE_NAME
	UIBloxLocalization.Archivable = false
	UIBloxLocalization.SourceLocaleId = "en-us"
	UIBloxLocalization:SetEntries(GeneratedTranslations)
	UIBloxLocalization.Parent = parent
end

createUIBloxLocalizationTable(GuiService)

local FALLBACK_ENGLISH_TRANSLATOR = GuiService.UIBloxLocalization:GetTranslator("en-us")

local translatorsCache = {}

local function getTranslatorForLocale(locale)
	local translator = translatorsCache[locale]
	if translator then
		return translator
	end

	translator = GuiService.UIBloxLocalization:GetTranslator(locale)
	translatorsCache[locale] = translator

	return translator
end

local function getTranslator()
	return getTranslatorForLocale(LocalizationService.RobloxLocaleId)
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
