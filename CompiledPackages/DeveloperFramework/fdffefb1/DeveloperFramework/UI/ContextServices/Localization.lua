--[[
	Reads data out of the localization table, provides a simple interface for fetching strings

	Props :
		stringResourceTable : (CSV localization file) the file with the English strings, used for development
		translationResourceTable : (CSV localization file) the file with all of the translated strings
		pluginName : (string) the "plugin_name" field used in the localization file's keys

	Optional Props :
		namespace : (string) the namespace of all keys in the localization, defaults to "Studio"
		overrideGetLocale : (function<string>(void)) a function that returns a localeId
		overrideLocaleId : (string) a locale used to ignore the current locale set by Roblox
		overrideLocaleChangedSignal : (Signal) a signal that the user has changed to a different language
		overrideTranslator : (function<>())

	- NOTE -
	To make the localization resource files backend friendly, the keys should be structured like this:
		<namespace>.<plugin_name>.<scope>.<key>

	For formatted strings, follow this guide online : https://developer.roblox.com/articles/localization-format-strings

	For example, your SourceStrings.csv should look something like this :
		Key,Context,Example,Source,en
		Studio.MoneyManager.Currency.Robux,the name displayed for Robux,,,R$
		Studio.MoneyManager.Currency.USD,the name displayed for US dollars,,,USD
		Studio.MoneyManager.Sell.LimitedsTitle,the page title for selling limited items,,,Sell your limiteds
		Studio.MoneyManager.Sell.LimitedValue,shows how much an item is worth,,
			{item}{value:int}{currency},
			{item} is worth {value:int} {currency}

	And your LocalizedStrings.csv should look something like this : (line breaks added for readability)
		Key,Context,Example,Source,de,es,es-es,ja,ko
		Studio.MoneyManager.Sell.LimitedValue,
			{item}{value:int}{currency},				-- Source
			{item} ist fünf {value:int} {currency},		-- de
			{item} vale {value:int} {currency},			-- es
			{item} vale {value:int} {currency},			-- es-es
			{item}は{value:int}{currency}の価値がある,		-- ja
			{item}은{value:int}{currency}가치가있다.		-- ko

		(it is okay for keys to be missing in this file. This file can be empty and that's fine)

	Localization Usage :
		local rsTable = script.Parent.SourceStrings
		local trsTable = script.Parent.LocalizedStrings
		local pluginLocalization = Localization.new({
			stringResourceTable = rsTable,
			translationResourceTable = trsTable,
			pluginName = "MoneyManager"
		})
		local example = pluginLocalization:getText("Sell", "LimitedsValue", {
			item = "Valkyrie Helm",
			value = 71850,
			currency = "R$"
		})
]]

-- services
local StudioService = game:GetService("StudioService")

-- libraries
local Framework = script:FindFirstAncestor("UI").Parent
local ContextItem = require(Framework.UI.ContextServices.ContextItem)
local Resources = require(Framework.Resources)
local Util = require(Framework.Util)
local Signal = Util.Signal
local Cryo = require(Framework.Parent.Cryo)
local FFlagDevFrameworkSupportExternalLoc = require(Framework.SharedFlags.getFFlagDevFrameworkSupportExternalLoc)()

-- constants
local MOCK_PLUGIN_NAME = "Test"
local FALLBACK_LOCALE = "en-us"

local Localization = ContextItem:extend("Localization")

local FFlagCorrectlyParseQtLocale = game:DefineFastFlag("CorrectlyParseQTLocale", false)

function Localization.new(props)
	assert(type(props) == "table", "Localization props is expected to be a table.")
	assert(props.stringResourceTable ~= nil, "Localization must have a .csv string resource table for English strings")
	assert(props.translationResourceTable ~= nil, "Localization must have a .csv string resource table of translations")
	assert(type(props.pluginName) == "string", "Please specify the plugin's name")
	if FFlagDevFrameworkSupportExternalLoc and props.allowExternalNamespaces then
		assert(props.namespace == nil, "Multiple namespaces are enabled, cannot specify a particular namespace")
	end

	if props.libraries ~= nil then
		assert(type(props.libraries) == "table", "Localization libraries prop must be a table or nil")
		for key, value in pairs(props.libraries) do
			assert(type(key) == "string", "Localization libraries key must be a string")
			assert(type(value) == "table", "Localization libraries value must be a table")
			assert(
				value.stringResourceTable ~= nil,
				string.format("Localization table %s must have a .csv string resource table for English strings", key)
			)
			assert(
				value.translationResourceTable ~= nil,
				string.format("Localization table %s must have a .csv string resource table of translations", key)
			)
		end
	end

	local stringResourceTable = props.stringResourceTable
	local translationResourceTable = props.translationResourceTable
	local overrideGetLocale = props.getLocale
	local overrideLocaleId = props.overrideLocaleId
	local overrideLocaleChangedSignal = props.overrideLocaleChangedSignal
	local defaultKeyNamespace = props.namespace
	local keyPluginName = props.pluginName

	if defaultKeyNamespace == nil then
		defaultKeyNamespace = "Studio"
	end

	local externalLocaleChanged
	if overrideLocaleChangedSignal then
		externalLocaleChanged = overrideLocaleChangedSignal
	else
		externalLocaleChanged = StudioService:GetPropertyChangedSignal("StudioLocaleId")
	end

	-- a function that gets called when the locale changes, returns the new locale
	local function getLocale()
		if overrideGetLocale then
			return overrideGetLocale()
		end

		if overrideLocaleId ~= nil then
			return overrideLocaleId
		else
			if FFlagCorrectlyParseQtLocale then
				local locale = StudioService["StudioLocaleId"]
				-- QT gives us the locale in the format `en_US`. We need to convert to lowercase and then
				-- replace the '_' with a '-' to get the locale that the LocalizationTable expects.
				locale = string.gsub(string.lower(locale), "_", "-")
				return locale
			end
			return StudioService["StudioLocaleId"]
		end
	end

	local self = {
		-- localeChanged : (Signal<string>)
		--  a public facing signal for Localization consumers to observe updates
		localeChanged = Signal.new(),

		-- externalLocaleChanged : (Signal)
		--  the system signal fired when a user changes their language settings
		externalLocaleChanged = externalLocaleChanged,

		-- externalLocaleChangedConnection : (connection token)
		--  a subscription token for cleaning up the connection
		externalLocaleChangedConnection = nil,

		-- locale : (string)
		--  an id for knowing which translation to read from. ex) "en-us"
		locale = FALLBACK_LOCALE,

		-- defaultKeyNamespace : (string)
		-- the first field used to construct a key
		defaultKeyNamespace = defaultKeyNamespace,

		-- keyPluginName : (string)
		-- the second field used to construct a key
		keyPluginName = keyPluginName,

		-- getLocale : (function<string>())
		--  gets the current locale string
		getLocale = getLocale,
	}

	self.projects = Cryo.Dictionary.join(props.libraries or {}, {
		[self.keyPluginName] = {
			stringResourceTable = stringResourceTable,
			translationResourceTable = translationResourceTable,
		},
		[Resources.LOCALIZATION_PROJECT_NAME] = {
			stringResourceTable = Resources.SourceStrings,
			translationResourceTable = Resources.LocalizedStrings,
		},
	})
	self.translators = {}
	self.fallbackTranslators = {}

	setmetatable(self, Localization)

	-- listen to changes to the locale to alert all listeners of the change
	self.localeChangedConnection = self.externalLocaleChanged:Connect(function()
		self:updateLocaleAndTranslator()
		self.localeChanged:Fire(self)
	end)

	-- create the translators for the first time
	self:updateLocaleAndTranslator()
	return self
