--[[
	Get and set requests for settings values contained in the starting place.
	Also retrieves the start place id.
]]

local RELEVANT_ENTRIES = {
	description = true,
}

local FFlagGameSettingsAnalyticsEnabled = settings():GetFFlag("GameSettingsAnalyticsEnabled")

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Cryo = require(Plugin.Cryo)
local Http = require(Plugin.Src.Networking.Http)
local Analytics = require(Plugin.Src.Util.Analytics)
local extractRelevantEntries = require(Plugin.Src.Util.extractRelevantEntries)
local isEmpty = require(Plugin.Src.Util.isEmpty)

local UNIVERSES_REQUEST_URL = "v1/universes/%d"
local UNIVERSES_REQUEST_TYPE = "develop"

local PLACES_GET_URL = "v1/universes/%d/places"
local PLACES_GET_REQUEST_TYPE = "develop"

local PLACES_PATCH_URL = "v1/places/%d"
local PLACES_PATCH_REQUEST_TYPE = "develop"

local RootPlaceInfo = {}

function RootPlaceInfo.AcceptsValue(key)
	return RELEVANT_ENTRIES[key]
end

function RootPlaceInfo.Get(universeId)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(UNIVERSES_REQUEST_TYPE, UNIVERSES_REQUEST_URL, universeId),
		Method = "GET",
	}

	return Http.Request(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		local rootPlaceId = result.rootPlaceId

		local placesRequestInfo = {
			Url = Http.BuildRobloxUrl(PLACES_GET_REQUEST_TYPE, PLACES_GET_URL, universeId),
			Method = "GET",
		}

		return Http.Request(placesRequestInfo):andThen(function(placesJsonResult)
			local placesResult = HttpService:JSONDecode(placesJsonResult)

			for _, place in ipairs(placesResult.data) do
				if place.id == rootPlaceId then
					return Cryo.Dictionary.join(extractRelevantEntries(place, RELEVANT_ENTRIES), {
						rootPlaceId = place.id,
					})
				end
			end
		end)
	end)
	:catch(function()
		warn("Game Settings: Could not load root place configuration settings.")
		if FFlagGameSettingsAnalyticsEnabled then
			Analytics.onLoadError("RootPlace")
			return Promise.reject()
		else
			return Promise.resolve({})
		end
	end)
end

function RootPlaceInfo.Set(universeId, body)
	if body == nil or isEmpty(body) then
		return Promise.resolve()
	end

	local requestInfo = {
		Url = Http.BuildRobloxUrl(UNIVERSES_REQUEST_TYPE, UNIVERSES_REQUEST_URL, universeId),
		Method = "GET",
	}

	return Http.Request(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		local rootPlaceId = result.rootPlaceId

		local placeRequestInfo = {
			Url = Http.BuildRobloxUrl(PLACES_PATCH_REQUEST_TYPE, PLACES_PATCH_URL, rootPlaceId),
			Method = "PATCH",
			Body = HttpService:JSONEncode(body),
		}

		return Http.Request(placeRequestInfo)
	end)
	:catch(function(err)
		warn("Game Settings: Could not save root place configuration settings.")
		if FFlagGameSettingsAnalyticsEnabled then
			Analytics.onSaveError("RootPlace")
		end
		if string.find(err, "HTTP 400") then
			local errors = {}
			if body.description then
				errors.description = "Moderated"
			end
			return Promise.reject(errors)
		elseif not FFlagGameSettingsAnalyticsEnabled then
			return Promise.resolve()
		end
	end)
end

return RootPlaceInfo