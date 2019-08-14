local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Packages.Promise)

local PlaceToPublish = require(Plugin.Src.Network.Models.PlaceToPublish)
local Http = require(Plugin.Src.Network.Http)

local FETCH_PLACES_URL = "v1/universes/%d/places"
local FETCH_PLACES_TYPE = "develop"

return function(searchArguments, optionalSettings)
	local universeId = searchArguments.universeId
	if not universeId then
		return Promise.reject("NO UNIVERSE ID - ApiFetchPlacesByGameId")
	end
	local limit = optionalSettings.limit or 10
	local sortOrder = optionalSettings.sortOrder or "Asc"
	local cursor = optionalSettings.cursor
	local requestInfo = {
		Url = Http.BuildRobloxUrl(FETCH_PLACES_TYPE, FETCH_PLACES_URL, universeId),
		Method = "GET",
		Params = {
			sortOrder = sortOrder,
			limit = limit,
			cursor = cursor,
		},
	}
	return Http.Request(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)

		local page = {}
		if result.previousPageCursor then
			page.previousPageCursor = result.previousPageCursor
		end
		if result.nextPageCursor then
			page.nextPageCursor = result.nextPageCursor
		end

		page.places = {}
		for _, placeToPublish in pairs(result.data) do
			local ok, val = PlaceToPublish.fromJsonData(placeToPublish)
			if ok then
				table.insert(page.places, val)
			else
				error("Parsing error for ApiFetchPlacesByUniverseId: " .. val)
			end
		end
		return page
	end)
end
