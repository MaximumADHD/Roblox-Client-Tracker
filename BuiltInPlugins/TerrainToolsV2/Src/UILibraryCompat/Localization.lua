--[[
	Same as UILibrary Localization.lua but with dev framework Signal
]]

game:DefineFastFlag("FixStudioLocalizationLocaleId", false)

-- services
local LocalizationService = game:GetService("LocalizationService")
local StudioService = game:GetService("StudioService")

-- libraries
local Plugin = script.Parent.Parent.Parent
local Framework = Plugin.Packages.Framework
local Signal = require(Framework.Util).Signal

-- constants
local FALLBACK_LOCALE = "en-us"

local Localization = {}
Localization.__index = Localization

function Localization.new(props)
	assert(type(props) == "table", "Localization props is expected to be a table.")
	assert(props.stringResourceTable ~= nil, "Localization must have a .csv string resource table for English strings")
	assert(props.translationResourceTable ~= nil, "Localization must have a .csv string resource table of translations")
	assert(type(props.pluginName) == "string", "Please specify the plugin's name")

	local stringResourceTable = props.stringResourceTable
	local translationResourceTable = props.translationResourceTable
	local overrideGetLocale = props.getLocale
	local overrideLocaleId = props.overrideLocaleId
	local overrideLocaleChangedSignal = props.overrideLocaleChangedSignal
	local keyNamespace = props.namespace
	local keyPluginName = props.pluginName

	if keyNamespace == nil then
		keyNamespace = "Studio"
	end

	local externalLocaleChanged
	if overrideLocaleChangedSignal then
		externalLocaleChanged = overrideLocaleChangedSignal
	elseif game:GetFastFlag("FixStudioLocalizationLocaleId") then
		externalLocaleChanged = StudioService:GetPropertyChangedSignal("StudioLocaleId")
	else
		externalLocaleChanged = LocalizationService:GetPropertyChangedSignal("RobloxLocaleId")
	end

	-- a function that gets called when the locale changes, returns the new locale
	local function getLocale()
		if overrideGetLocale then
			return overrideGetLocale()
		end

		if overrideLocaleId ~= nil then
			return overrideLocaleId
		elseif game:GetFastFlag("FixStudioLocalizationLocaleId") then
			return StudioService["StudioLocaleId"]
		else
			return LocalizationService["RobloxLocaleId"]
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

		-- keyNamespace : (string)
		-- the first field used to construct a key
		keyNamespace = keyNamespace,

		-- keyPluginName : (string)
		-- the second field used to construct a key
		keyPluginName = keyPluginName,

		-- getLocale : (function<string>())
		--  gets the current locale string
		getLocale = getLocale,

		-- stringResourceTable : a CSV file containing all of the English strings
		--  this is converted into a proper resource by Rojo
		stringResourceTable = stringResourceTable,

		-- translationResourceTable : a CSV file containing all of the translated strings
		--  this is converted into a proper resource by Rojo
		translationResourceTable = translationResourceTable,

		-- translator & fallbackTranslator : (Translator)
		--  objects that handle the string formatting from the current stringResourceTable
		translator = nil,
		fallbackTranslator = nil
	}
	setmetatable(self, Localization)

	-- listen to changes to the locale to alert all listeners of the change
	self.localeChangedConnection = self.externalLocaleChanged:Connect(function()
		self:updateLocaleAndTranslator()
		self.localeChanged:Fire(self.locale)
	end)

	-- create the translators for the first time
	self:updateLocaleAndTranslator()

	return self
end

-- scope : (string) the general group of data that the key belongs to
-- key : (string) the id of the string in the resource table
-- ... : (optional, Variant) values used to format a string
function Localization:getText(scope, key, ...)
	assert(type(scope) == "string", "Cannot fetch the string without a scope")
	assert(type(key) == "string", "Cannot fetch a string without the key")

	local stringKey = string.format("%s.%s.%s.%s", self.keyNamespace, self.keyPluginName, scope, key)
	local args = {...}

	local function getTranslation(translator)
		if not translator then
			return false, nil
		end

		local success, result = pcall(function()
			return translator:FormatByKey(stringKey, args)
		end)
		return success, result
	end

	-- optimize for one lookup when the locale is English
	local success
	local translated
	if self.locale == FALLBACK_LOCALE then
		-- English strings are only written into the development string table,
		--  so don't bother looking up the key in the localization table.
		success, translated = getTranslation(self.fallbackTranslator)
		if success then
			return translated
		end

	else
		-- try to find a translation in our translation file
		success, translated = getTranslation(self.translator)
		if success then
			return translated
		end

		-- If no translation exists for this locale id, fall back to default (English)
		success, translated = getTranslation(self.fallbackTranslator)
		if success then
			return translated
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
	self.translator = self.translationResourceTable:GetTranslator(self.locale)
	self.fallbackTranslator = self.stringResourceTable:GetTranslator(FALLBACK_LOCALE)
end

-- changeSignal : (Signal, optional) a signal to trigger localization changes
function Localization.mock(localizationChangedSignal)
	local changeSignal
	if localizationChangedSignal then
		changeSignal = localizationChangedSignal
	else
		changeSignal = Signal.new()
	end

	-- any time the localizationChangedSignal fires, this will get the next one
	-- this should trigger re-renders for any elements
	local currentLocale = 0
	local localeIDs = {"en-us", "es", "es-es", "ko", "ja"}
	local function getLocale()
		currentLocale = (currentLocale + 1) % 5
		local nextLocale = localeIDs[currentLocale]
		return nextLocale
	end

	local fakeResourceTable = {
		GetTranslator = function(stringResourceTableSelf, localeId)
			local translator = {
				FormatByKey = function(translatorSelf, key, args)
					if not args then
						args = {}
					elseif type(args) ~= "table" then
						error("Args must be a table")
					end

					-- return a string like en-us|TEST.MOCK_LOCALIZATION.A.hello_world:[a,b,c,10]
					return string.format("%s|%s:[%s]", localeId,key, table.concat(args, ","))
				end,
			}

			return translator
		end
	}

	-- create a fake localization object for tests
	return Localization.new({
		-- create a fake resource file that mimics the real thing
		stringResourceTable = fakeResourceTable,
		translationResourceTable = fakeResourceTable,

		namespace = "TEST",
		pluginName = "MOCK_LOCALIZATION",

		-- for tests, don't connect to any system signals to ensure stuff doesn't change mid test
		overrideLocaleChangedSignal = changeSignal,
		getLocale = getLocale,
	})
end


return Localization
