local Modules = game:GetService("CoreGui").RobloxGui.Modules
local SetPagePaused = require(Modules.LuaApp.Actions.SetPagePaused)

return function(state, action)
	state = state or false

	if action.type == SetPagePaused.name then
		state = action.value
	end

	return state
end