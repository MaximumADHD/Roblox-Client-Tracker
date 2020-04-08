--[[
	Get and set request for auto text capture and use translated content
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)
local Analytics = require(Plugin.Src.Util.Analytics)

local AUTOLOCALIZATION_GET_REQUEST_URL = "/v1/autolocalization/games/%d/autolocalizationtable"
local AUTOLOCALIZATION_SET_REQUEST_URL = "/v1/autolocalization/games/%d/settings"
local AUTOLOCALIZATION_REQUEST_TYPE = "gameinternationalization"

local RELEVANT_ENTRIES = {
	AutoTextCaptureEnabled = true,
	UseTranslatedContentEnabled = true,
}

local AutoLocalization = {}

function AutoLocalization.AcceptsValue(key)
	return RELEVANT_ENTRIES[key]
end

function AutoLocalization.Get(universeId)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(AUTOLOCALIZATION_REQUEST_TYPE, AUTOLOCALIZATION_GET_REQUEST_URL, universeId),
		Method = "POST",
	}
	return Http.Request(requestInfo)
	:andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		return {
			AutoTextCaptureEnabled = result.isAutolocalizationEnabled,
			UseTranslatedContentEnabled = result.shouldUseLocalizationTable,
		}
	end)
	:catch(function()
		warn("Game Settings: Could not load auto localization settings for game.")
		Analytics.onLoadError("AutoLocalization")
		return Promise.reject()
	end)
end

function AutoLocalization.Set(universeId, settings)
	assert(settings ~= nil)
	local body = {}
	if settings.AutoTextCaptureEnabled ~= nil then
		body.isAutolocalizationEnabled = settings.AutoTextCaptureEnabled
	end
	if settings.UseTranslatedContentEnabled ~= nil then
		body.shouldUseLocalizationTable = settings.UseTranslatedContentEnabled
	end
	local requestInfo = {
		Url = Http.BuildRobloxUrl(AUTOLOCALIZATION_REQUEST_TYPE, AUTOLOCALIZATION_SET_REQUEST_URL, universeId),
		Method = "PATCH",
		Body = HttpService:JSONEncode(body),
	}
	return Http.Request(requestInfo)
	:catch(function()
		warn("Game Settings: Could not save auto localization settings for game.")
		Analytics.onSaveError("AutoLocalization")
		return Promise.reject()
	end)
end

return AutoLocalization