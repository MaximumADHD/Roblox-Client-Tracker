local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Immutable = require(Modules.Common.Immutable)
local GameSortGroup = require(Modules.LuaApp.Models.GameSortGroup)
local SetGameSortsInGroup = require(Modules.LuaApp.Actions.SetGameSortsInGroup)

local defaultState = {
	Games = GameSortGroup.new(),
	GamesSeeAll = GameSortGroup.new(),
	HomeGames = GameSortGroup.new()
}

return function(state, action)
	state = state or defaultState

	if action.type == SetGameSortsInGroup.name then
		if state[action.groupId] then
			local group = Immutable.Set(state[action.groupId], "sorts", action.sorts)
			state = Immutable.Set(state, action.groupId, group)
		end
	end

	return state
end