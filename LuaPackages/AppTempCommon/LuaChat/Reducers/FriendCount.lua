local CorePackages = game:GetService("CorePackages")
local SetFriendCount = require(CorePackages.AppTempCommon.LuaApp.Actions.SetFriendCount)

return function(state, action)
	state = state or 0

	if action.type == SetFriendCount.name then
		state = action.count
	end

	return state
end