local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Actions = Modules.LuaApp.Actions
local Requests = Modules.LuaApp.Http.Requests

local Promise = require(Modules.LuaApp.Promise)
local GamesGetList = require(Requests.GamesGetList)
local AddGames = require(Actions.AddGames)
local SetGamesInSort = require(Actions.SetGamesInSort)
local ApiFetchGameThumbnails = require(Modules.LuaApp.Thunks.ApiFetchGameThumbnails)
local Game = require(Modules.LuaApp.Models.Game)

return function(networkImpl, searchKeyword, optionalSettings)
	if not searchKeyword then
		return function(store)
			Promise.reject("Must have a searchKeyword to search with.")
		end
	end
	return function(store)
		local argTableSearch = {
			keyword = searchKeyword,
		}
		if optionalSettings then
			for k, v in pairs(optionalSettings) do
				argTableSearch[k] = v
			end
		end

		return GamesGetList(networkImpl, argTableSearch):andThen(function(result)
			local totalGames = 0
			local games = {}
			local thumbnailTokens = {}
			local placeIds = {}

			for _,game in pairs(result.responseBody.games) do
				totalGames = totalGames + 1
				local gameIndex = tostring(game.placeId)
				games[gameIndex] = game
				table.insert(thumbnailTokens, game.imageToken)
				table.insert(placeIds, gameIndex)
			end

			if totalGames == 0 then
				warn("No Games found.")
				return
			end

			local decodedGamesData = {}
			for universeId, gameData in pairs(games) do
				decodedGamesData[universeId] = Game.fromJsonData(gameData)
			end

			--adding the sets into "GameSorts"
			store:Dispatch(AddGames(decodedGamesData))
			store:Dispatch(SetGamesInSort("SearchResult", placeIds))

			local fetchPromise = store:Dispatch(ApiFetchGameThumbnails(networkImpl, thumbnailTokens))
			return fetchPromise
		end)
	end
end