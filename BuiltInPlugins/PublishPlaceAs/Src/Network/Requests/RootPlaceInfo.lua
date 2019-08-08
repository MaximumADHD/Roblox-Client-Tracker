--[[
	Set requests for settings values contained in the starting place.
	Also retrieves the start place id.

	Copied from GameSettings. Ideally we could reuse that code
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Http = require(Plugin.Src.Network.Http)

local UNIVERSES_REQUEST_URL = "v1/universes/%d"
local UNIVERSES_REQUEST_TYPE = "develop"

local PLACES_PATCH_URL = "v1/places/%d"
local PLACES_PATCH_REQUEST_TYPE = "develop"

local ACCEPTED_KEYS = {
	description = true,
}

local RootPlaceInfo = {}

function RootPlaceInfo.AcceptsValue(key)
	return ACCEPTED_KEYS[key] ~= nil
end

function RootPlaceInfo.Set(universeId, body)
	local errmsg = "RootPlaceInfo.Set body must be table, received %s"
	assert(type(body) == "table", string.format(errmsg, type(body)))
	assert(not Cryo.isEmpty(body),  "RootPlaceInfo.Set body must have changes to set")

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
end

return RootPlaceInfo
