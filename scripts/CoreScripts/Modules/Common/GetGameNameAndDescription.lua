local CorePackages = game:GetService("CorePackages")

local Promise = require(CorePackages.Promise)

local GameRequests = require(script.Parent.GameRequests)

local SupportedLanguagesFetched = false
local StartedFetchingSupportedLanaguages = false
local FetchedSupportedLanguagesEvent = Instance.new("BindableEvent")
local CachedSupportedLanguages = nil

local FFlagFixGetGameNameAndDescription = game:DefineFastFlag("FixGetGameNameAndDescription", false)

local FALLBACK_LANGUAGE_CONSTANT = "FALLBACK"

local FALLBACK_SOURCE_LOCALE = "en-us"

local function GetSupportedLanguagesPromise(networkImpl)
	if SupportedLanguagesFetched then
		return Promise.resolve(CachedSupportedLanguages)
	elseif StartedFetchingSupportedLanaguages then
		return Promise.new(function(resolve, reject)
			local success = FetchedSupportedLanguagesEvent.Event:Wait()
			if success then
				resolve(CachedSupportedLanguages)
			else
				reject()
			end
		end)
	end

	StartedFetchingSupportedLanaguages = true

	return GameRequests.GetSupportedLanguages(networkImpl):andThen(function(result)
		if FFlagFixGetGameNameAndDescription then
			SupportedLanguagesFetched = true
		end
		CachedSupportedLanguages = result
		FetchedSupportedLanguagesEvent:Fire(true)
		return Promise.resolve(result)
	end,
	function()
		StartedFetchingSupportedLanaguages = false
		FetchedSupportedLanguagesEvent:Fire(false)
		return Promise.reject()
	end)
end

local function PerGameCachedRequestFactoryFunction(Request)
	local cache = {}

	return function(networkImpl, gameId)
		if cache[gameId] then
			if cache[gameId].Fetched then
				return Promise.resolve(cache[gameId].Result)
			else
				local success = cache[gameId].FinishedEvent.Event:Wait()
				if success then
					return Promise.resolve(cache[gameId].Result)
				else
					return Promise.reject()
				end
			end
		else
			cache[gameId] = {
				Fetched = false,
				FinishedEvent = Instance.new("BindableEvent"),
				Result = nil,
			}

			return Request(networkImpl, gameId):andThen(function(result)
				cache[gameId].Fetched = true
				cache[gameId].Result = result
				cache[gameId].FinishedEvent:Fire(true)
				return Promise.resolve(result)
			end,
			function()
				cache[gameId].FinishedEvent:Fire(false)
				return Promise.reject()
			end)
		end
	end
end

local function ProcessNamesAndDescriptionsResult(result)
	local data = result.responseBody.data
	local gameNames = {}
	local gameDescriptions = {}

	for _, nameDescription in ipairs(data) do
		local languageCode = nameDescription.languageCode or FALLBACK_LANGUAGE_CONSTANT
		if gameNames[languageCode] == nil then
			gameNames[languageCode] = nameDescription.name
		end
		if gameDescriptions[languageCode] == nil then
			gameDescriptions[languageCode] = nameDescription.description
		end
	end

	return gameNames, gameDescriptions
end

local function ProcessSupportedLanaguagesResult(result)
	local data = result.responseBody.data
	local languageCodeMap = {}

	for _, localeInfo in ipairs(data) do
		-- Locale being repeated here twice looks wrong but it is correct.
		-- Web passes in the locales with _ as a seperator but we use - on the client
		languageCodeMap[localeInfo.locale.language.languageCode] = localeInfo.locale.locale:gsub("_", "-")
	end

	return languageCodeMap
end

local function ProcessSourceLanguageResult(result)
	local data = result.responseBody

	return data.languageCode
end

local GetNamesAndDescriptionsPromise = PerGameCachedRequestFactoryFunction(GameRequests.GetNamesAndDescriptions)
local GetSourceLanguagePromise = PerGameCachedRequestFactoryFunction(GameRequests.GetSourceLanguage)

return function(networkImpl, gameId)
	local namesAndDescriptionsPromise = GetNamesAndDescriptionsPromise(networkImpl, gameId)
	local supportedLanguagesPromise = GetSupportedLanguagesPromise(networkImpl)
	local sourceLanguagesPromise = GetSourceLanguagePromise(networkImpl, gameId)

	return Promise.all(
		namesAndDescriptionsPromise,
		supportedLanguagesPromise,
		sourceLanguagesPromise):andThen(function(results)
		local namesAndDescriptionsResult = results[1]
		local supportedLanaguesResult = results[2]
		local sourceLanagueResult = results[3]

		local gameNamesLanguageCodeMap, gameDescriptionsLanguageCodeMap = ProcessNamesAndDescriptionsResult(
			namesAndDescriptionsResult)
		local languageCodeMap = ProcessSupportedLanaguagesResult(supportedLanaguesResult)
		local sourceLangaugeCode = ProcessSourceLanguageResult(sourceLanagueResult)
		local sourceLocale = languageCodeMap[sourceLangaugeCode] or FALLBACK_SOURCE_LOCALE

		local gameNameLocaleMap = {}
		for languageCode, name in pairs(gameNamesLanguageCodeMap) do
			local locale = languageCodeMap[languageCode]
			if locale then
				gameNameLocaleMap[locale] = name
			end
		end

		if gameNameLocaleMap[sourceLocale] == nil then
			gameNameLocaleMap[sourceLocale] = gameNamesLanguageCodeMap[FALLBACK_LANGUAGE_CONSTANT]
		end

		local gameDescriptionsLocaleMap = {}
		for languageCode, description in pairs(gameDescriptionsLanguageCodeMap) do
			local locale = languageCodeMap[languageCode]
			if locale then
				gameDescriptionsLocaleMap[locale] = description
			end
		end

		if gameDescriptionsLocaleMap[sourceLocale] == nil then
			gameDescriptionsLocaleMap[sourceLocale] = gameDescriptionsLanguageCodeMap[FALLBACK_LANGUAGE_CONSTANT]
		end

		return gameNameLocaleMap, gameDescriptionsLocaleMap, sourceLocale
	end,
	function()
		return Promise.reject()
	end)
end