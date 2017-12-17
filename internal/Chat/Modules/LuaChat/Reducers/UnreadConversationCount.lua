local LuaChat = script.Parent.Parent
local ActionType = require(LuaChat.ActionType)

return function(state, action)
	state = state or 0

	if action.type == ActionType.SetUnreadConversationCount then
		state = action.count
	elseif action.type == ActionType.IncrementUnreadConversationCount then
		state = state + 1
	elseif action.type == ActionType.DecrementUnreadConversationCount then
		state = state - 1
	end
	return state
end