local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Immutable = require(Modules.Common.Immutable)
local AddSearchInGames = require(Modules.LuaApp.Actions.AddSearchInGames)
local RemoveMostRecentSearchInGames = require(Modules.LuaApp.Actions.RemoveMostRecentSearchInGames)
local ResetSearchesInGames = require(Modules.LuaApp.Actions.ResetSearchesInGames)

return function(state, action)
	state = state or {}

	if action.type == AddSearchInGames.name then
		state = Immutable.Append(state, action.searchInGames)
	elseif action.type == RemoveMostRecentSearchInGames.name then
		if #state > 0 then
			state = Immutable.RemoveFromList(state, #state)
		end
	elseif action.type == ResetSearchesInGames.name then
		state = {}
	end
	return state
end