local Localization = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")

local Wrappers = require(Foundation.Utility.Wrappers)
local LocalizationService = Wrappers.Services.LocalizationService
local GuiService = Wrappers.Services.GuiService

local Constants = require(Localization.Constants)
local Flags = require(Foundation.Utility.Flags)
local GeneratedTranslations = require(Foundation.Generated.Translations.GeneratedTranslations)

local localizationTableParent = if Flags.FoundationTranslatorUseScript then Foundation else GuiService

local function createFoundationLocalizationTable(parent: Instance): LocalizationTable | nil
	local existingLocalizationTable = parent:FindFirstChild(Constants.LOCALIZATION_TABLE_NAME)
	if existingLocalizationTable ~= nil and existingLocalizationTable:IsA("LocalizationTable") then
		-- Overwrites the existing translations with this set
		existingLocalizationTable:SetEntries(GeneratedTranslations)

		if Flags.FoundationTranslatorLocalizationRecovery then
			return existingLocalizationTable
		end

		return nil
	end

	local FoundationLocalizationTable = Instance.new("LocalizationTable")
	FoundationLocalizationTable.Name = Constants.LOCALIZATION_TABLE_NAME
	FoundationLocalizationTable.Archivable = false
	FoundationLocalizationTable.SourceLocaleId = "en-us"
	FoundationLocalizationTable:SetEntries(GeneratedTranslations)
	FoundationLocalizationTable.Parent = parent

	if Flags.FoundationTranslatorLocalizationRecovery then
		return FoundationLocalizationTable
	end

	return nil
end

local localizationTable = createFoundationLocalizationTable(localizationTableParent)

local FALLBACK_ENGLISH_TRANSLATOR = (
	localizationTableParent:FindFirstChild(Constants.LOCALIZATION_TABLE_NAME) :: LocalizationTable
):GetTranslator("en-us") :: Translator

local translatorsCache = {}

local function getTranslatorForLocale(locale)
	if Flags.FoundationTranslatorLocalizationRecovery then
		if localizationTable == nil or localizationTable.Parent == nil then
			localizationTable = createFoundationLocalizationTable(localizationTableParent)
			translatorsCache = {}
		end
	end

	local translator = translatorsCache[locale]
	if translator then
		return translator
	end

	translator = (localizationTableParent:FindFirstChild(Constants.LOCALIZATION_TABLE_NAME) :: LocalizationTable):GetTranslator(
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
		if Flags.FoundationTranslatorLocalizationRecovery then
			return getTranslatorForLocale("en-us"):FormatByKey(key, args)
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