end

function Localization:getSignal()
	return self.localeChanged
end

function Localization:getConsumerItem()
	return table.clone(self)
end

-- scope : (string) the general group of data that the key belongs to
-- key : (string) the id of the string in the resource table
-- args : (optional, map<string,variant>) values used to format a string
function Localization:getText(scope, key, args)
	return self:getProjectText(self.keyPluginName, scope, key, args)
end

function Localization:getExternalTextWithOnlyNamespace(namespace: string, key: string, args: { any })
	assert(FFlagDevFrameworkSupportExternalLoc, "Cannot call function if FFlagDevFrameworkSupportExternalLoc == false")
	local stringKey = `{namespace}.{key}`
	local translatorKey = self.keyPluginName
	if namespace == Resources.LOCALIZATION_PROJECT_NAME then
		translatorKey = namespace
	end

	return self:_getStringInProject(translatorKey, stringKey, args)
end

function Localization:getExternalText(namespace: string, project: string, scope: string, key: string, args: { any })
	assert(FFlagDevFrameworkSupportExternalLoc, "Cannot call function if FFlagDevFrameworkSupportExternalLoc == false")
	local stringKey = `{namespace}.{project}.{scope}.{key}`

	local translatorKey = self.keyPluginName
	if project == Resources.LOCALIZATION_PROJECT_NAME then
		translatorKey = project
	end

	return self:_getStringInProject(translatorKey, stringKey, args)
