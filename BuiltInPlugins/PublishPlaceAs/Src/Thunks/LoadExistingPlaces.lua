local Plugin = script.Parent.Parent.Parent

local SetPlaceInfo = require(Plugin.Src.Actions.SetPlaceInfo)
local ApiFetchPlacesByUniverseId = require(Plugin.Src.Network.Requests.ApiFetchPlacesByUniverseId)

local FFlagStudioAddingScrollingToScreenChoosePlace = game:GetFastFlag("StudioAddingScrollingToScreenChoosePlace")
local FFlagUXImprovementAdaptScrolling = game:DefineFastFlag("UXImprovementAdaptScrolling", false)
local prevPageCursor = nil
local placesTable = {}

return function(parentGame, pageCursor)
	return function(store)
		if not FFlagUXImprovementAdaptScrolling or (pageCursor ~= prevPageCursor or not pageCursor) then
			prevPageCursor = pageCursor
			assert(type(parentGame.name) == "string", "LoadExistingPlaces.parentGame must have a string name")
			assert(type(parentGame.universeId) == "number", "LoadExistingPlaces.parentGame must have a number universeId")

			if not FFlagStudioAddingScrollingToScreenChoosePlace then
				store:dispatch(SetPlaceInfo({ places = {} }))
			end

			local query = ApiFetchPlacesByUniverseId({universeId = parentGame.universeId}, {cursor = pageCursor})

			query:andThen(function(resp)
				resp.parentGame = parentGame
				if FFlagStudioAddingScrollingToScreenChoosePlace then
					--Concatenating placesTable and resp.places
					for i=1, #resp.places do
						placesTable[#placesTable + 1] = resp.places[i]
					end
					resp.places = placesTable
				end
				store:dispatch(SetPlaceInfo(resp))
			end, function(err)
				error("Failed to fetch places under parent game" .. parentGame.name)
			end)
		end
	end
end
