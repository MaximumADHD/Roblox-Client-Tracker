--[[
	Get a list of supported languages
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)

local LOCALE_REQUEST_URL = "/v1/locales/supported-locales"
local LOCALE_REQUEST_TYPE = "locale"

local function deserializeResult(supportedLanguagesResults)
	local supportedLanguages = {}
	for _, item in pairs(supportedLanguagesResults) do
		supportedLanguages[item.language.languageCode] = item.language.nativeName
	end
	return { ["SupportedLanguages"] = supportedLanguages }
end

local SupportedLanguages = {}

function SupportedLanguages.Get()
	local requestInfo = {
		Url = Http.BuildRobloxUrl(LOCALE_REQUEST_TYPE, LOCALE_REQUEST_URL),
		Method = "GET",
	}
	return Http.Request(requestInfo)
	:andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		return deserializeResult(result.supportedLocales)
	end)
	:catch(function()
		warn("Game Settings: Could not fetch supported languages.")
		return Promise.reject()
	end)
end

return SupportedLanguages