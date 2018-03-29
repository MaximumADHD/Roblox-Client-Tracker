local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local ToggleAvatarEditorFullView = require(Modules.LuaApp.Actions.ToggleAvatarEditorFullView)
local SetAvatarEditorFullView = require(Modules.LuaApp.Actions.SetAvatarEditorFullView)

return function(state, action)
	state = state or false

	if action.type == ToggleAvatarEditorFullView.name then
		return not state
	end

	if action.type == SetAvatarEditorFullView.name then
		return action.fullView
	end

	return state
end
