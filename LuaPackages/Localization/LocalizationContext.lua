--[[
	Contains all of the loaded translations and provides methods to translate
	keys and parameters to strings.

	LocalizationContext doesn't handle loading of specific languages, but does
	recommend what languages should be loaded (if available).

	To create a new LocalizationContext:

		local currentLanguage = LocalizationService.RobloxLocaleId
		local languages = LocalizationContext.getRelevantLanguages(currentLanguage)

		local translations = {}

		-- Use the list of languages to load a set of translation tables here.
		-- A translation table is just a map from key to the translated string.
		-- `translations` is a map from language to translation tables.

		local context = LocalizationContext.new(translations)

		-- Get a string that doesn't require parameters
		context:getString(currentLanguage, "SOME_KEY")

		-- Passing parameters:
		context:getString(currentLanguage, "FANCY_KEY", {
			apples = 5,
		})

	Additional languages can be added after the LocalizationContext is created
	by calling `addTranslations`. Whenever the user's language changes, call
	`getRelevantLanguages` to get a new list of languages to load, load them,
	then call `addTranslations` to merge them in with the existing tables.
]]

--[[
	Finds the base language code for the given language, if there is one.

	We assume:
		* Language codes are of the form LANGUAGE or LANGUAGE_COUNTRY
		* LANGUAGE_COUNTRY is more specific than LANGUAGE
]]

local LocalizationContext = {}
LocalizationContext.__index = LocalizationContext

function LocalizationContext.getBaseLanguage(languageName)
	return languageName:match("^(%w+)[-_]")
end

function LocalizationContext.new(translations)
	local self = {
		_translations = translations,
	}

	setmetatable(self, LocalizationContext)

	return self
end

--[[
	Add translations to an existing LocalizationContext, such as when a user
	switches languages while the app is running.
]]
function LocalizationContext:addTranslations(translations)
	self._translations = translations
end

--[[
	Yields a list of languages relevant to the current user.

	When the user's language changes, query this value, load those translations,
	and add them to the LocalizationContext using addTranslations.
]]
function LocalizationContext.getRelevantLanguages(primaryLanguage)
	local languages = {}

	-- Load the language itself if available.
	table.insert(languages, primaryLanguage)

	-- If there's a fallback for our current language, load that as well.
	local fallbackLanguage = LocalizationContext.getBaseLanguage(primaryLanguage)
	if fallbackLanguage then
		table.insert(languages, fallbackLanguage)
	end

	-- We should always load English, as it should contain every valid key.
	table.insert(languages, "en-us")
	return languages
end

function LocalizationContext:_getSourceString(language, key)
	local translationTable = self._translations[language]

	if not translationTable then
		return nil
	end

	return translationTable[key]
end

--[[
	Translate a key with a set of arguments into the given language.

	`language` must be explicitly provided
]]
function LocalizationContext:getString(language, key, parameters)
	local exactValue = self:_getSourceString(language, key)

	local baseLanguage = LocalizationContext.getBaseLanguage(language)

	local baseLanguageValue
	if baseLanguage then
		baseLanguageValue = self:_getSourceString(baseLanguage, key)
	end

	local englishValue = self:_getSourceString("en-us", key)

	-- We try to find source strings in descending priority here:
	local sourceString = exactValue or baseLanguageValue or englishValue

	-- Missing translations are considered a developer error, so we throw here.
	if not sourceString then
		local message = (
			"Couldn't find value for translation key %q!\n" ..
			"Tried these languages: %s, %s, %s"
		):format(
			key,
			language, baseLanguage, "en-us"
		)
		error(message, 2)
	end

	-- If we have parameters to insert into the string, put them in!
	-- We don't check for missing parameters, should we in the future?
	if parameters then
		return (sourceString:gsub("{(.-)}", parameters))
	else
		return sourceString
	end
end

return LocalizationContext