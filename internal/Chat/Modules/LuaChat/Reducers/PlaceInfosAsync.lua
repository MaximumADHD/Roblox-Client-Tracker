local Modules = game:GetService("CoreGui").RobloxGui.Modules

local ActionType = require(Modules.LuaChat.ActionType)
local Immutable = require(Modules.Common.Immutable)

return function(state, action)
	state = state or {}
	if action.type == ActionType.RequestPlaceInfo then
		return Immutable.JoinDictionaries(state, {
			[action.placeId] = true,
		})
	elseif action.type == ActionType.ReceivedPlaceInfo then
		return Immutable.JoinDictionaries(state, {
			[action.placeId] = false,
		})
	elseif action.type == ActionType.FailedToFetchPlaceInfo then
		return Immutable.JoinDictionaries(state, {
			[action.placeId] = false,
		})
	end
	return state
end
