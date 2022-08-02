return function(state, _)
	return {
		canLocalUserChat = state.CanLocalUserChat,
		isChatInputBarVisible = state.ChatVisibility.isChatInputBarEnabled.value,
		isChatWindowVisible = state.ChatVisibility.isChatWindowEnabled.value,
		chatTopBarVisibility = state.ChatVisibility.isChatInputBarEnabled._topBarVisibility
			and state.ChatVisibility.isChatWindowEnabled._topBarVisibility,
		messages = state.Messages.inOrder,
	}
end
