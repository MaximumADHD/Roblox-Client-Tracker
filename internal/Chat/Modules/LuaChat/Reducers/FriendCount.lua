local LuaChat = script.Parent.Parent
local ActionType = require(LuaChat.ActionType)

return function(state, action)
	state = state or 0

	if action.type == ActionType.SetFriendCount then
		return action.count
	end

	return state
end