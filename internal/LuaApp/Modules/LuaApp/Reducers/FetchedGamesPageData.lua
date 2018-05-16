local Modules = game:GetService("CoreGui").RobloxGui.Modules
local SetFetchedGamesPageData = require(Modules.LuaApp.Actions.SetFetchedGamesPageData)

return function(state, action)
	state = state or false

	if action.type == SetFetchedGamesPageData.name then
		state = action.didFetch
	end

	return state
end