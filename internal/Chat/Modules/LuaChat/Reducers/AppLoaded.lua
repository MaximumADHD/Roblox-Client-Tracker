local LuaChat = script.Parent.Parent
local ActionType = require(LuaChat.ActionType)

return function(state, action)
	state = state or false

	if action.type == ActionType.SetAppLoaded then
		return action.value
	end

	return state
end