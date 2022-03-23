return function(state, _)
	local chatFetchSuccessAndEnabled = state.CanLocalUserChat
		and state.CanLocalUserChat.byFetchPrivacySettingsSuccess
		and not state.CanLocalUserChat.byFetchPrivacySettingsFailed

	return {
		canLocalUserChat = chatFetchSuccessAndEnabled,
		isChatInputBarVisible = state.ChatVisibility.isChatInputBarVisible,
		isChatWindowVisible = state.ChatVisibility.isChatWindowVisible,
		targetTextChannel = chatFetchSuccessAndEnabled and state.ChatInput.byTargetTextChannel,
		messages = state.Messages.inOrder,
	}
end