end

-- project : (string) the 2nd level group that the key belongs to (plugin name or library name)
-- scope : (string) the general group of data that the key belongs to
-- key : (string) the id of the string in the resource table
-- args : (optional, map<string,variant>) values used to format a string
function Localization:getProjectText(project, scope, key, args)
	assert(type(project) == "string", "Cannot fetch the string without a project")
	assert(type(scope) == "string", "Cannot fetch the string without a scope")
	assert(type(key) == "string", "Cannot fetch a string without the key")
	assert(self.projects[project] ~= nil, string.format("Project %s is not available", project))

	local stringKey = string.format("%s.%s.%s.%s", self.defaultKeyNamespace, project, scope, key)

	if FFlagDevFrameworkSupportExternalLoc then
		return self:_getStringInProject(project, stringKey, args)
	end

	local function getTranslation(translator)
		if not translator then
			return false, nil
		end

		local success, result = pcall(function()
			return translator:FormatByKey(stringKey, args)
		end)
		return success, result
	end

	local translator = self.translators[project]
	local fallbackTranslator = self.fallbackTranslators[project]

	-- optimize for one lookup when the locale is English
	local success
	local translated
	if self.locale == FALLBACK_LOCALE then
		-- English strings are only written into the development string table,
		--  so don't bother looking up the key in the localization table.
		success, translated = getTranslation(fallbackTranslator)
		if success then
			return translated
		end
	else
		-- try to find a translation in our translation file
		success, translated = getTranslation(translator)
		if success then
			return translated
		end

		-- If no translation exists for this locale id, fall back to default (English)
		success, translated = getTranslation(fallbackTranslator)
		if success then
			return translated
		end
	end

	if game:GetEngineFeature("RefactorTranslatorInstance") then
		if
			self.keyPluginName ~= MOCK_PLUGIN_NAME
			and not success
			and not string.find(translated, "Key .* not found for locale")
		then
			-- TODO DEVTOOLS-4532: Use logger contextItem for this
			warn(translated, debug.traceback())
		end
	else
		if
			self.keyPluginName ~= MOCK_PLUGIN_NAME
			and not success
			and not string.find(translated, "LocalizationTable or parent tables do not contain a translation")
		then
			-- TODO DEVTOOLS-4532: Use logger contextItem for this
			warn(translated, debug.traceback())
		end
	end

	-- Fall back to the given key if there is no translation for this value
	-- Useful for finding misspelled or missing keys
	return stringKey
end

function Localization:_getStringInProject(translatorKey: string, stringKey: string, args: { any })
	assert(FFlagDevFrameworkSupportExternalLoc, "Cannot call function if FFlagDevFrameworkSupportExternalLoc == false")

	local function getTranslation(translator)
		if not translator then
			return false, nil
		end

		local success, result = pcall(function()
			return translator:FormatByKey(stringKey, args)
		end)
		return success, result
	end

	local translator = self.translators[translatorKey]
	local fallbackTranslator = self.fallbackTranslators[translatorKey]

	-- optimize for one lookup when the locale is English
	local success
	local translated
	if self.locale == FALLBACK_LOCALE then
		-- English strings are only written into the development string table,
		--  so don't bother looking up the key in the localization table.
		success, translated = getTranslation(fallbackTranslator)
		if success then
			return translated
		end
	else
		-- try to find a translation in our translation file
		success, translated = getTranslation(translator)
		if success then
			return translated
		end

		-- If no translation exists for this locale id, fall back to default (English)
		success, translated = getTranslation(fallbackTranslator)
		if success then
			return translated
		end
	end

	if game:GetEngineFeature("RefactorTranslatorInstance") then
		if
			self.keyPluginName ~= MOCK_PLUGIN_NAME
			and not success
			and not string.find(translated, "Key .* not found for locale")
		then
			-- TODO DEVTOOLS-4532: Use logger contextItem for this
			warn(translated, debug.traceback())
		end
	else
		if
			self.keyPluginName ~= MOCK_PLUGIN_NAME
			and not success
			and not string.find(translated, "LocalizationTable or parent tables do not contain a translation")
		then
			-- TODO DEVTOOLS-4532: Use logger contextItem for this
			warn(translated, debug.traceback())
		end
	end

	-- Fall back to the given key if there is no translation for this value
	-- Useful for finding misspelled or missing keys
	return stringKey
