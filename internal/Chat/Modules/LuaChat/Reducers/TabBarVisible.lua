local LuaChat = script.Parent.Parent
local ActionType = require(LuaChat.ActionType)

return function(state, action)
	if state == nil then
		state = true
	end

	if action.type == ActionType.SetTabBarVisible then
		state = action.value
	end

	return state
end