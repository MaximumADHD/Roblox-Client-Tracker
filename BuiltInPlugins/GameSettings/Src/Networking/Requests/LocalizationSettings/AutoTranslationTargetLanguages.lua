--[[
	Get request for auto translation target languages given source language
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)

local REQUEST_URL = "/v1/automatic-translation/languages/%s/target-languages"
local REQUEST_TYPE = "gameinternationalization"

local function deserializeResult(result)
	local targetLanguages = {}
	for _, item in pairs(result) do
		targetLanguages[item.languageCode] = item.isAutomaticTranslationAllowed
	end
	return targetLanguages
end

local AutoTranslationTargetLanguages = {}

function AutoTranslationTargetLanguages.Get(sourceLanguage)
	if sourceLanguage == nil then
		return Promise.reject()
	end
	local requestInfo = {
		Url = Http.BuildRobloxUrl(REQUEST_TYPE, REQUEST_URL, sourceLanguage),
		Method = "GET",
	}
	return Http.Request(requestInfo)
	:andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		return deserializeResult(result.targetLanguages)
	end)
	:catch(function()
		warn("Game Settings: Could not load auto translation target languages for " .. sourceLanguage .. ".")
		return Promise.reject()
	end)
end

return AutoTranslationTargetLanguages