--[[
	Get and set request for source language setting of a game
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)
local Analytics = require(Plugin.Src.Util.Analytics)

local SOURCELANGUAGE_REQUEST_URL = "/v1/source-language/games/%d"
local SOURCELANGUAGE_REQUEST_TYPE = "gameinternationalization"

local SourceLanguage = {}

function SourceLanguage.AcceptsValue(key)
	return key == "SourceLanguage"
end

function SourceLanguage.Get(universeId)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(SOURCELANGUAGE_REQUEST_TYPE, SOURCELANGUAGE_REQUEST_URL, universeId),
		Method = "GET",
	}
	return Http.Request(requestInfo)
	:andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		return { ["SourceLanguage"] = result.languageCode }
	end)
	:catch(function()
		warn("Game Settings: Could not load source language for game.")
		Analytics.onLoadError("SourceLanguage")
		return Promise.reject()
	end)
end

function SourceLanguage.Set(universeId, languageCode)
	local params = {
		languageCode = languageCode,
	}
	local requestInfo = {
		Url = Http.BuildRobloxUrl(SOURCELANGUAGE_REQUEST_TYPE, SOURCELANGUAGE_REQUEST_URL, universeId),
		Method = "PATCH",
		Params = params,
	}
	return Http.Request(requestInfo)
	:catch(function()
		warn("Game Settings: Could not save source language for game.")
		Analytics.onSaveError("SourceLanguage")
		return Promise.reject()
	end)
end

return SourceLanguage