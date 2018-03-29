local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules
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