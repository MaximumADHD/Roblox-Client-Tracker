local LuaChat = script.Parent.Parent
local ActionType = require(LuaChat.ActionType)
local Immutable = require(LuaChat.Immutable)

return function(state, action)
	state = state or {}
	if action.type == ActionType.RequestPlaceInfo then
		return Immutable.Join(state, {
			[action.placeId] = true,
		})
	elseif action.type == ActionType.ReceivedPlaceInfo then
		return Immutable.Join(state, {
			[action.placeId] = false,
		})
	elseif action.type == ActionType.FailedToFetchPlaceInfo then
		return Immutable.Join(state, {
			[action.placeId] = false,
		})
	end
	return state
end
