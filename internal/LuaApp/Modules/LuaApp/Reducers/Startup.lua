local Modules = game:GetService("CoreGui").RobloxGui.Modules

local FetchedGamesPageData = require(Modules.LuaApp.Reducers.FetchedGamesPageData)
local FetchedHomePageData = require(Modules.LuaApp.Reducers.FetchedHomePageData)

return function(state, action)
	state = state or {}

	return {
		FetchedGamesPageData = FetchedGamesPageData(state.FetchedGamesPageData, action),
		FetchedHomePageData = FetchedHomePageData(state.FetchedHomePageData, action),
	}
end