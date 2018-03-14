local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules
local Common = Modules.Common
local LuaChat = Modules.LuaChat

local ActionType = require(LuaChat.ActionType)
local Action = require(Common.Action)

return Action(ActionType.ChangedParticipants, function(id, participants, title, lastUpdated)
	return {
		conversationId = id,
		participants = participants,
		title = title,
		lastUpdated = lastUpdated,
	}
end)