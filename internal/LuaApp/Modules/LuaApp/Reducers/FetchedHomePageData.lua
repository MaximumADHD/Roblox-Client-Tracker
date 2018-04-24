local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Immutable = require(Modules.Common.Immutable)
local SetFetchedHomePageData = require(Modules.LuaApp.Actions.SetFetchedHomePageData)

return function(state, action)
	state = state or false

	if action.type == SetFetchedHomePageData.name then
		state = action.didFetch
	end

	return state
end