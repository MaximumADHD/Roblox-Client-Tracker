local LuaChat = script.Parent.Parent
local ActionType = require(LuaChat.ActionType)
local Immutable = require(LuaChat.Immutable)

return function(state, action)
	state = state or {}
	if action.type == ActionType.RequestPlaceThumbnail then
		return Immutable.Join(state, {
			[action.imageToken] = true,
		})
	elseif action.type == ActionType.ReceivedPlaceThumbnail then
		return Immutable.Join(state, {
			[action.imageToken] = false,
		})
	elseif action.type == ActionType.FailedToFetchPlaceThumbnail then
		return Immutable.Join(state, {
			[action.imageToken] = false,
		})
	end
	return state
end
