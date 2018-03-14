local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Actions = Modules.LuaApp.Actions
local Requests = Modules.LuaApp.Http.Requests
local GamesGetPageMetadata = require(Requests.GamesGetPageMetadata)
local AddGameSorts = require(Actions.AddGameSorts)
local SetGameSortsInGroup = require(Actions.SetGameSortsInGroup)
local ApiFetchGamesInSort = require(Modules.LuaApp.Thunks.ApiFetchGamesInSort)
local Promise = require(Modules.LuaApp.Promise)
local GameSort = require(Modules.LuaApp.Models.GameSort)

-- create a thunk that fetches all the information we'll need for the games page
return function(networkImpl)
	return function(store)
		return GamesGetPageMetadata(networkImpl):andThen(function(result)
			local fetchPromises = {}

			local data = result.responseBody

			if data.sorts then
				local decodedDataSorts = {}
				for _, gameSortJson in pairs(data.sorts) do
					local gameSort = GameSort.fromJsonData(gameSortJson)
					table.insert(decodedDataSorts, gameSort)
				end
				
				store:Dispatch(AddGameSorts(decodedDataSorts))

				-- with the information about what sorts we have on the Games Page,
				-- fetch the games for the sorts
				local gameSorts = {}

				for _,sort in pairs(decodedDataSorts) do
					local promise = store:Dispatch(ApiFetchGamesInSort(networkImpl, sort))
					table.insert(fetchPromises, promise)
					table.insert(gameSorts, sort.name)
				end

				-- update the games page with the the sorts to display
				store:Dispatch(SetGameSortsInGroup("Games", gameSorts))
			end

			return Promise.all(fetchPromises)
		end)
	end
end