local LuaChat = script.Parent.Parent
local ActionType = require(LuaChat.ActionType)
local Immutable = require(LuaChat.Immutable)

return function(state, action)
	state = state or {}
	if action.type == ActionType.FetchedPlaceThumbnail then
		state = Immutable.Set(state, action.imageToken, action.thumbnail)
	end
	return state
end
