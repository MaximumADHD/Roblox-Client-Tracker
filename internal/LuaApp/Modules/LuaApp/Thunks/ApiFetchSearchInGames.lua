local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Actions = Modules.LuaApp.Actions
local Requests = Modules.LuaApp.Http.Requests

local AddGames = require(Actions.AddGames)
local AddSearchInGames = require(Actions.AddSearchInGames)
local GamesGetList = require(Requests.GamesGetList)

local Immutable = require(Modules.Common.Immutable)
local Game = require(Modules.LuaApp.Models.Game)
local SearchInGames = require(Modules.LuaApp.Models.SearchInGames)
local TableUtilities = require(Modules.LuaApp.TableUtilities)
local ApiFetchGameThumbnails = require(Modules.LuaApp.Thunks.ApiFetchGameThumbnails)

return function(networkImpl, searchKeyword, optionalSettings)
	return function(store)
		local argTableSearch = Immutable.JoinDictionaries({ keyword = searchKeyword }, optionalSettings or {})

		return GamesGetList(networkImpl, argTableSearch):andThen(function(result)
			local games = result.responseBody.games

			local gamesData = {}
			local placeIds = {}

			for _, game in pairs(games) do
				local placeId = tostring(game.placeId)
				gamesData[placeId] = game
				table.insert(placeIds, placeId)
			end

			local decodedGamesData = {}
			local thumbnailTokens = {}
			local storedGames = store:GetState().Games
			for placeId, gameData in pairs(gamesData) do
				local decodedGameData = Game.fromJsonData(gameData)
				if not TableUtilities.ShallowEqual(decodedGameData, storedGames[placeId]) then
					decodedGamesData[placeId] = decodedGameData
					if not TableUtilities.EqualKey(decodedGameData, storedGames[placeId], "imageToken") then
						table.insert(thumbnailTokens, decodedGameData.imageToken)
					end
				end
			end
			store:Dispatch(AddGames(decodedGamesData))

			local searchInGamesData = SearchInGames.fromJsonData(result.responseBody, searchKeyword, placeIds)
			store:Dispatch(AddSearchInGames(searchInGamesData))

			if #thumbnailTokens > 0 then
				local fetchPromise = store:Dispatch(ApiFetchGameThumbnails(networkImpl, thumbnailTokens))
				return fetchPromise
			end
		end)
	end
end