local LuaChat = script.Parent.Parent
local ActionType = require(LuaChat.ActionType)
local Immutable = require(LuaChat.Immutable)

return function(state, action)
	state = state or {}
	if action.type == ActionType.FetchedAssetCardInfo then
		if not state[action.assetInfo.AssetId] then
			state = Immutable.Set(state, action.assetInfo.AssetId, action.assetInfo)
		end
	end
	return state
end
