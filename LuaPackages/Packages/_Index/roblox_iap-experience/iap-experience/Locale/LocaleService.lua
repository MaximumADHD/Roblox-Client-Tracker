local Root = script.Parent.Parent

local Symbol = require(Root.Symbols.Symbol)

local DEBUG_LOCALIZATION = false

--[[
	This is a marker used to indicate that a provided param needs a locale-aware
	formatting pass. We need this for nested localization and number formatting
]]
local FormattedParamTag = Symbol.named("FormattedParam")

local function isFormattedParam(paramValue)
	return typeof(paramValue) == "table" and paramValue[FormattedParamTag] == true
end

local function createFormattedParam(formatFunc)
	return {
		[FormattedParamTag] = true,
		format = formatFunc,
	}
end

--[[
	Looks up the given key in the localization context's translation table
]]
local function getLocalizedString(localeContext, key)
	local translations = localeContext.translations
	local fallbackTranslations = localeContext.fallbackTranslations

	if DEBUG_LOCALIZATION and translations[key] == nil then
		warn(("Missing translation for %s in locale %s"):format(key, localeContext.locale))
	end

	if fallbackTranslations ~= nil and translations[key] == nil then
		return fallbackTranslations[key]
	end

	return translations[key]
end

local LocaleService = {}

--[[
	Generates a placeholder for a param substitution that needs
	its own localization pass
]]
function LocaleService.nestedKeyParam(key)
	return createFormattedParam(function(localeContext)
		return getLocalizedString(localeContext, key)
	end)
end

--[[
	The primary function of this object

	Retrieves a localized string from the provided context with the
	given key and performs parameter substitutions
]]
function LocaleService.getString(localeContext, key, params)
	assert(localeContext ~= nil, "Must provide valid localization context")
	local localizedString = getLocalizedString(localeContext, key)
	assert(localizedString ~= nil, "Unable to find localization with key: "..key)
	if localizedString and params ~= nil then
		for param, value in pairs(params) do
			local replacement = value
			local paramPlaceholder = ("{%s}"):format(param)

			if isFormattedParam(value) then
				replacement = value.format(localeContext)
			end

			localizedString = string.gsub(localizedString, paramPlaceholder,
				function()
					return replacement
				end)
		end
	end

	return localizedString
end

return LocaleService
