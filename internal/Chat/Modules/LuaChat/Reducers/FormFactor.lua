local LuaChat = script.Parent.Parent
local ActionType = require(LuaChat.ActionType)
local Device = require(LuaChat.Device)

return function(state, action)
	state = state or Device.FormFactor.PHONE

	if action.type == ActionType.SetFormFactor then
		return action.formFactor
	end

	return state
end