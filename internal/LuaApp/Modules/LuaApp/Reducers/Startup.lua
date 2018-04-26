local Modules = game:GetService("CoreGui").RobloxGui.Modules

local FetchedGamesPageData = require(Modules.LuaApp.Reducers.FetchedGamesPageData)
local FetchedHomePageData = require(Modules.LuaApp.Reducers.FetchedHomePageData)
local SetPreloading = require(Modules.LuaApp.Actions.SetPreloading)

return function(state, action)
	local state = state or {}
	local Preloading = true

	if action.type == SetPreloading.name then
		Preloading = action.isPreloading
	end

	return {
		FetchedGamesPageData = FetchedGamesPageData(state.FetchedGamesPageData, action),
		FetchedHomePageData = FetchedHomePageData(state.FetchedHomePageData, action),
		Preloading = Preloading,
	}
end