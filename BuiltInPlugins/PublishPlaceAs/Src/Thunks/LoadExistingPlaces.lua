local FFlagDebugFixPublishAsWhenQueryFails = game:GetFastFlag("DebugFixPublishAsWhenQueryFails")
local Plugin = script.Parent.Parent.Parent

local SetPlaceInfo = require(Plugin.Src.Actions.SetPlaceInfo)
local SetChoosePlaceQueryState = require(Plugin.Src.Actions.SetChoosePlaceQueryState)
local SetSelectedGame = require(Plugin.Src.Actions.SetSelectedGame)
local ApiFetchPlacesByUniverseId = require(Plugin.Src.Network.Requests.ApiFetchPlacesByUniverseId)
local Constants = require(Plugin.Src.Resources.Constants)

local prevPageCursor = nil
local placesTable = {}

return function(parentGame, pageCursor)
	return function(store)
		if pageCursor ~= prevPageCursor or not pageCursor then
			prevPageCursor = pageCursor
			assert(type(parentGame.name) == "string", "LoadExistingPlaces.parentGame must have a string name")
			assert(type(parentGame.universeId) == "number", "LoadExistingPlaces.parentGame must have a number universeId")

			if FFlagDebugFixPublishAsWhenQueryFails then
				store:dispatch(SetSelectedGame(parentGame))
				store:dispatch(SetChoosePlaceQueryState(Constants.QUERY_STATE.QUERY_STATE_QUERYING))
			end

			local query = ApiFetchPlacesByUniverseId({universeId = parentGame.universeId}, {cursor = pageCursor})

			query:andThen(function(resp)
				resp.parentGame = parentGame
				-- Concatenating placesTable and resp.places
				for i = 1, #resp.places do
					placesTable[#placesTable + 1] = resp.places[i]
				end
				resp.places = placesTable
				store:dispatch(SetPlaceInfo(resp))
			end, function(err)
				if FFlagDebugFixPublishAsWhenQueryFails then
					store:dispatch(SetChoosePlaceQueryState(Constants.QUERY_STATE.QUERY_STATE_FAILED))
				else
					error("Failed to fetch places under parent game" .. parentGame.name)
				end
			end)
		end
	end
end
