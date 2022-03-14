return function(state, _)
	local chatFetchSuccessAndEnabled = state.CanLocalUserChat
		and state.CanLocalUserChat.byFetchPrivacySettingsSuccess
		and not state.CanLocalUserChat.byFetchPrivacySettingsFailed

	return {
		canLocalUserChat = chatFetchSuccessAndEnabled,
		isChatInputBarVisible = state.ChatVisibility.isChatInputBarVisible,
		isChatWindowVisible = state.ChatVisibility.isChatWindowVisible,
		messages = chatFetchSuccessAndEnabled and state.ChatMessages.byMessageId or {},
		messageHistory = chatFetchSuccessAndEnabled and state.ChatMessages.byTextChannelId or {},
		mutedUserIds = state.ChatCommands and state.ChatCommands.byUserId.mutedUserIds,
		targetChannelDisplayName = chatFetchSuccessAndEnabled and state.ChatInput.byTargetChannelDisplayName,
	}
end
