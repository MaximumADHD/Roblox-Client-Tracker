local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local SetConsoleMenuLevel = require(Modules.LuaApp.Actions.SetConsoleMenuLevel)

return function(state, action)
	state = state or 0

	if action.type == SetConsoleMenuLevel.name then
		return action.menuLevel
	end

	return state
end
