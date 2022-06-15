return function(state, _)
	local chatFetchSuccessAndEnabled = state.CanLocalUserChat
		and state.CanLocalUserChat.byFetchPrivacySettingsSuccess
		and not state.CanLocalUserChat.byFetchPrivacySettingsFailed
	return {
		canLocalUserChat = chatFetchSuccessAndEnabled,
		isChatInputBarVisible = state.ChatVisibility.isChatInputBarEnabled.value,
		isChatWindowVisible = state.ChatVisibility.isChatWindowEnabled.value,
		chatTopBarVisibility = state.ChatVisibility.isChatInputBarEnabled._topBarVisibility
			and state.ChatVisibility.isChatWindowEnabled._topBarVisibility,
		messages = state.Messages.inOrder,
	}
end
