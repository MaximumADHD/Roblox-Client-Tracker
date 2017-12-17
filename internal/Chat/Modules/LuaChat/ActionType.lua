local ActionType = {
	AddUser = "AddUser",
	SetUserIsFriend = "SetUserIsFriend",
	ReceivedConversation = "ReceivedConversation",
	ReceivedMessages = "ReceivedMessages",
	RenamedGroupConversation = "RenamedGroupConversation",
	ChangedParticipants = "ChangedParticipants",
	RemovedConversation = "RemovedConversation",
	FetchLocalUserConversations = "FetchLocalUserConversations",
	GotUserPresence = "GotUserPresence",
	ShowAlert = "ShowAlert",
	DeleteAlert = "DeleteAlert",
	ShowToast = "ShowToast",
	ToastComplete = "ToastComplete",
	SendingMessage = "SendingMessage",
	SentMessage = "SentMessage",
	FetchingOlderMessages = "FetchingOlderMessages",
	FetchedOldestMessage = "FetchedOldestMessage",
	ReadConversation = "ReadConversation",
	MessageModerated = "MessageModerated",
	MessageFailedToSend = "MessageFailedToSend",
	SetChatEnabled = "SetChatEnabled",
	SetUserTyping = "SetUserTyping",
	SetAppLoaded = "SetAppLoaded",
	ReceivedUsername = "ReceivedUsername",
	SetFriendCount = "SetFriendCount",
	SetConnectionState = "SetConnectionState",
	SetConversationLoadingStatus = "SetConversationLoadingStatus",
	SetFetchingConversations = "SetFetchingConversations",
	FetchedOldestConversation = "FetchedOldestConversation",
	SetRoute = "SetRoute",
	PopRoute = "PopRoute",
	RemoveRoute = "RemoveRoute",
	SetFormFactor = "SetFormFactor",
	ToggleChatPaused = "ToggleChatPaused",
	SetTabBarVisible = "SetTabBarVisible",
	FetchedAllFriends = "FetchedAllFriends",
	SetUnreadConversationCount = "SetUnreadConversationCount",
	IncrementUnreadConversationCount = "IncrementUnreadConversationCount",
	DecrementUnreadConversationCount = "DecrementUnreadConversationCount",
	FetchedAssetCardInfo = "FetchedAssetCardInfo",
	FetchedPlaceInfo = "FetchedPlaceInfo",
	FetchedPlaceThumbnail = "FetchedPlaceThumbnail",
}

setmetatable(ActionType, {
	__index = function(self, key)
		error(("Invalid ActionType %q"):format(tostring(key)))
	end
})

return ActionType