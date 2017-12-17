local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local ActionType = require(Modules.LuaApp.Actions.ActionType)
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)
local FFlagAvatarEditorUseNewCommonAction = Flags:GetFlag('AvatarEditorUseNewCommonAction')

if not FFlagAvatarEditorUseNewCommonAction then
	return function(state, action)
		state = state or false

		if action.type == ActionType.ToggleAvatarEditorFullView then
			return not state
		end

		if action.type == ActionType.SetAvatarEditorFullView then
			return action.fullView
		end

		return state
	end
else
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
end
