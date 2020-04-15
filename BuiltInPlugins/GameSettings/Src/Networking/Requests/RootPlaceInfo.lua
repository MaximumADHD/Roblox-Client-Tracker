--[[
	Get and set requests for settings values contained in the starting place.
	Also retrieves the start place id.
]]

local RELEVANT_ENTRIES = {
	description = true,
}

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

local PLACES_GET_URL = "v1/games/multiget-place-details"
local PLACES_GET_REQUEST_TYPE = "games"

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
			Url = Http.BuildRobloxUrl(PLACES_GET_REQUEST_TYPE, PLACES_GET_URL),
			Params = {placeIds = rootPlaceId},
			Method = "GET",
		}

		return Http.Request(placesRequestInfo):andThen(function(placesJsonResult)
			local placesResult = HttpService:JSONDecode(placesJsonResult)

			return {
				rootPlaceId = rootPlaceId,
				description = placesResult[1].description
			}
		end)
	end)
	:catch(function()
		warn("Game Settings: Could not load root place configuration settings.")
		Analytics.onLoadError("RootPlace")
		return Promise.reject()
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
		Analytics.onSaveError("RootPlace")
		if string.find(err, "HTTP 400") then
			local errors = {}
			if body.description then
				errors.description = "Moderated"
			end
			return Promise.reject(errors)
		end
	end)
end

return RootPlaceInfo