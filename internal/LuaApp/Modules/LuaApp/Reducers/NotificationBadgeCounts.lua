local Modules = game:GetService("CoreGui").RobloxGui.Modules
local SetNotificationCount = require(Modules.LuaApp.Actions.SetNotificationCount)

return function(state, action)
	state = state or {
		TopBarNotificationIcon = "0",
	}

	if action.type == SetNotificationCount.name then
		state.TopBarNotificationIcon = action.notificationCount
	end

	return state
end