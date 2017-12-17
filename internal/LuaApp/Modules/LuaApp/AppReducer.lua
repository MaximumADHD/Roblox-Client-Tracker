local Modules = game:GetService("CoreGui").RobloxGui.Modules

local PagePaused = require(Modules.LuaApp.Reducers.PagePaused)
local GameSorts = require(Modules.LuaApp.Reducers.GameSorts)
local HomeGameSorts = require(Modules.LuaApp.Reducers.HomeGameSorts)
local Games = require(Modules.LuaApp.Reducers.Games)

return function(state, action)
	state = state or {}

	return {
		PagePaused = PagePaused(state.PagePaused, action),
		GameSorts = GameSorts(state.GameSorts, action),
		HomeGameSorts = HomeGameSorts(state.HomeGameSorts, action),
		Games = Games(state.Games, action)
	}
end