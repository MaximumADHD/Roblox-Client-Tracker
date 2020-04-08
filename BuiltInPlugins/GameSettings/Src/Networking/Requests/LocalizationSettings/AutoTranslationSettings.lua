--[[
	Get automatic translation settings for a game
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)

local Analytics = require(Plugin.Src.Util.Analytics)

local REQUEST_TYPE = "gameinternationalization"
local GET_AUTO_TRANSLATE_STATUS_REQUEST_URL = "/v1/supported-languages/games/%d/automatic-translation-status"
local SUPPORTED_LANGUAGE_REQUEST_URL = "/v1/supported-languages/games/%d"
local SET_AUTO_TRANSLATE_STATUS_REQUEST_URL =
	"/v1/supported-languages/games/%d/languages/%s/automatic-translation-status"

local function addSupportedLanguage(universeId, patch)
	local body = {}
	for languageCode, enabled in pairs(patch) do
		if enabled then
			table.insert(body, {
				["languageCodeType"] = "Language",
				["languageCode"] = languageCode,
				["delete"] = false
			})
		end
	end

	local requestInfo = {
		Url = Http.BuildRobloxUrl(REQUEST_TYPE, SUPPORTED_LANGUAGE_REQUEST_URL, universeId),
		Method = "PATCH",
		Body = HttpService:JSONEncode(body)
	}
	return Http.Request(requestInfo)
	:catch(function()
		warn("Game Settings: Could not save supported language settings for game.")
		Analytics.onSaveError("SupportedLanguags")
		return Promise.reject()
	end)
end

local function deserializeResult(result)
	local autoTranslationSettings = {}
	for _, item in pairs(result) do
		autoTranslationSettings[item.languageCode] = item.isAutomaticTranslationEnabled
	end
	return autoTranslationSettings
end

local AutoTranslationSettings = {}

function AutoTranslationSettings.AcceptsValue(key)
	return key == "AutoTranslationSettings"
end

function AutoTranslationSettings.Get(universeId)
	return Promise.new(function(resolve, reject)
		spawn(function()
			local requestInfo = {
				Url = Http.BuildRobloxUrl(REQUEST_TYPE, GET_AUTO_TRANSLATE_STATUS_REQUEST_URL, universeId),
				Method = "GET",
			}
			Http.Request(requestInfo)
			:andThen(function(jsonResult)
				local result = HttpService:JSONDecode(jsonResult)
				resolve({ ["AutoTranslationSettings"] = deserializeResult(result.data) })
			end)
			:catch(function()
				warn("Game Settings: Could not fetch automatic translation settings for game.")
				Analytics.onLoadError("AutoTranslationSettings")
				reject()
			end)
		end)
	end)
end

function AutoTranslationSettings.Set(universeId, settings)
	local patch = {}
	for langCode, enabled in pairs(settings.Changed) do
		if settings.Current[langCode] ~= enabled then
			patch[langCode] = enabled
		end
	end
	return addSupportedLanguage(universeId, patch)
	:andThen(function()
		local requests = {}
		for langCode, enabled in pairs(patch) do
			local requestInfo = {
				Url = Http.BuildRobloxUrl(REQUEST_TYPE, SET_AUTO_TRANSLATE_STATUS_REQUEST_URL, universeId, langCode),
				Method = "PATCH",
				Body = HttpService:JSONEncode(enabled)
			}
			table.insert(requests, Http.Request(requestInfo))
		end
		return Promise.all(requests):catch(function()
			warn("Game Settings: Could not save automatic translation settings for game.")
			Analytics.onSaveError("AutoTranslationSettings")
			return Promise.reject()
		end)
	end)
end

return AutoTranslationSettings