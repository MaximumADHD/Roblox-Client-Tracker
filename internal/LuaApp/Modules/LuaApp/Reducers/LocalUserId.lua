local Modules = game:GetService("CoreGui").RobloxGui.Modules
local SetLocalUserId = require(Modules.LuaApp.Actions.SetLocalUserId)

return function(state, action)
	state = state or ""

	if action.type == SetLocalUserId.name then
		return action.userId
	end

	return state
end