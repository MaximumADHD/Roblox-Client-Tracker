local PurchaseError = require(script.Parent.Parent.PurchaseError)
local Symbol = require(script.Parent.Parent.Symbol)

local KeyMappings = require(script.Parent.KeyMappings)
local addGroupDelimiters = require(script.Parent.Parent.addGroupDelimiters)

local DEBUG_LOCALIZATION = false

--[[
	Locale-specific group delimiters for displaying numbers. Used to
	format values like 100000 to strings like "100,000". This table
	does not provide any info regarding decimal separators
]]
local groupDelimiterByLocale = {
	["en-us"] = ",",
	["en-gb"] = ",",
	["es-mx"] = ",",
	["es-es"] = ".",
	["fr-fr"] = " ",
	["de-de"] = " ",
	["pt-br"] = ".",
	["zh-cn"] = ",",
	["zh-tw"] = ",",
	["ko-kr"] = ",",
	["ja-jp"] = ",",
	["it-it"] = " ",
	["ru-ru"] = ".",
	["id-id"] = ".",
	["vi-vn"] = ".",
	["th-th"] = ",",
	["tr-tr"] = ".",
}

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
local function getLocalizedString(localizationContext, key)
	local translations = localizationContext.translations

	if DEBUG_LOCALIZATION and translations[key] == nil then
		warn(("Missing translation for %s in locale %s"):format(key, localizationContext.locale))
	end

	return translations[key]
end

local LocalizationService = {}

function LocalizationService.formatNumber(localizationContext, number)
	local delimiter = groupDelimiterByLocale[localizationContext.locale]

	return addGroupDelimiters(number, delimiter)
end

--[[
	Generates a placeholder for a number param that needs locale-aware formatting
]]
function LocalizationService.numberParam(number)
	return createFormattedParam(function(localizationContext)
		return LocalizationService.formatNumber(localizationContext, number)
	end)
end

--[[
	Generates a placeholder for a param substitution that needs
	its own localization pass
]]
function LocalizationService.nestedKeyParam(key)
	return createFormattedParam(function(localizationContext)
		return getLocalizedString(localizationContext, key)
	end)
end

--[[
	Utility function returns the localization key for a given asset id
]]
function LocalizationService.getAssetTypeKey(assetTypeId)
	assert(typeof(assetTypeId) == "number" or typeof(assetTypeId) == "string",
		"provided asset type must be a number or string")

	local assetType = KeyMappings.AssetTypeById[tostring(assetTypeId)]

	if DEBUG_LOCALIZATION and assetType == nil then
		warn("Invalid Asset Type id " .. tostring(assetTypeId))
	end

	return assetType
end

--[[
	Utility function returns the localization key for a given
	builders club level
]]
function LocalizationService.getBuildersClubLevelKey(bcLevelId)
	assert(typeof(bcLevelId) == "number" or typeof(bcLevelId) == "string",
		"provided builders club level must be a number")
	local bcLevel = KeyMappings.BuildersClubLevelById[tostring(bcLevelId)]

	if DEBUG_LOCALIZATION and bcLevel == nil then
		warn("Invalid Builders Club Level id " .. tostring(bcLevelId))
	end

	return bcLevel
end

--[[
	Utility function to retrieve relevant localization key for various
	types of errors that may be encountered
]]
function LocalizationService.getErrorKey(errorType)
	assert(PurchaseError.isMember(errorType),
		"provided value " .. tostring(errorType) .. " is not a member of PurchaseError enum")

	return KeyMappings.PurchaseErrorKey[errorType]
end

--[[
	The primary function of this object

	Retrieves a localized string from the provided context with the
	given key and performs parameter substitutions
]]
function LocalizationService.getString(localizationContext, key, params)
	assert(localizationContext ~= nil, "Must provide valid localization context")

	local localizedString = getLocalizedString(localizationContext, key)

	if params ~= nil then
		for param, value in pairs(params) do
			local replacement = value
			local paramPlaceholder = ("{%s}"):format(param)

			if isFormattedParam(value) then
				replacement = value.format(localizationContext)
			end

			localizedString = string.gsub(localizedString, paramPlaceholder, replacement)
		end
	end

	return localizedString
end

return LocalizationService