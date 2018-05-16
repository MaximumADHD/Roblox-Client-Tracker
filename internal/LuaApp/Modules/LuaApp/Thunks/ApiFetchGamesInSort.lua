local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Actions = Modules.LuaApp.Actions
local Requests = Modules.LuaApp.Http.Requests
local GamesGetList = require(Requests.GamesGetList)
local AddGames = require(Actions.AddGames)
local SetEntriesInSort = require(Actions.SetEntriesInSort)
local ApiFetchGameThumbnails = require(Modules.LuaApp.Thunks.ApiFetchGameThumbnails)
local Game = require(Modules.LuaApp.Models.Game)
local GameSortEntry = require(Modules.LuaApp.Models.GameSortEntry)
local TableUtilities = require(Modules.LuaApp.TableUtilities)

local normalEntries = setmetatable({}, {__mode = "v"})
local sponsoredEntries = setmetatable({}, {__mode = "v"})

return function(networkImpl, sort)
	return function(store)
		local argTableSortToken = {
			sortToken = sort.token,
			contextUniverseId = sort.contextUniverseId,
		}
		return GamesGetList(networkImpl, argTableSortToken):andThen(function(result)
			-- parse out the games and thumbnails
			local totalGames = 0
			local games = {}
			local entries = {}
			for _, game in pairs(result.responseBody.games) do
				totalGames = totalGames + 1

				-- According to the web team, not all games have universeIds.
				-- So, for now, just use placeIds
				games[game.placeId] = game

				local entry
				if game.isSponsored then
					entry = sponsoredEntries[game.nativeAdData]
					if not entry then
						entry = GameSortEntry.fromJsonData(game)
						sponsoredEntries[game.nativeAdData] = entry
					end
				else
					entry = normalEntries[game.placeId]
					if not entry then
						entry = GameSortEntry.fromJsonData(game)
						normalEntries[game.placeId] = entry
					end
				end

				-- insert entries so our sort knows which games to display, and how
				table.insert(entries, entry)
			end

			if totalGames == 0 then
				warn("Found no games in this sort : ", sort.displayName)
				return
			end

			local decodedGamesData = {}
			local thumbnailTokens = {}
			local storedGames = store:GetState().Games
			for placeId, gameData in pairs(games) do
				local decodedGameData = Game.fromJsonData(gameData)
				if not TableUtilities.ShallowEqual(decodedGameData, storedGames[placeId]) then
					decodedGamesData[placeId] = decodedGameData
					if not TableUtilities.EqualKey(decodedGameData, storedGames[placeId], "imageToken") then
						table.insert(thumbnailTokens, decodedGameData.imageToken)
					end
				end
			end

			-- write these games to the store
			store:Dispatch(AddGames(decodedGamesData))

			-- tell the sorts which games to show
			store:Dispatch(SetEntriesInSort(sort.name, entries))

			-- request the updated thumbnails for this sort
			if #thumbnailTokens > 0 then
				local fetchPromise = store:Dispatch(ApiFetchGameThumbnails(networkImpl, thumbnailTokens))
				return fetchPromise
			end
		end)
	end
end