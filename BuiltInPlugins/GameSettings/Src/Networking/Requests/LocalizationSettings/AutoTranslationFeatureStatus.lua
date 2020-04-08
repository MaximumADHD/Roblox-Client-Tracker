--[[
	Get if a game is on MT whitelist
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)
local Analytics = require(Plugin.Src.Util.Analytics)

local REQUEST_URL = "/v1/automatic-translation/games/%d/feature-status"
local REQUEST_TYPE = "gameinternationalization"

local AutoTranslationFeatureStatus = {}

function AutoTranslationFeatureStatus.Get(universeId)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(REQUEST_TYPE, REQUEST_URL, universeId),
		Method = "GET",
	}
	return Http.Request(requestInfo)
	:andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		return { ["IsAutomaticTranslationAllowed"] = result.isAutomaticTranslationAllowed }
	end)
	:catch(function()
		warn("Game Settings: Could not fetch automatic translation feature status for game.")
		Analytics.onLoadError("AutoTranslationFeatureStatus")
		return Promise.reject()
	end)
end

return AutoTranslationFeatureStatus