end

function Localization:destroy()
	if self.localeChangedConnection then
		self.localeChangedConnection:Disconnect()
	end
end

function Localization:updateLocaleAndTranslator()
	-- the locale has changed, update the translators
	self.locale = self.getLocale()
	for key, project in pairs(self.projects) do
		self.translators[key] = project.translationResourceTable:GetTranslator(self.locale)
		self.fallbackTranslators[key] = project.stringResourceTable:GetTranslator(FALLBACK_LOCALE)
	end
end

-- TODO STUDIOPLAT-28189 modularize into localization library
-- BEGIN CODE FROM LUAAPPS' LOCALIZATION LIBRARY --
--[[
	Locale specification:
	[DECIMAL_SEPARATOR] = string for decimal point, if needed
	[GROUP_DELIMITER] = string for groupings of numbers left of the decimal
	List section = abbreviations for language, in increasing order

	Missing features in this code:
	- No support for differences in number of digits per GROUP_DELIMITER.
	Some Chinese dialects group by 10000 instead of 1000.
	- No support for variable differences in number of digits per GROUP_DELIMITER.
	Indian natural language groups the first 3 to left of decimal, then every 2 after that.

	See https://en.wikipedia.org/wiki/Decimal_separator#Digit_grouping
]]
local RoundingBehaviour = require(Framework.Util.RoundingBehaviour)
local localeInfos = {}
-- Separator aliases to help avoid spelling errors
local DECIMAL_SEPARATOR = "decimalSeparator"
local GROUP_DELIMITER = "groupDelimiter"

localeInfos["en-us"] = {
	[DECIMAL_SEPARATOR] = ".",
	[GROUP_DELIMITER] = ",",
	{ 1, "" },
	{ 1e3, "K" },
	{ 1e6, "M" },
	{ 1e9, "B" },
}

localeInfos["es-es"] = {
	[DECIMAL_SEPARATOR] = ",",
	[GROUP_DELIMITER] = ".",
	{ 1, "" },
	{ 1e3, " mil" },
	{ 1e6, " M" },
}

localeInfos["fr-fr"] = {
	[DECIMAL_SEPARATOR] = ",",
	[GROUP_DELIMITER] = " ",
	{ 1, "" },
	{ 1e3, " k" },
	{ 1e6, " M" },
	{ 1e9, " Md" },
}

localeInfos["de-de"] = {
	[DECIMAL_SEPARATOR] = ",",
	[GROUP_DELIMITER] = " ",
	{ 1, "" },
	{ 1e3, " Tsd." },
	{ 1e6, " Mio." },
	{ 1e9, " Mrd." },
}

localeInfos["pt-br"] = {
	[DECIMAL_SEPARATOR] = ",",
	[GROUP_DELIMITER] = ".",
	{ 1, "" },
	{ 1e3, " mil" },
	{ 1e6, " mi" },
	{ 1e9, " bi" },
}

localeInfos["zh-cn"] = {
	[DECIMAL_SEPARATOR] = ".",
	[GROUP_DELIMITER] = ",", -- Chinese commonly uses 3 digit groupings, despite 10000s rule
	{ 1, "" },
	{ 1e3, "千" },
	{ 1e4, "万" },
	{ 1e8, "亿" },
}

localeInfos["zh-cjv"] = {
	[DECIMAL_SEPARATOR] = ".",
	[GROUP_DELIMITER] = ",",
	{ 1, "" },
	{ 1e3, "千" },
	{ 1e4, "万" },
	{ 1e8, "亿" },
}

