local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules
local Common = Modules.Common
local LuaChat = Modules.LuaChat

local ActionType = require(LuaChat.ActionType)
local Action = require(Common.Action)

return Action(ActionType.RenamedGroupConversation, function(conversationId, title, isDefaultTitle, lastUpdated)
	return {
		conversationId = conversationId,
		title = title,
		isDefaultTitle = isDefaultTitle,
		lastUpdated = lastUpdated,
	}
end)