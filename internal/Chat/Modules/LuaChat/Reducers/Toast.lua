local LuaChat = script.Parent.Parent
local ActionType = require(LuaChat.ActionType)

return function(state, action)
	state = state or nil

	if action.type == ActionType.ShowToast then
		state = action.toast
	elseif action.type == ActionType.ToastComplete then
		state = nil
	end

	return state
end