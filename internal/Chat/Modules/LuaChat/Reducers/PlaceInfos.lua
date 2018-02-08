local LuaChat = script.Parent.Parent
local ActionType = require(LuaChat.ActionType)
local Immutable = require(LuaChat.Immutable)
local PlaceInfoModel = require(LuaChat.Models.PlaceInfoModel)
local Constants = require(LuaChat.Constants)

return function(state, action)
	state = state or {}
	if action.type == ActionType.FetchedPlaceInfo then
		state = Immutable.Set(state, action.placeInfo.placeId, action.placeInfo)
	elseif action.type == ActionType.FetchingPlaceInfo then
		local newPlaceInfo = PlaceInfoModel.new()
		newPlaceInfo.status = Constants.WebStatus.FETCHING
		state = Immutable.Set(state, action.placeId, newPlaceInfo)
	elseif action.type == ActionType.FailedToFetchPlaceInfo then
		state = Immutable.Set(state, action.placeId, nil)
	end
	return state
end
