local function ChatPolicies(policy): Type
	return {
		getChatConversationHeaderGroupDetails = function()
			return policy.ChatConversationHeaderGroupDetails or false
		end,
		getChatHeaderSearch = function()
			return policy.ChatHeaderSearch or false
		end,
		getChatHeaderCreateChatGroup = function()
			return policy.ChatHeaderCreateChatGroup or false
		end,
		getChatHeaderHomeButton = function()
			return policy.ChatHeaderHomeButton or false
		end,
		getChatHeaderNotifications = function()
			return policy.ChatHeaderNotifications or false
		end,
		getChatPlayTogether = function()
			return policy.ChatPlayTogether or false
		end,
		getChatShareGameToChatFromChat = function()
			return policy.ChatShareGameToChatFromChat or false
		end,
		getChatTapConversationThumbnail = function()
			return policy.ChatTapConversationThumbnail or false
		end,
		getChatReportingDisabled = function()
			return policy.ChatReportingDisabled or false
		end,
		getChatViewProfileOption = function()
			return policy.ChatViewProfileOption or false
		end,
		getContactImporterEnabled = function()
			return policy.ContactImporterEnabled or false
		end,
	}
end

export type Type = typeof(ChatPolicies(...))

return ChatPolicies
