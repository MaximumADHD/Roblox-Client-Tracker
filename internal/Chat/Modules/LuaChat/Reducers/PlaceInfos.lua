local LuaChat = script.Parent.Parent
local ActionType = require(LuaChat.ActionType)
local Immutable = require(LuaChat.Immutable)

return function(state, action)
	state = state or {}
	if action.type == ActionType.ReceivedPlaceInfo then
		state = Immutable.Set(state, action.placeInfo.placeId, action.placeInfo)
	end
	return state
end
