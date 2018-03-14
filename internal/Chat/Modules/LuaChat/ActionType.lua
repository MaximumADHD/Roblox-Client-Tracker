local ActionType = {
	AddUser = "AddUser",
	SetUserIsFriend = "SetUserIsFriend",
	ReceivedConversation = "ReceivedConversation",
	ReceivedMessages = "ReceivedMessages",
	RenamedGroupConversation = "RenamedGroupConversation",
	ChangedParticipants = "ChangedParticipants",
	RemovedConversation = "RemovedConversation",

	RequestLatestMessages = "RequestLatestMessages",
	ReceivedLatestMessages = "ReceivedLatestMessages",

	RequestUserPresence = "RequestUserPresence",
	ReceivedUserPresence = "ReceivedUserPresence",

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
	FetchingUser = "FetchingUser",
	GetUser = "GetUser",
	RequestUsername = "RequestUsername",

	RequestAllFriends = "RequestAllFriends",
	ReceivedAllFriends = "ReceivedAllFriends",

	RequestPageConversations = "RequestPageConversations",
	ReceivedPageConversations = "ReceivedPageConversations",

	SetFriendCount = "SetFriendCount",
	SetConnectionState = "SetConnectionState",
	SetConversationLoadingStatus = "SetConversationLoadingStatus",

	ReceivedOldestConversation = "ReceivedOldestConversation",

	SetRoute = "SetRoute",
	PopRoute = "PopRoute",
	RemoveRoute = "RemoveRoute",
	SetUserLeavingConversation = "SetUserLeavingConversation",
	SetFormFactor = "SetFormFactor",
	ToggleChatPaused = "ToggleChatPaused",
	SetTabBarVisible = "SetTabBarVisible",

	SetUnreadConversationCount = "SetUnreadConversationCount",
	IncrementUnreadConversationCount = "IncrementUnreadConversationCount",
	DecrementUnreadConversationCount = "DecrementUnreadConversationCount",
	FetchedAssetCardInfo = "FetchedAssetCardInfo",
	RequestPlaceInfo = "RequestPlaceInfo",
	ReceivedPlaceInfo = "ReceivedPlaceInfo",
	FailedToFetchPlaceInfo = "FailedToFetchPlaceInfo",
	RequestPlaceThumbnail = "RequestPlaceThumbnail",
	ReceivedPlaceThumbnail = "ReceivedPlaceThumbnail",
	FailedToFetchPlaceThumbnail = "FailedToFetchPlaceThumbnail",
}

setmetatable(ActionType, {
	__index = function(self, key)
		error(("Invalid ActionType %q"):format(tostring(key)))
	end
})

return ActionType