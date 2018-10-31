local CorePackages = game:GetService("CorePackages")

local Settings = script.Parent.Parent
local Actions = Settings.Actions
--TODO: Currently Under Migration to CorePackages
local Immutable = require(CorePackages.AppTempCommon.Common.Immutable)
--
local SetRecentlyPlayedGames = require(Actions.SetRecentlyPlayedGames)
local Game = require(Settings.Models.Game)

return function(state, action)
	state = state or {}
	if action.type == SetRecentlyPlayedGames.name then
		local gameSortState = state.gameSort or {}
		local gameSortData = action.gameSortData
		local gameSort = {}
		if gameSortData then
			for i in ipairs(gameSortData) do
				local gameData = Game.fromGameCache(gameSortData[i])
				table.insert(gameSort, gameData)
			end
		end
		state =	{
			gameSort = Immutable.JoinDictionaries(gameSortState, gameSort),
		}
	end
	return state
end