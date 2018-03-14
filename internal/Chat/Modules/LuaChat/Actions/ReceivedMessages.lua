local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules
local Common = Modules.Common
local LuaChat = Modules.LuaChat

local ActionType = require(LuaChat.ActionType)
local Action = require(Common.Action)

return Action(ActionType.ReceivedMessages,
	function(conversationId, messages, shouldMarkConversationUnread, messageId)
		return {
			conversationId = conversationId,
			messages = messages,
			shouldMarkConversationUnread = shouldMarkConversationUnread,
			exclusiveStartMessageId = messageId,
		}
	end
)