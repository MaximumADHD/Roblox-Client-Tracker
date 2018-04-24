local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules
local Common = Modules.Common
local LuaChat = Modules.LuaChat

local ActionType = require(LuaChat.ActionType)
local Action = require(Common.Action)
local RetrievalStatus = require(Modules.LuaApp.Enum.RetrievalStatus)

return Action(ActionType.FetchingUser, function(userId)
	return {
		userId = userId,
		status = RetrievalStatus.Fetching,
	}
end)