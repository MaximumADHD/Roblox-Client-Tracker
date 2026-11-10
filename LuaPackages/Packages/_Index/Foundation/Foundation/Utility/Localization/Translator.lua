local Localization = script.Parent
local FoundationRoot = script.Parent.Parent.Parent

local Wrappers = require(FoundationRoot.Utility.Wrappers)
local LocalizationService = Wrappers.Services.LocalizationService

local Constants = require(Localization.Constants)
local GeneratedTranslations = require(FoundationRoot.Generated.Translations.GeneratedTranslations)
local devAssert = require(FoundationRoot.Utility.devAssert)
local getMainGui = require(FoundationRoot.Utility.getMainGui)
local mainGui = getMainGui()
devAssert(mainGui ~= nil, "MainGui not found")
local localizationTableParent = mainGui :: Instance

local http = game:GetService("HttpService")
local localizationTableName = Constants.LOCALIZATION_TABLE_NAME .. http:GenerateGUID(false)

local function createFoundationLocalizationTable(parent: Instance): LocalizationTable | nil
	local existingLocalizationTable = parent:FindFirstChild(localizationTableName)
	if existingLocalizationTable ~= nil and existingLocalizationTable:IsA("LocalizationTable") then
		-- Overwrites the existing translations with this set
		existingLocalizationTable:SetEntries(GeneratedTranslations)
		return existingLocalizationTable
	end

	local FoundationLocalizationTable = Instance.new("LocalizationTable")
	FoundationLocalizationTable.Name = localizationTableName
	FoundationLocalizationTable.Archivable = false
	FoundationLocalizationTable.SourceLocaleId = "en-us"
	FoundationLocalizationTable:SetEntries(GeneratedTranslations)
	FoundationLocalizationTable.Parent = parent
	return FoundationLocalizationTable
end

local localizationTable = createFoundationLocalizationTable(localizationTableParent)

local translatorsCache = {}

local function getTranslatorForLocale(locale)
	if localizationTable == nil or localizationTable.Parent == nil then
		localizationTable = createFoundationLocalizationTable(localizationTableParent)
		translatorsCache = {}
	end

	local translator = translatorsCache[locale]
	if translator then
		return translator
	end

	translator = (localizationTableParent:FindFirstChild(localizationTableName) :: LocalizationTable):GetTranslator(
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
		return getTranslatorForLocale("en-us"):FormatByKey(key, args)
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
