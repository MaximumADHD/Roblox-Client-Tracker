local Modules = game:GetService("CoreGui").RobloxGui.Modules

local SearchesInGames = require(Modules.LuaApp.Reducers.SearchesInGames)
-- local SearchesInGroups = require(Modules.LuaApp.Reducers.SearchesInGroups)
-- local SearchesInPlayers = require(Modules.LuaApp.Reducers.SearchesInPlayers)
-- local SearchesInCatalog = require(Modules.LuaApp.Reducers.SearchesInCatalog)
-- local SearchesInLibrary = require(Modules.LuaApp.Reducers.SearchesInLibrary)

return function(state, action)
	state = state or {}

	return {
		SearchesInGames = SearchesInGames(state.SearchesInGames, action),
		-- SearchesInGroups = SearchInGroups(state.SearchesInGroups, action),
		-- SearchesInPlayers = SearchInPlayers(state.SearchesInPlayers, action),
		-- SearchesInCatalog = SearchInCatalog(state.SearchesInCatalog, action),
		-- SearchesInLibrary = SearchInLibrary(state.SearchesInLibrary, action),
	}
end