local LuaChat = script.Parent.Parent
local ActionType = require(LuaChat.ActionType)

return function(state, action)
	state = (state == nil) and true or state

	if action.type == ActionType.SetChatEnabled then
		return action.value
	end

	return state
end