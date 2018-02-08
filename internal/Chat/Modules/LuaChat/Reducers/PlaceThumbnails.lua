local LuaChat = script.Parent.Parent
local ActionType = require(LuaChat.ActionType)
local Immutable = require(LuaChat.Immutable)
local ThumbnailModel = require(LuaChat.Models.ThumbnailModel)
local Constants = require(LuaChat.Constants)

return function(state, action)
	state = state or {}
	if action.type == ActionType.FetchedPlaceThumbnail then
		state = Immutable.Set(state, action.imageToken, action.thumbnail)
	elseif action.type == ActionType.FetchingImageToken then
		local newThumbnailModel = ThumbnailModel.new()
		newThumbnailModel.status = Constants.WebStatus.FETCHING
		state = Immutable.Set(state, action.imageToken, newThumbnailModel)
	end
	return state
end
