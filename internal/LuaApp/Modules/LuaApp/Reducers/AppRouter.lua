local Modules = game:GetService("CoreGui").RobloxGui.Modules
local AppPage = require(Modules.LuaApp.AppPage)
local SetAppPage = require(Modules.LuaApp.Actions.SetAppPage)

return function(state, action)
	state = state or {
		currentPage = AppPage.None,
		parameters = nil,
	}

	if action.type == SetAppPage.name then
		state.currentPage = action.targetPage
		state.parameters = action.parameters
	end

	return state
end