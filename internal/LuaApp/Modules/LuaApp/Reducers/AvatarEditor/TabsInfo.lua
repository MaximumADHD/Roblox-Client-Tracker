local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
local Immutable = require(Modules.Common.Immutable)
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