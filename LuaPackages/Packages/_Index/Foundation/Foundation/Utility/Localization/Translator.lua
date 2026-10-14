local Localization = script.Parent
-- clip this when Flags.FoundationDontParentToFoundationModule is enabled
local Foundation = script:FindFirstAncestor("Foundation")
local FoundationRoot = script.Parent.Parent.Parent
local Flags = require(FoundationRoot.Utility.Flags)

local Wrappers = require(FoundationRoot.Utility.Wrappers)
local LocalizationService = Wrappers.Services.LocalizationService

local Constants = require(Localization.Constants)
local GeneratedTranslations = require(FoundationRoot.Generated.Translations.GeneratedTranslations)
local devAssert = require(FoundationRoot.Utility.devAssert)
local getMainGui = require(FoundationRoot.Utility.getMainGui)
local localizationTableParent: Instance
if Flags.FoundationDontParentToFoundationModule then
	local mainGui = getMainGui()
	devAssert(mainGui ~= nil, "MainGui not found")
	localizationTableParent = mainGui :: Instance
else
	localizationTableParent = Foundation
end

local http = game:GetService("HttpService")
local localizationTableName = Constants.LOCALIZATION_TABLE_NAME .. http:GenerateGUID(false)

local function createFoundationLocalizationTable(parent: Instance): LocalizationTable | nil
	if Flags.FoundationDontParentToFoundationModule then
		local existingLocalizationTable = parent:FindFirstChild(localizationTableName)
		if existingLocalizationTable ~= nil and existingLocalizationTable:IsA("LocalizationTable") then
			-- Overwrites the existing translations with this set
			existingLocalizationTable:SetEntries(GeneratedTranslations)
			return existingLocalizationTable
		end
	else
		local existingLocalizationTable = parent:FindFirstChild(Constants.LOCALIZATION_TABLE_NAME)
		if existingLocalizationTable ~= nil and existingLocalizationTable:IsA("LocalizationTable") then
			-- Overwrites the existing translations with this set
			existingLocalizationTable:SetEntries(GeneratedTranslations)
			return existingLocalizationTable
		end
	end

	local FoundationLocalizationTable = Instance.new("LocalizationTable")
	FoundationLocalizationTable.Name = if Flags.FoundationDontParentToFoundationModule
		then localizationTableName
		else Constants.LOCALIZATION_TABLE_NAME
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

	if Flags.FoundationDontParentToFoundationModule then
		translator = (localizationTableParent:FindFirstChild(localizationTableName) :: LocalizationTable):GetTranslator(
			locale
		)
	else
		translator = (localizationTableParent:FindFirstChild(Constants.LOCALIZATION_TABLE_NAME) :: LocalizationTable):GetTranslator(
			locale
		)
	end

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
