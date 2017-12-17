local LuaChat = script.Parent.Parent
local ActionType = require(LuaChat.ActionType)

return function(state, action)
	state = state or Enum.ConnectionState.Connected

	if action.type == ActionType.SetConnectionState then
		state = action.connectionState
	end

	return state
end