local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Framework).Util.Promise

local LocalizationPageController = {}

LocalizationPageController.__index = LocalizationPageController

function LocalizationPageController.new(networking)
	local self = {}
	self.__networking = networking
	return setmetatable(self, LocalizationPageController)
end

function LocalizationPageController:localeSupportedLocalesGET()
	local networking = self.__networking
	return networking:get("locale", "/v1/locales/supported-locales")
end

function LocalizationPageController:localeLocalesGET(displayValueLocale)
	local networking = self.__networking
	return networking:get("locale", "/v1/locales", {
		Params = {
			displayValueLocale = displayValueLocale,
		}
	})
end

function LocalizationPageController:gameinternationalizationSourceLanguageGamesGET(gameId)
	local networking = self.__networking
	return networking:get("gameinternationalization", "/v1/source-language/games/" .. gameId)
end

function LocalizationPageController:gameinternationalizationSourceLanguageGamesPATCH(gameId, sourceLanguage)
	local networking = self.__networking
	return networking:patch("gameinternationalization", "/v1/source-language/games/" .. gameId, {
		Params = {
			languageCode = sourceLanguage,
		}
	})
end

function LocalizationPageController:gameinternationalizationAutoLocalizationGamesAutoLocalizationTablePOST(gameId)
	local networking = self.__networking
	return networking:post("gameinternationalization",
		"/v1/autolocalization/games/" .. gameId .. "/autolocalizationtable", {
		Body = {},
	})
end

function LocalizationPageController:gameinternationalizationAutoLocalizationGamesSettingsPATCH(gameId, autoTextCaptureEnabledValue, useTranslatedContentEnabledValue)
	local networking = self.__networking
	return 	networking:patch("gameinternationalization",
		"/v1/autolocalization/games/" .. gameId .. "/settings", {
		Body = {
			isAutolocalizationEnabled = autoTextCaptureEnabledValue,
			shouldUseLocalizationTable = useTranslatedContentEnabledValue,
		}
	})
end

function LocalizationPageController:gameinternationalizationAutomaticTranslationGamesFeatureStatusGET(gameId)
	local networking = self.__networking
	return networking:get("gameinternationalization", "/v1/automatic-translation/games/" .. gameId .. "/feature-status")
end

function LocalizationPageController:gameinternationalizationAutomaticTranslationLanguagesTargetLanguagesGET(sourceLanguage)
	local networking = self.__networking
	return networking:get("gameinternationalization",
		"/v1/automatic-translation/languages/" .. sourceLanguage .. "/target-languages")
end

function LocalizationPageController:gameinternationalizationSupportedLanguagesGamesAutomaticTranslationStatusGET(gameId)
	local networking = self.__networking
	return networking:get("gameinternationalization", "/v1/supported-languages/games/" .. gameId .. "/automatic-translation-status")
end

function LocalizationPageController:gameinternationalizationSupportedLanguagesGamesPATCH(gameId, config)
	local networking = self.__networking
	return networking:patch("gameinternationalization", "/v1/supported-languages/games/" .. gameId, {
		Body = config
	})
end

function LocalizationPageController:gameinternationalizationSupportedLanguagesGamesLanguagesAutomaticTranslationStatusPATCH(gameId, config)
	local networking = self.__networking
	local requests = {}
	for languageCode, enabled in pairs(config) do
		local httpRequest = networking:patch("gameinternationalization",
			"/v1/supported-languages/games/" .. gameId .. "/languages/" .. languageCode .. "/automatic-translation-status", {
				Body = enabled
			})
		table.insert(requests, httpRequest)
	end
	return requests
end

function LocalizationPageController:getSupportedLanguages()
	local response = self:localeSupportedLocalesGET():await()

	local supportedLanguages = {}
	local body = response.responseBody
	for _, item in pairs(body.supportedLocales) do
		supportedLanguages[item.language.languageCode] = item.language.nativeName
	end
	return supportedLanguages
end

function LocalizationPageController:getLanguageCodeToNames(displayValueLocale)
	local response = self:localeLocalesGET(displayValueLocale):await()

	local lanugageCodeToNames = {}
	for _, item in pairs(response.responseBody.data) do
		local languageCode = item.locale.language.languageCode
		if lanugageCodeToNames[languageCode] == nil then
			lanugageCodeToNames[languageCode] = item.locale.language.name
		end
	end
	return lanugageCodeToNames
end

function LocalizationPageController:getSourceLanguage(gameId)
	local response = self:gameinternationalizationSourceLanguageGamesGET(gameId):await()

	return response.responseBody.languageCode
end

function LocalizationPageController:setSourceLanguage(gameId, sourceLanguage)
	self:gameinternationalizationSourceLanguageGamesPATCH(gameId, sourceLanguage):await()
end

function LocalizationPageController:getAutoLocalizationSettings(gameId)
	local response = self:gameinternationalizationAutoLocalizationGamesAutoLocalizationTablePOST(gameId):await()

	local body = response.responseBody
	return body.isAutolocalizationEnabled, body.shouldUseLocalizationTable
end

function LocalizationPageController:setAutoLocalizationSettings(gameId, autoTextCaptureEnabledValue, useTranslatedContentEnabledValue)
	self:gameinternationalizationAutoLocalizationGamesSettingsPATCH(gameId, autoTextCaptureEnabledValue, useTranslatedContentEnabledValue):await()
end

function LocalizationPageController:getAutoTranslationFeatureStatus(gameId)
	local response = self:gameinternationalizationAutomaticTranslationGamesFeatureStatusGET(gameId):await()

	return response.responseBody.isAutomaticTranslationAllowed
end

function LocalizationPageController:getAutoTranslationTargetLanguages(sourceLanguage)
	local response = self:gameinternationalizationAutomaticTranslationLanguagesTargetLanguagesGET(sourceLanguage):await()

	local targetLanguages = {}
	for _, item in pairs(response.responseBody.targetLanguages) do
		targetLanguages[item.languageCode] = item.isAutomaticTranslationAllowed
	end
	return targetLanguages
end

function LocalizationPageController:getAutoTranslationSetings(gameId)
	local response = self:gameinternationalizationSupportedLanguagesGamesAutomaticTranslationStatusGET(gameId):await()

	local autoTranslationSettings = {}
	for _, item in pairs(response.responseBody.data) do
		autoTranslationSettings[item.languageCode] = item.isAutomaticTranslationEnabled
	end
	return autoTranslationSettings
end

function LocalizationPageController:setAutoTranslationSetings(gameId, config)
	local addSupportedLanguagesBody = {}
	for languageCode, enabled in pairs(config) do
		if enabled then
			table.insert(addSupportedLanguagesBody, {
				["languageCodeType"] = "Language",
				["languageCode"] = languageCode,
				["delete"] = false
			})
		end
	end
	self:gameinternationalizationSupportedLanguagesGamesPATCH(gameId, addSupportedLanguagesBody):await()

	local httpRequests = self:gameinternationalizationSupportedLanguagesGamesLanguagesAutomaticTranslationStatusPATCH(gameId, config)
	Promise.all(httpRequests):await()
end

return LocalizationPageController