localeInfos["zh-tw"] = {
	[DECIMAL_SEPARATOR] = ".",
	[GROUP_DELIMITER] = ",",
	{ 1, "" },
	{ 1e3, "千" },
	{ 1e4, "萬" },
	{ 1e8, "億" },
}

localeInfos["ko-kr"] = {
	[DECIMAL_SEPARATOR] = ".",
	[GROUP_DELIMITER] = ",",
	{ 1, "" },
	{ 1e3, "천" },
	{ 1e4, "만" },
	{ 1e8, "억" },
}

localeInfos["ja-jp"] = {
	[DECIMAL_SEPARATOR] = ".",
	[GROUP_DELIMITER] = ",",
	{ 1, "" },
	{ 1e3, "千" },
	{ 1e4, "万" },
	{ 1e8, "億" },
}

localeInfos["it-it"] = {
	[DECIMAL_SEPARATOR] = ",",
	[GROUP_DELIMITER] = " ",
	{ 1, "" },
	{ 1e3, " mila" },
	{ 1e6, " Mln" },
	{ 1e9, " Mld" },
}

localeInfos["ru-ru"] = {
	[DECIMAL_SEPARATOR] = ",",
	[GROUP_DELIMITER] = ".",
	{ 1, "" },
	{ 1e3, " тыс" },
	{ 1e6, " млн" },
	{ 1e9, " млрд" },
}

localeInfos["id-id"] = {
	[DECIMAL_SEPARATOR] = ",",
	[GROUP_DELIMITER] = ".",
	{ 1, "" },
	{ 1e3, " rb" },
	{ 1e6, " jt" },
	{ 1e9, " M" },
}

localeInfos["vi-vn"] = {
	[DECIMAL_SEPARATOR] = ".",
	[GROUP_DELIMITER] = " ",
	{ 1, "" },
	{ 1e3, " N" },
	{ 1e6, " Tr" },
	{ 1e9, " T" },
}

localeInfos["th-th"] = {
	[DECIMAL_SEPARATOR] = ".",
	[GROUP_DELIMITER] = ",",
	{ 1, "" },
	{ 1e3, " พ" },
	{ 1e4, " ม" },
	{ 1e5, " ส" },
	{ 1e6, " ล" },
}

localeInfos["tr-tr"] = {
	[DECIMAL_SEPARATOR] = ",",
	[GROUP_DELIMITER] = ".",
	{ 1, "" },
	{ 1e3, " B" },
	{ 1e6, " Mn" },
	{ 1e9, " Mr" },
}

-- Aliases for languages that use the same mappings.
localeInfos["en-gb"] = localeInfos["en-us"]
localeInfos["es-mx"] = localeInfos["es-es"]

local function findDecimalPointIndex(numberStr)
	return string.find(numberStr, "%.") or #numberStr + 1
end

-- Find the base 10 offset needed to make 0.1 <= abs(number) < 1
local function findDecimalOffset(number)
	if number == 0 then
		return 0
	end

	local offsetToOnesRange = math.floor(math.log10(math.abs(number)))
	return -(offsetToOnesRange + 1) -- Offset one more (or less) digit
end

local function roundToSignificantDigits(number, significantDigits, roundingBehaviour)
	local offset = findDecimalOffset(number)
	local multiplier = 10 ^ (significantDigits + offset)
	local significand
	if roundingBehaviour == RoundingBehaviour.Truncate then
		significand = math.modf(number * multiplier)
	else
		significand = math.floor(number * multiplier + 0.5)
	end
	return significand / multiplier
end

local function addGroupDelimiters(numberStr, delimiter)
	local formatted = numberStr
	local delimiterSubStr = string.format("%%1%s%%2", delimiter)
	while true do
		local lFormatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", delimiterSubStr)
		formatted = lFormatted
		if k == 0 then
			break
		end
	end
	return formatted
end

local function findDenominationEntry(localeInfo, number, roundingBehaviour)
	local denominationEntry = localeInfo[1] -- Default to base denominations
	local absOfNumber = math.abs(number)
	for i = #localeInfo, 2, -1 do
		local entry = localeInfo[i]
		local baseValue
		if roundingBehaviour == RoundingBehaviour.Truncate then
			baseValue = entry[1]
		else
			baseValue = entry[1] - localeInfo[i - 1][1] / 2
		end
		if baseValue <= absOfNumber then
			denominationEntry = entry
			break
		end
	end
	return denominationEntry
