local Modules = game:GetService("CoreGui").RobloxGui.Modules

local ActionType = require(Modules.LuaChat.ActionType)
local Immutable = require(Modules.Common.Immutable)

return function(state, action)
	state = state or {}
	if action.type == ActionType.RequestPlaceThumbnail then
		return Immutable.JoinDictionaries(state, {
			[action.imageToken] = true,
		})
	elseif action.type == ActionType.ReceivedPlaceThumbnail then
		return Immutable.JoinDictionaries(state, {
			[action.imageToken] = false,
		})
	elseif action.type == ActionType.FailedToFetchPlaceThumbnail then
		return Immutable.JoinDictionaries(state, {
			[action.imageToken] = false,
		})
	end
	return state
end
