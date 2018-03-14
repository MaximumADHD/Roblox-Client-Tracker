local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Actions = Modules.LuaApp.Actions
local Requests = Modules.LuaApp.Http.Requests
local GamesGetList = require(Requests.GamesGetList)
local AddGames = require(Actions.AddGames)
local SetGamesInSort = require(Actions.SetGamesInSort)
local ApiFetchGameThumbnails = require(Modules.LuaApp.Thunks.ApiFetchGameThumbnails)
local Game = require(Modules.LuaApp.Models.Game)


return function(networkImpl, sort)
	return function(store)
		return GamesGetList(networkImpl, sort.token):andThen(function(result)
			-- parse out the games and thumbnails
			local totalGames = 0
			local games = {}
			local thumbnailTokens = {}
			local placeIds = {}
			for _,game in pairs(result.responseBody.games) do
				totalGames = totalGames + 1

				-- According to the web team, not all games have universeIds.
				-- So, for now, just use placeIds
				local gameIndex = tostring(game.placeId)

				-- re-index the games provided by the web
				games[gameIndex] = game

				-- index the image tokens by placeId incase of any overlap
				table.insert(thumbnailTokens, game.imageToken)

				-- hold onto the placeIds so our sorts can have them
				table.insert(placeIds, gameIndex)
			end

			if totalGames == 0 then
				warn("Found no games in this sort : ", sort.displayName)
				return
			end

			local decodedGamesData = {}
			for universeId, gameData in pairs(games) do
				decodedGamesData[universeId] = Game.fromJsonData(gameData)
			end

			-- write these games to the store
			store:Dispatch(AddGames(decodedGamesData))

			-- tell the sorts which games to show
			store:Dispatch(SetGamesInSort(sort.name, placeIds))

			-- request the thumbnails for this sort
			local fetchPromise = store:Dispatch(ApiFetchGameThumbnails(networkImpl, thumbnailTokens))
			return fetchPromise
		end)
	end
end