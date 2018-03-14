local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules
local Common = Modules.Common
local LuaChat = Modules.LuaChat

local ActionType = require(LuaChat.ActionType)
local Immutable = require(Common.Immutable)

return function(state, action)
	state = state or {}
	if action.type == ActionType.ReceivedPlaceThumbnail then
		state = Immutable.Set(state, action.imageToken, action.thumbnail)
	end
	return state
end