end

-- number : (int) the number to localize. e.g. 12,000 --> 12K in english, 12 mil in Spanish.
function Localization:localizeNumber(number)
	if number == 0 then
		return "0"
	end

	local localeInfo = localeInfos[self.locale]
	if not localeInfo then
		localeInfo = localeInfos[FALLBACK_LOCALE]
	end

	if localeInfo.groupDelimiter then
		return addGroupDelimiters(number, localeInfo.groupDelimiter)
	end

	return number
end

-- number : (int) the number to localize and abbreviate. "Abbreviate" just means round to some number of sig digits
-- roundingBehaviour : (enum RoundingBehaviour) the Rounding Behaviour enum to specify whether the number should be truncated or rounded
-- numSignificantDigits : (optional, int) the number of significant digits (https://en.wikipedia.org/wiki/Significant_figures) to include in the number. Default 3.
function Localization:localizeAndAbbreviateNumber(number, roundingBehaviour, numSignificantDigits)
	if number == 0 then
		return "0"
	end

	if roundingBehaviour == nil then
		roundingBehaviour = RoundingBehaviour.RoundToClosest
	end

	if numSignificantDigits == nil then
		numSignificantDigits = 3
	end

	local localeInfo = localeInfos[self.locale]
	if not localeInfo then
		localeInfo = localeInfos[FALLBACK_LOCALE]
	end

	-- select which denomination we are going to use
	local denominationEntry = findDenominationEntry(localeInfo, number, roundingBehaviour)
	local baseValue = denominationEntry[1]
	local symbol = denominationEntry[2]

	-- Round to required significant digits
	local significantQuotient = roundToSignificantDigits(number / baseValue, numSignificantDigits, roundingBehaviour)

	-- trim to 1 decimal point
	local trimmedQuotient
	if roundingBehaviour == RoundingBehaviour.Truncate then
		trimmedQuotient = math.modf(significantQuotient * 10) / 10
	else
		trimmedQuotient = math.floor(significantQuotient * 10 + 0.5) / 10
	end
	local trimmedQuotientString = tostring(trimmedQuotient)

	-- Split the string into integer and fraction parts
	local decimalPointIndex = findDecimalPointIndex(trimmedQuotientString)
	local integerPart = string.sub(trimmedQuotientString, 1, decimalPointIndex - 1)
	local fractionPart = string.sub(trimmedQuotientString, decimalPointIndex + 1, #trimmedQuotientString)

	-- Add group delimiters to integer part
	if localeInfo.groupDelimiter then
		integerPart = addGroupDelimiters(integerPart, localeInfo.groupDelimiter)
	end

	if #fractionPart > 0 then
		return integerPart .. localeInfo.decimalSeparator .. fractionPart .. symbol
	else
		return integerPart .. symbol
	end
end
-- END CODE FROM LUAAPPS' LOCALIZATION LIBRARY --

function Localization.mock(props)
	props = props or {}

	local mockResourceTable = {
		GetTranslator = function()
			local translator = {
				FormatByKey = function(_, key, args)
					local argString = ""

					if args then
						if type(args) ~= "table" then
							error("Args must be a table")
						else
							for key, value in pairs(args) do
								argString = string.format("%s,%s:%s", argString, key, value)
							end
							argString = string.sub(argString, 2)
						end
					end

					-- return a string like Studio.Test.myScope.myKey:[argKey:argValue]
					return string.format("%s:[%s]", key, argString)
				end,
			}

			return translator
		end,
	}

	local getLocale = props.getLocale or function()
		return "en-us"
	end

	-- create a mock localization object for tests
	return Localization.new(Cryo.Dictionary.join({
		-- create a mock resource file that mimics the real thing
		stringResourceTable = mockResourceTable,
		translationResourceTable = mockResourceTable,

		pluginName = MOCK_PLUGIN_NAME,

		-- for tests, don't connect to any system signals to ensure stuff doesn't change mid test
		overrideLocaleChangedSignal = Signal.new(),
		getLocale = getLocale,
	}, props or {}))
end

return Localization
