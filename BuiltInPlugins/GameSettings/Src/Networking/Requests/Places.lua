--[[
	Request for managing places in a universe
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)
local Analytics = require(Plugin.Src.Util.Analytics)
  
local PLACES_PATCH_REQUEST_URL = "v2/places/%d"
  
local PLACES_URL = "v2/universes/%d/places"
local PLACES_REQUEST_TYPE = "develop"
  
local Places = {}

function Places.AcceptsValue(key)
end

local function GetPlaces()
	local places = {}

	local function request(cursor)
		local url = Http.BuildRobloxUrl(PLACES_REQUEST_TYPE,PLACES_URL, game.GameId)

		-- define parameters (we only need the cursor if we have one)
		local params = {
			limit = 25,
			sortOrder = "Asc",
			cursor = cursor,
		}

		-- construct the request
		local requestInfo = {
			Url = url,
			Method = "GET",
			Params = params,
		}

		return Http.Request(requestInfo):
		andThen(function(response)
			local body = HttpService:JSONDecode(response)

            for _, place in pairs(body.data) do
				places[place.id] = place
			end

            if body.nextPageCursor then
				return request(body.nextPageCursor)
            else
				return places
			end
		end)
		:catch(function(err)
			warn("Could not retrieve places", err)

			return nil
		end)
	end

	return request()
end

function Places.Get()
    return Promise.resolve(GetPlaces()):andThen(function(places)
		return {
			places = places,
		}
    end)
end

function Places.Patch(placeId, values)
	local requestInfo = {
		Url = Http.BuildRobloxUrl(PLACES_REQUEST_TYPE, PLACES_PATCH_REQUEST_URL, placeId),
        Method = "PATCH",
        Body = HttpService:JSONEncode(values),
	}

	return Http.Request(requestInfo)
    :catch(function(err)
		warn("Game Settings: Could not change Place settings.")
		Analytics.onSaveError("PlacesPatch")
		return Promise.reject()
end)

return Places