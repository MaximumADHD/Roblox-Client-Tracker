local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local ActionType = require(Modules.LuaApp.Actions.ActionType)
local Immutable = require(Modules.Common.Immutable)
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)
local FFlagAvatarEditorUseNewCommonAction = Flags:GetFlag('AvatarEditorUseNewCommonAction')

if not FFlagAvatarEditorUseNewCommonAction then
	return function(state, action)
		state = state or {}

		if action.type == ActionType.SelectCategoryTab then
			local categoryIndex = action.categoryIndex
			local tabInfo = {
				TabIndex = action.tabIndex;
				Position = action.position;
			}
			return Immutable.Set(state, categoryIndex, tabInfo)
		elseif action.type == ActionType.ResetCategory then
			return {}
		end

		return state
	end
else
	local SelectCategoryTab = require(Modules.LuaApp.Actions.SelectCategoryTab)
	local ResetCategory = require(Modules.LuaApp.Actions.ResetCategory)

	return function(state, action)
		state = state or {}

		if action.type == SelectCategoryTab.name then
			local categoryIndex = action.categoryIndex
			local tabInfo = {
				TabIndex = action.tabIndex;
				Position = action.position;
			}
			return Immutable.Set(state, categoryIndex, tabInfo)
		elseif action.type == ResetCategory.name then
			return {}
		end

		return state
	end
end