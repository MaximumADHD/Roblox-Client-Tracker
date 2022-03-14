local networkRequests = script.Parent.networkRequests
local createAddToConversation = require(networkRequests.createAddToConversation)
local createRemoveFromConversation = require(networkRequests.createRemoveFromConversation)
local createRenameGroupConversation = require(networkRequests.createRenameGroupConversation)
local createStartGroupConversation = require(networkRequests.createStartGroupConversation)
local createStartOneToOneConversation = require(networkRequests.createStartOneToOneConversation)
local createSetConversationUniverse = require(networkRequests.createSetConversationUniverse)
local createResetConversationUniverse = require(networkRequests.createResetConversationUniverse)
local createSendMessage = require(networkRequests.createSendMessage)
local createSendGameLinkMessage = require(networkRequests.createSendGameLinkMessage)
local createUpdateUserTypingStatus = require(networkRequests.createUpdateUserTypingStatus)
local createMarkAsRead = require(networkRequests.createMarkAsRead)
local createMarkAsSeen = require(networkRequests.createMarkAsSeen)
local createGetMessages = require(networkRequests.createGetMessages)
local createGetUserConversations = require(networkRequests.createGetUserConversations)
local createGetConversations = require(networkRequests.createGetConversations)
local createGetLatestMessages = require(networkRequests.createGetLatestMessages)
local createGetUnreadConversationCount = require(networkRequests.createGetUnreadConversationCount)
local createGetUnreadMessages = require(networkRequests.createGetUnreadMessages)
local createGetChatSettings = require(networkRequests.createGetChatSettings)
local createGetRolloutSettings = require(networkRequests.createGetRolloutSettings)
local createGetMetadata = require(networkRequests.createGetMetadata)

return function(config)
	return {
		AddToConversation = createAddToConversation(config),
		RemoveFromConversation = createRemoveFromConversation(config),
		RenameGroupConversation = createRenameGroupConversation(config),

		StartGroupConversation = createStartGroupConversation(config),
		StartOneToOneConversation = createStartOneToOneConversation(config),

		SetConversationUniverse = createSetConversationUniverse(config),
		ResetConversationUniverse = createResetConversationUniverse(config),

		SendMessage = createSendMessage(config),
		SendGameLinkMessage = createSendGameLinkMessage(config),
		UpdateUserTypingStatus = createUpdateUserTypingStatus(config),
		MarkAsRead = createMarkAsRead(config),
		MarkAsSeen = createMarkAsSeen(config),

		GetMessages = createGetMessages(config),
		GetUserConversations = createGetUserConversations(config),
		GetConversations = createGetConversations(config),
		GetLatestMessages = createGetLatestMessages(config),
		GetUnreadConversationCount = createGetUnreadConversationCount(config),
		GetUnreadMessages = createGetUnreadMessages(config),

		GetChatSettings = createGetChatSettings(config),
		GetRolloutSettings = createGetRolloutSettings(config),
		GetMetadata = createGetMetadata(config),
	}
end
