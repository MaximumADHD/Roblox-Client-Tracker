local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local ActionType = require(Modules.LuaApp.Actions.ActionType)
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)
local FFlagAvatarEditorUseNewCommonAction = Flags:GetFlag('AvatarEditorUseNewCommonAction')

if not FFlagAvatarEditorUseNewCommonAction then
	return function(state, action)
		if action.type == ActionType.SelectCategory then
			return action.categoryIndex
		elseif action.type == ActionType.ResetCategory then
			return nil
		end

		return state
	end
else
	local SelectCategory = require(Modules.LuaApp.Actions.SelectCategory)
	local ResetCategory = require(Modules.LuaApp.Actions.ResetCategory)

	return function(state, action)
		if action.type == SelectCategory.name then
			return action.categoryIndex
		elseif action.type == ResetCategory.name then
			return nil
		end

		return state
	end
end