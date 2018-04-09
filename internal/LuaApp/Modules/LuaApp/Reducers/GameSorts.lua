local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Immutable = require(Modules.Common.Immutable)
local AddGameSorts = require(Modules.LuaApp.Actions.AddGameSorts)

return function(state, action)
	state = state or {}

	if action.type == AddGameSorts.name then
		local newGames = {}
		for _, sortData in pairs(action.sorts) do
			newGames[sortData.name] = sortData
		end
		state = Immutable.JoinDictionaries(state, newGames)
	end

	return state
end