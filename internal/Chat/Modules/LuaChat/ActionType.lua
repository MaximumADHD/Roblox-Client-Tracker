local ActionType = {
	AddUser = "AddUser",
	SetUserIsFriend = "SetUserIsFriend",
	ReceivedConversation = "ReceivedConversation",
	ReceivedMessages = "ReceivedMessages",
	RenamedGroupConversation = "RenamedGroupConversation",
	ChangedParticipants = "ChangedParticipants",
	RemovedConversation = "RemovedConversation",
	FetchLocalUserConversations = "FetchLocalUserConversations",

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

	RequestUsername = "RequestUsername",
	ReceivedUsername = "ReceivedUsername",

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
	SetFormFactor = "SetFormFactor",
	ToggleChatPaused = "ToggleChatPaused",
	SetTabBarVisible = "SetTabBarVisible",

	SetUnreadConversationCount = "SetUnreadConversationCount",
	IncrementUnreadConversationCount = "IncrementUnreadConversationCount",
	DecrementUnreadConversationCount = "DecrementUnreadConversationCount",
	FetchedAssetCardInfo = "FetchedAssetCardInfo",
	FetchedPlaceInfo = "FetchedPlaceInfo",
	FetchingPlaceInfo = "FetchingPlaceInfo",
	FailedToFetchPlaceInfo = "FailedToFetchPlaceInfo",
	FetchedPlaceThumbnail = "FetchedPlaceThumbnail",
	FetchingImageToken = "FetchingImageToken",
}

setmetatable(ActionType, {
	__index = function(self, key)
		error(("Invalid ActionType %q"):format(tostring(key)))
	end
})

return ActionType