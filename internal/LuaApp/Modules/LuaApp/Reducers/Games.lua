local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Immutable = require(Modules.Common.Immutable)
local AddGames = require(Modules.LuaApp.Actions.AddGames)

return function(state, action)
	state = state or {}

	if action.type == AddGames.name then
		-- store the data from the games
		for universeId, gameData in pairs(action.games) do
			-- construct the store
			state = Immutable.Set(state, universeId, gameData)
		end
	end

	return state
end