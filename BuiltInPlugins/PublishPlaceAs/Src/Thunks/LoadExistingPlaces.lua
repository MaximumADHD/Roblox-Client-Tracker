local FFlagDebugFixPublishAsWhenQueryFails = game:GetFastFlag("DebugFixPublishAsWhenQueryFails")
local FFlagSoftFailOnMissingParentGameInPublishPlaceAsChoosePlaceScreen = game:GetFastFlag("SoftFailOnMissingParentGameInPublishPlaceAsChoosePlaceScreen")
local FFlagSoftFailOnMissingParentGameEvent = game:GetFastFlag("SoftFailOnMissingParentGameEvent")
local FIntSoftFailOnMissingParentGameEventHundrethPercent = game:GetFastInt("SoftFailOnMissingParentGameEventHundrethPercent")
local Plugin = script.Parent.Parent.Parent

local SetPlaceInfo = require(Plugin.Src.Actions.SetPlaceInfo)
local SetChoosePlaceQueryState = require(Plugin.Src.Actions.SetChoosePlaceQueryState)
local SetSelectedGame = require(Plugin.Src.Actions.SetSelectedGame)
local ApiFetchPlacesByUniverseId = require(Plugin.Src.Network.Requests.ApiFetchPlacesByUniverseId)
local Constants = require(Plugin.Src.Resources.Constants)

local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local prevPageCursor = nil
local placesTable = {}


function tableToString(t)
   if type(t) == 'table' then
      local r = '{ '
      for k,v in pairs(t) do
         if type(k) ~= 'number' then
					 k = '"'..k..'"'
				 end
         r = r .. '['..k..'] = ' .. tableToString(v) .. ','
      end
      return r .. '} '
   else
      return tostring(t)
   end
end



return function(parentGame, pageCursor)
	return function(store)
		if pageCursor ~= prevPageCursor or not pageCursor then
			prevPageCursor = pageCursor

			if FFlagSoftFailOnMissingParentGameInPublishPlaceAsChoosePlaceScreen then
				if type(parentGame.name) ~= "string" then
					-- provide more info for COLLAB-1406 to understand why it's happening
					-- this is a rare issue that we intend to fix soon so there is no need to translate this.
					warn("Could not display place list. Parent game name is not a string: " .. tableToString(parentGame))

          -- send events so we can understand what's happening
					if FFlagSoftFailOnMissingParentGameEvent then
						local points = {}
						points["dump"] = tableToString(parentGame)
						RbxAnalyticsService:reportInfluxSeries("StudioLoadExistingPlacesMissingParentGame", points, FIntSoftFailOnMissingParentGameEventHundrethPercent)
					end


					-- soft fail so that user doesn't have to restart (user can hit the back button to go back to choose game screen)
					return
				end
			else
				assert(type(parentGame.name) == "string", "LoadExistingPlaces.parentGame must have a string name")
			end
			assert(type(parentGame.universeId) == "number", "LoadExistingPlaces.parentGame must have a number universeId")

			if FFlagDebugFixPublishAsWhenQueryFails then
				store:dispatch(SetSelectedGame(parentGame))
				-- only display the loading screen if we are loading for the first time
				if not pageCursor then
					store:dispatch(SetChoosePlaceQueryState(Constants.QUERY_STATE.QUERY_STATE_QUERYING))
				end
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
