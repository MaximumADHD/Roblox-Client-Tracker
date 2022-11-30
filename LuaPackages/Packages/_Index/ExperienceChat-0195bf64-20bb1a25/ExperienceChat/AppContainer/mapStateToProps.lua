return function(state, _)
	return {
		canLocalUserChat = state.CanLocalUserChat,
		isChatInputBarVisible = state.ChatVisibility.isChatInputBarEnabled.value,
		isChatWindowVisible = state.ChatVisibility.isChatWindowEnabled.value,
		chatTopBarVisibility = state.ChatVisibility.isChatInputBarEnabled._topBarVisibility
			and state.ChatVisibility.isChatWindowEnabled._topBarVisibility,
		messages = state.Messages.inOrder,

		lastGeneralActivityTimestamp = state.ChatVisibility.transparency.lastGeneralActivityTimestamp,
		lastMessageActivityTimestamp = state.ChatVisibility.transparency.lastMessageActivityTimestamp,
		isTextBoxFocused = state.ChatVisibility.transparency.isTextBoxFocused,
		chatLayoutAlignment = state.ChatLayout.Alignment,
		chatWindowSettings = state.ChatLayout.ChatWindowSettings,
	}
end
