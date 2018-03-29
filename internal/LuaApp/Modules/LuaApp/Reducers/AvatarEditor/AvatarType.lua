local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local SetAvatarType = require(Modules.LuaApp.Actions.SetAvatarType)
local ToggleAvatarType = require(Modules.LuaApp.Actions.ToggleAvatarType)

return function(state, action)
	if action.type == SetAvatarType.name then
		return action.avatarType
	elseif action.type == ToggleAvatarType.name then
		return state == "R6" and "R15" or "R6"
	end

	return state
end
