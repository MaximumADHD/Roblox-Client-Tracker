--[[
	Get and set requests for game localization autoscraping.
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)
local Analytics = require(Plugin.Src.Util.Analytics)

local LOCALIZATION_GET_URL = "v1/autolocalization/games/%d/autolocalizationtable"
local LOCALIZATION_GET_REQUEST_TYPE = "gameinternationalization"

local LOCALIZATION_SET_URL = "v1/autolocalization/games/%d/settings"
local LOCALIZATION_SET_REQUEST_TYPE = "gameinternationalization"

local Localization = {}

function Localization.AcceptsValue(key)
	return key == "autoscrapingOn"
end

function Localization.Get(universeId, userId)
	local bodyObject = {
		name = "MyLocalizationTable",
		ownerType = "User",
		ownerId = userId,
	}

	local requestInfo = {
		Url = Http.BuildRobloxUrl(LOCALIZATION_GET_REQUEST_TYPE, LOCALIZATION_GET_URL, universeId),
		Method = "POST",
		Body = HttpService:JSONEncode(bodyObject),
		CachePolicy = Enum.HttpCachePolicy.None,
		Headers = {
			["Content-Type"] = "application/json"
		},
	}

	return Http.RequestInternal(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		return {
			autoscrapingOn = result.isAutolocalizationEnabled,
		}
	end)
	:catch(function()
		warn("Game Settings: Could not load Game Localization Table settings.")
		Analytics.onLoadError("Localization")
		return Promise.reject()
	end)
end

function Localization.Set(universeId, autoscrapingOn)
	if autoscrapingOn == nil then
		return Promise.resolve({})
	end

	local requestInfo = {
		Url = Http.BuildRobloxUrl(LOCALIZATION_SET_REQUEST_TYPE, LOCALIZATION_SET_URL, universeId),
		Method = "PATCH",
		Body = HttpService:JSONEncode({
			isAutolocalizationEnabled = autoscrapingOn,
		}),
		CachePolicy = Enum.HttpCachePolicy.None,
		Headers = {
			["Content-Type"] = "application/json"
		}
	}

	return Http.RequestInternal(requestInfo)
	:catch(function()
		warn("Game Settings: Could not save Game Localization Table settings.")
		Analytics.onSaveError("Localization")
		return Promise.reject()
	end)
end

return Localization