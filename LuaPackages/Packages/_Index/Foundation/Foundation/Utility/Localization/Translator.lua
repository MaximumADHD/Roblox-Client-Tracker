local LocalizationService = game:GetService("LocalizationService")
local GuiService = game:GetService("GuiService")

local Localization = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")

local Constants = require(Localization.Constants)
local GeneratedTranslations = require(Foundation.Generated.Translations.GeneratedTranslations)

local function createFoundationLocalizationTable(parent)
	local existingLocalizationTable = GuiService:FindFirstChild(Constants.LOCALIZATION_TABLE_NAME)
	if existingLocalizationTable ~= nil and existingLocalizationTable:IsA("LocalizationTable") then
		-- Overwrites the existing translations with this set
		existingLocalizationTable:SetEntries(GeneratedTranslations)
		return
	end

	local FoundationLocalizationTable = Instance.new("LocalizationTable")
	FoundationLocalizationTable.Name = Constants.LOCALIZATION_TABLE_NAME
	FoundationLocalizationTable.Archivable = false
	FoundationLocalizationTable.SourceLocaleId = "en-us"
	FoundationLocalizationTable:SetEntries(GeneratedTranslations)
	FoundationLocalizationTable.Parent = parent
end

createFoundationLocalizationTable(GuiService)

local FALLBACK_ENGLISH_TRANSLATOR = (
	GuiService:FindFirstChild(Constants.LOCALIZATION_TABLE_NAME) :: LocalizationTable
):GetTranslator("en-us") :: Translator

local translatorsCache = {}

local function getTranslatorForLocale(locale)
	local translator = translatorsCache[locale]
	if translator then
		return translator
	end

	translator = (GuiService:FindFirstChild(Constants.LOCALIZATION_TABLE_NAME) :: LocalizationTable):GetTranslator(
		locale
	)
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
