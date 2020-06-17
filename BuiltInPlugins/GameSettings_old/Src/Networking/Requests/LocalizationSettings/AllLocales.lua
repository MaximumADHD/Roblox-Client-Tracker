--[[
	Get a list of all locales
]]

local HttpService = game:GetService("HttpService")
local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)

local studioLocaleId = StudioService["StudioLocaleId"]

local REQUEST_URL = "v1/locales?displayValueLocale=" .. studioLocaleId
local REQUEST_TYPE = "locale"

local function deserializeResult(result)
	local allLanguages = {}
	for _, item in pairs(result) do
		local languageCode = item.locale.language.languageCode
		if allLanguages[languageCode] == nil then
			allLanguages[languageCode] = item.locale.language.name
		end
	end
	return { ["LanguageCodeToNames"] = allLanguages }
end

local AllLocales = {}

function AllLocales.Get()
	local requestInfo = {
		Url = Http.BuildRobloxUrl(REQUEST_TYPE, REQUEST_URL),
		Method = "GET",
	}
	return Http.Request(requestInfo)
	:andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		return deserializeResult(result.data)
	end)
	:catch(function()
		warn("Game Settings: Could not fetch supported languages.")
		return Promise.reject()
	end)
end

return AllLocales