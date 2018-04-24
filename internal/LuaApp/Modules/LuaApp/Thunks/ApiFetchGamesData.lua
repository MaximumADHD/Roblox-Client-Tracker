local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Actions = Modules.LuaApp.Actions
local Requests = Modules.LuaApp.Http.Requests
local GamesGetSorts = require(Requests.GamesGetSorts)
local AddGameSorts = require(Actions.AddGameSorts)
local SetGameSortsInGroup = require(Actions.SetGameSortsInGroup)
local ApiFetchGamesInSort = require(Modules.LuaApp.Thunks.ApiFetchGamesInSort)
local Promise = require(Modules.LuaApp.Promise)
local GameSort = require(Modules.LuaApp.Models.GameSort)
local Constants = require(Modules.LuaApp.Constants)

-- create a thunk that fetches all the information we'll need for the games page
return function(networkImpl, sortCategory, targetSort)

	-- Default fetching for Games Page data
	if not sortCategory then
		sortCategory = Constants.GameSortGroups.Games
	end
	return function(store)
		return GamesGetSorts(networkImpl, sortCategory):andThen(function(result)
			local fetchPromises = {}

			local data = result.responseBody

			if data.sorts then
				local decodedDataSorts = {}
				local gameSorts = {}
				for _, gameSortJson in pairs(data.sorts) do
					if gameSortJson.name == targetSort or not targetSort then
						local gameSort = GameSort.fromJsonData(gameSortJson)
						table.insert(decodedDataSorts, gameSort)
					end
					table.insert(gameSorts, gameSortJson.name)
				end

				store:Dispatch(AddGameSorts(decodedDataSorts))

				-- with the information about what sorts we have on the Games Page,
				-- fetch the games for the sorts

				for _,sort in pairs(decodedDataSorts) do
					local promise = store:Dispatch(ApiFetchGamesInSort(networkImpl, sort))
					table.insert(fetchPromises, promise)
				end

				-- update the games page with the the sorts to display
				store:Dispatch(SetGameSortsInGroup(sortCategory, gameSorts))
			end

			return Promise.all(fetchPromises)
		end)
	end
end