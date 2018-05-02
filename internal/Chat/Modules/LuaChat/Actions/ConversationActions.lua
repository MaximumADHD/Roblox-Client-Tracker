local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules
local LuaApp = Modules.LuaApp
local LuaChat = Modules.LuaChat

local Functional = require(Modules.Common.Functional)
local WebApi = require(LuaChat.WebApi)
local DateTime = require(LuaChat.DateTime)
local MockId = require(LuaChat.MockId)
local Constants = require(LuaChat.Constants)
local Alert = require(LuaChat.Models.Alert)
local ToastModel = require(LuaChat.Models.ToastModel)
local ConversationModel = require(LuaChat.Models.Conversation)
local UserModel = require(LuaChat.Models.User)

local AddUser = require(Modules.LuaApp.Actions.AddUser)
local ChangedParticipants = require(LuaChat.Actions.ChangedParticipants)
local DecrementUnreadConversationCount = require(LuaChat.Actions.DecrementUnreadConversationCount)
local FetchingOlderMessages = require(LuaChat.Actions.FetchingOlderMessages)
local FetchedOldestMessage = require(LuaChat.Actions.FetchedOldestMessage)
local GetFriendCount = require(LuaChat.Actions.GetFriendCount)
local RequestAllFriends = require(LuaChat.Actions.RequestAllFriends)
local ReceivedAllFriends = require(LuaChat.Actions.ReceivedAllFriends)
local IncrementUnreadConversationCount = require(LuaChat.Actions.IncrementUnreadConversationCount)
local MessageFailedToSend = require(LuaChat.Actions.MessageFailedToSend)
local MessageModerated = require(LuaChat.Actions.MessageModerated)
local ReadConversation = require(LuaChat.Actions.ReadConversation)
local ReceivedConversation = require(LuaChat.Actions.ReceivedConversation)
local ReceivedOldestConversation = require(LuaChat.Actions.ReceivedOldestConversation)
local RequestPageConversations = require(LuaChat.Actions.RequestPageConversations)
local ReceivedPageConversations = require(LuaChat.Actions.ReceivedPageConversations)
local ReceivedMessages = require(LuaChat.Actions.ReceivedMessages)
local RequestLatestMessages = require(LuaChat.Actions.RequestLatestMessages)
local ReceivedLatestMessages = require(LuaChat.Actions.ReceivedLatestMessages)
local RequestUserPresence = require(LuaChat.Actions.RequestUserPresence)
local ReceivedUserPresence = require(LuaChat.Actions.ReceivedUserPresence)
local RemovedConversation = require(LuaChat.Actions.RemovedConversation)
local RenamedGroupConversation = require(LuaChat.Actions.RenamedGroupConversation)
local SendingMessage = require(LuaChat.Actions.SendingMessage)
local SentMessage = require(LuaChat.Actions.SentMessage)
local SetConversationLoadingStatus = require(LuaChat.Actions.SetConversationLoadingStatus)
local SetUnreadConversationCount = require(LuaChat.Actions.SetUnreadConversationCount)
local SetUserIsFriend = require(Modules.LuaApp.Actions.SetUserIsFriend)
local ShowAlert = require(LuaChat.Actions.ShowAlert)
local ShowToast = require(LuaChat.Actions.ShowToast)
local SetUserLeavingConversation = require(LuaChat.Actions.SetUserLeavingConversation)

local StringsLocale = require(LuaApp.StringsLocale)
local Promise = require(LuaApp.Promise)

local GET_MESSAGES_PAGE_SIZE = Constants.PageSize.GET_MESSAGES

local lastAscendingNumber = 0

local function getAscendingNumber()
	lastAscendingNumber = lastAscendingNumber + 1
	return lastAscendingNumber
end

local ConversationActions = {}

local function processConversations(store, status, result)
	local state = store:GetState()

	if status ~= WebApi.Status.OK then
		warn("WebApi failure in processConversation, Status: "..tostring(status))
		return
	end

	local conversations = result.conversations
	local users = result.users

	local convoIds = {}
	local userIds = {}
	for _, convo in ipairs(conversations) do
		store:Dispatch(ReceivedConversation(convo))
		table.insert(convoIds, convo.id)
	end

	for _, user in pairs(users) do
		if state.Users[user.id] == nil then
			store:Dispatch(AddUser(user))
			table.insert(userIds, user.id)
		end
	end

	store:Dispatch(ConversationActions.GetLatestMessages(convoIds))
	store:Dispatch(ConversationActions.GetUserPresences(userIds))
end

local function getUserConversations(store, pageNumber, pageSize)
	local status, result = WebApi.GetUserConversations(pageNumber, pageSize)

	if status ~= WebApi.Status.OK then
		return status, result
	end

	if #result.conversations < pageSize then
		store:Dispatch(ReceivedOldestConversation(true))
		store:Dispatch(ConversationActions.CreateMockOneOnOneConversationsAsync())
	end

	return status, result
end

local function shouldFetchPageConversations(state)
	if state.ChatAppReducer.ConversationsAsync.pageConversationsIsFetching then
		return false
	end
	return true
end

function ConversationActions.GetLocalUserConversationsAsync(pageNumber, pageSize)
	return function(store)
		if not shouldFetchPageConversations(store:GetState()) then
			return
		end
		-- sets status in state we are fetching pages
		store:Dispatch(RequestPageConversations())

		return Promise.new(function(resolve)
			local status, result = getUserConversations(store, pageNumber, pageSize)
			processConversations(store, status, result)
			store:Dispatch(ReceivedPageConversations())

			resolve()
		end)
	end
end

local function refreshMessages(conversationId, store)
	--Returns true if their are no new messages
	local status, messages = WebApi.GetMessages(conversationId, 1)

	if status ~= WebApi.Status.OK then
		warn("WebApi failure in refreshMessages", status)
		return true
	end

	local conversation = store:GetState().ChatAppReducer.Conversations[conversationId]
	if not conversation then
		return false
	end

	local hasNewMessages = false
	if conversation.messages:Length() > 0 then
		local mostRecentKnown = conversation.messages:Last().sent:GetUnixTimestamp()
		for _, message in ipairs(messages) do
			if message.sent:GetUnixTimestamp() > mostRecentKnown then
				hasNewMessages = true
				break
			end
		end
	else
		hasNewMessages = #messages > 0
	end

	if hasNewMessages then
		store:Dispatch(ConversationActions.GetNewMessages(conversationId))
	end

	return not hasNewMessages
end

local function hasSameParticipants(existingConvo, newConvo)
	--O(n^2), but n is at most 6!
	if #existingConvo.participants ~= #newConvo.participants then
		return false
	end
	for _, existingPart in ipairs(existingConvo.participants) do
		local found = false
		for _, newPart in ipairs(newConvo.participants) do
			if existingPart == newPart then
				found = true
				break
			end
		end
		if not found then
			return false
		end
	end
	return true
end

local function refreshConversations(pageNumber, store)

	local status, result = getUserConversations(store, pageNumber, Constants.PageSize.GET_CONVERSATIONS)
	if status ~= WebApi.Status.OK then
		warn("WebApi failure in WebApi.GetUserConversations")
		return
	end

	local state = store:GetState()
	local conversations = result.conversations
	local users = result.users

	for _, user in pairs(users) do
		if state.Users[user.id] == nil then
			store:Dispatch(AddUser(user))
		end
	end

	local needInitialMessages = {}

	for _, convo in ipairs(conversations) do
		local convoIsIdentical = true
		if state.ChatAppReducer.Conversations[convo.id] then
			local existing = state.ChatAppReducer.Conversations[convo.id]
			if existing.title ~= convo.title then
				convoIsIdentical = false
				store:Dispatch(RenamedGroupConversation(convo.id, convo.title))
			end
			if not hasSameParticipants(convo, existing) then
				convoIsIdentical = false
				store:Dispatch(ChangedParticipants(convo.id, convo.participants))
			end
			if not existing.fetchingOlderMessages then
				convoIsIdentical = convoIsIdentical and refreshMessages(existing.id, store)
			end
		else
			convoIsIdentical = false
			store:Dispatch(ReceivedConversation(convo))
			table.insert(needInitialMessages, convo.id)
		end
		if convoIsIdentical then
			return
		end
	end

	--We're going to continue getting conversations
	--until we run into one that hasn't changed. This,
	--potentially, means that we're getting all conversations,
	--if all conversations have changed.
	if #conversations == Constants.PageSize.GET_CONVERSATIONS then
		refreshConversations(pageNumber+1, store)
	end
end

function ConversationActions.StartOneToOneConversation(conversation, onSuccess)
	return function(store)
		spawn(function()
			local userId = nil
			for _, participantId in ipairs(conversation.participants) do
				if participantId ~= tostring(Players.LocalPlayer.UserId) then
					userId = participantId
				end
			end
			local status, result = WebApi.StartOneToOneConversation(userId, conversation.clientId)

			if status ~= WebApi.Status.OK then
				warn("WebApi failure in StartOneToOneConversation, status:", status)
				return
			end

			--The StartOneToOneConversation API endpoint returns a conversation with a null
			--title. Have to call GetConversation to get correct data.
			status, result = WebApi.GetConversations({result.id})

			if status ~= WebApi.Status.OK then
				warn("WebApi failure in GetConversations, status:", status)
				return
			end

			if #result.conversations <= 0 then
				warn("WebApi invalid result from GetConversations")
				return
			end

			local serverConversation = result.conversations[1]
			store:Dispatch(ReceivedConversation(serverConversation))

			store:Dispatch(RemovedConversation(conversation.id))
			if onSuccess then
				onSuccess(serverConversation)
			end
		end)
	end
end

function ConversationActions.CreateMockOneOnOneConversationsAsync()
	return function(store)
		local onFetchedAllFriends = function()
			local state = store:GetState()
			local needsMockConversation = {}
			for userId, user in pairs(state.Users) do
				if user.isFriend then
					needsMockConversation[userId] = user
				end
			end

			for _, conversation in pairs(state.ChatAppReducer.Conversations) do
				if conversation.conversationType == ConversationModel.Type.ONE_TO_ONE_CONVERSATION then
					for _, userId in ipairs(conversation.participants) do
						needsMockConversation[userId] = nil
					end
				end
			end

			for _, user in pairs(needsMockConversation) do
				local conversation = ConversationModel.fromUser(user)
				store:Dispatch(ReceivedConversation(conversation))
			end
		end

		return Promise.new(function(resolve)
			store:Dispatch(ConversationActions.GetAllFriendsAsync())
			onFetchedAllFriends()
			resolve()
		end)
	end
end

function ConversationActions.RefreshConversations()
	return function(store)
		local state = store:GetState()
		if next(state.ChatAppReducer.Conversations) == nil then
			spawn(function()
				store:Dispatch(ConversationActions.GetLocalUserConversationsAsync(1, Constants.PageSize.GET_CONVERSATIONS))
			end)
		else
			spawn(function()
				refreshConversations(1, store)
			end)
		end
	end
end

function ConversationActions.GetConversations(convoIds)
	return function(store)
		local status, result = WebApi.GetConversations(convoIds)

		processConversations(store, status, result)
		return status
	end
end

local function shouldGetAllFriends(state)
	if state.UsersAsync.allFriendsIsFetching then
		return false
	end
	return true
end

function ConversationActions.GetAllFriendsAsync()
	return function(store)
		if not shouldGetAllFriends(store:GetState()) then
			return
		end
		--marks in store we are fetching
		store:Dispatch(RequestAllFriends())

		return Promise.new(function(resolve)
			local state = store:GetState()
			local getFriendCountStatus, totalCount = WebApi.GetFriendCount()
			if getFriendCountStatus ~= WebApi.Status.OK then
				return
			end
			local count = 0
			local page = 1
			local needsPresence = {}
			while count < totalCount do
				local getFriendsStatus, result = WebApi.GetFriends(page)
				page = page + 1
				if getFriendsStatus ~= WebApi.Status.OK then
					return
				end

				local lastCount = count
				for userId, user in pairs(result) do
					count = count + 1
					if state.Users[userId] == nil then
						store:Dispatch(AddUser(user))
						table.insert(needsPresence, userId)
					else
						store:Dispatch(SetUserIsFriend(userId, user.isFriend))
					end
				end
				if lastCount == count then
					return
				end
			end

			store:Dispatch(ReceivedAllFriends())
			store:Dispatch(ConversationActions.GetUserPresences(needsPresence))
			resolve()
		end)
	end
end

function ConversationActions.FriendshipCreated(userId)
	return function(store)
		spawn(function()
			local status, result = WebApi.GetUser(userId)
			if status ~= WebApi.Status.OK then
				warn("WebApi.GetUser failure with status", status, " for user id", userId)
				return
			end

			-- request updated friend count when new friendship is formed
			store:Dispatch(GetFriendCount())

			local user = UserModel.fromData(userId, result.Username, true)
			store:Dispatch(AddUser(user))
			store:Dispatch(ConversationActions.GetUserPresences({userId}))

			local state = store:GetState()

			local needsMockConversation = true
			for _, conversation in pairs(state.ChatAppReducer.Conversations) do
				if conversation.conversationType == ConversationModel.Type.ONE_TO_ONE_CONVERSATION then
					for _, participantId in ipairs(conversation.participants) do
						if participantId == userId then
							needsMockConversation = false
							break
						end
					end
				end
			end

			if needsMockConversation then
				local conversation = ConversationModel.fromUser(user)
				store:Dispatch(ReceivedConversation(conversation))
			end
		end)
	end
end

function ConversationActions.GetAllUserPresences()
	return function(store)
		spawn(function()
			local users = store:GetState().Users;
			local userIds = {}
			for userId, _ in pairs(users) do
				table.insert(userIds, userId)
			end
			store:Dispatch(ConversationActions.GetUserPresences(userIds))
		end)
	end
end

local function shouldFetchUserPresences(state, userIds)
	local filteredUserIds = Functional.Filter(userIds, function(userId)
		local userAS = state.UsersAsync[userId]
		if userAS and userAS.presenceIsFetching then
			return false
		end
		return true
	end)

	if #filteredUserIds == 0 then
		return false, filteredUserIds
	end

	return true, filteredUserIds
end

function ConversationActions.GetUserPresences(userIds)
	return function(store)
		local ret, newUserIds = shouldFetchUserPresences(store:GetState(), userIds)
		if not ret then
			return
		end

		for _, v in ipairs(newUserIds) do
			store:Dispatch(RequestUserPresence(v))
		end

		spawn(function()
			local status, result = WebApi.GetUserPresences(newUserIds)

			if status ~= WebApi.Status.OK then
				warn("WebApi failure in GetUserPresences")
				return
			end

			for userId, result in pairs(result) do
				store:Dispatch(ReceivedUserPresence(userId, result.presence, result.lastLocation))
			end
		end)
	end
end

local function shouldFetchLatestMessages(state)
	if state.ChatAppReducer.ConversationsAsync.latestMessagesIsFetching then
		return false
	end
	return true
end

function ConversationActions.GetLatestMessages(convoIds)
	return function(store)
		if not shouldFetchLatestMessages(store:GetState()) then
			return
		end

		store:Dispatch(RequestLatestMessages())

		spawn(function()
			local status, messages = WebApi.GetLatestMessages(convoIds)

			if status ~= WebApi.Status.OK then
				warn("WebApi failure in GetLatestMessages")
				return
			end

			local state = store:GetState()
			for _, message in ipairs(messages) do
				local conversation = state.ChatAppReducer.Conversations[message.conversationId]
				if conversation.messages:Get(message.id) == nil then
					if conversation.messages:Last() ~= nil then
						message.previousMessageId = conversation.messages:Last().id
					end
					store:Dispatch(ReceivedMessages(message.conversationId, {message}))
				end
			end

			store:Dispatch(ReceivedLatestMessages())
		end)
	end
end

function ConversationActions.GetNewMessages(convoId, fromSelf)
	local function ConversationContainsOldest(conversation, messages)
		return #messages > 0 and conversation.messages:Get(messages[#messages].id) ~= nil
	end

	return function(store)
		spawn(function()
			local conversation = store:GetState().ChatAppReducer.Conversations[convoId]
			if not conversation then
				-- If we have not previously cached the conversation, we should first get it.
				local status = store:Dispatch(ConversationActions.GetConversations({convoId}))
				if status ~= WebApi.Status.OK then
					warn("WebApi failure in GetNewMessages")
					return
				end
				conversation = store:GetState().ChatAppReducer.Conversations[convoId]
				if not conversation then
					warn("Was not able to GetConversation in GetNewMessages")
					return
				end
			end

			local pageSize = Constants.PageSize.GET_NEW_MESSAGES
			local status, messages = WebApi.GetMessages(convoId, pageSize)

			if status ~= WebApi.Status.OK then
				warn("WebApi failure in GetNewMessages")
				return
			end

			-- Did many messages get sent at once?
			-- We may have missed something and need to get catched up
			local lastMessage = conversation and conversation.messages:Last()
			if messages[pageSize] and lastMessage and not ConversationContainsOldest(conversation, messages) then
				repeat
					pageSize = math.min(2 * pageSize, 50)
					local exclusiveMessageStartId = messages[#messages].id
					local moreStatus, moreMessages = WebApi.GetMessages(convoId, pageSize, exclusiveMessageStartId)
					if moreStatus ~= WebApi.Status.OK then
						warn("WebApi failure in GetNewMessages")
						return
					end
					for _, message in ipairs(moreMessages) do
						table.insert(messages, message)
					end
				until ConversationContainsOldest(conversation, messages) or moreMessages[pageSize] == nil
			end

			-- We got a bunch of extra messages in these request
			-- So don't update the ones we already knew about
			local hasUnreadMessages = false
			if conversation then
				local filteredMessages = {}
				local previousMessageId = nil
				for i = #messages, 1, -1 do
					local message = messages[i]
					if not conversation.messages:Get(message.id) then
						hasUnreadMessages = hasUnreadMessages or (not message.read)
						message.previousMessageId = previousMessageId
						table.insert(filteredMessages, message)
					end
					previousMessageId = message.id
				end
				messages = filteredMessages
			end

			local shouldMarkConversationUnread = (not conversation.hasUnreadMessages)
				and (not fromSelf) and hasUnreadMessages

			store:Dispatch(ReceivedMessages(convoId, messages, shouldMarkConversationUnread))

			if shouldMarkConversationUnread then
				store:Dispatch(IncrementUnreadConversationCount())
			end
		end)
	end
end

function ConversationActions.GetInitialMessages(convoId, exclusiveMessageStartId)
	return function(store)
		store:Dispatch(SetConversationLoadingStatus(convoId, Constants.ConversationLoadingState.LOADING))

		spawn(function()
			local status, messages = WebApi.GetMessages(convoId, GET_MESSAGES_PAGE_SIZE, exclusiveMessageStartId)

			if status ~= WebApi.Status.OK then
				return
			end

			store:Dispatch(ReceivedMessages(convoId, messages))

			store:Dispatch(SetConversationLoadingStatus(convoId, Constants.ConversationLoadingState.DONE))

		end)
	end
end

function ConversationActions.RemoveUserFromConversation(userId, convoId, callback)
	return function(store)
		local conversation = store:GetState().ChatAppReducer.Conversations[convoId]
		if conversation and not conversation.isUserLeaving then
			store:Dispatch(SetUserLeavingConversation(convoId, true))
			spawn(function()
				local status = WebApi.RemoveUserFromConversation(userId, convoId)

				if status ~= WebApi.Status.OK then
					warn("WebApi.RemoveUserFromConversation failure", status)
					local conversation = store:GetState().ChatAppReducer.Conversations[convoId]
					if userId == tostring(Players.LocalPlayer.UserId) then
						local titleKey = StringsLocale.Keys.FAILED_TO_LEAVE_GROUP
						local messageKey = StringsLocale.Keys.FAILED_TO_LEAVE_GROUP_MESSAGE
						local messageArguments = {
							CONVERSATION_TITLE = conversation.title,
						}
						local alert = Alert.new(titleKey, messageKey, messageArguments, Alert.AlertType.DIALOG)
						store:Dispatch(ShowAlert(alert))
					else
						local user = store:GetState().Users[userId]
						local titleKey = StringsLocale.Keys.FAILED_TO_REMOVE_USER
						local messageKey = StringsLocale.Keys.FAILED_TO_REMOVE_USER_MESSAGE
						local messageArguments = {
							CONVERSATION_TITLE = conversation.title,
							USERNAME = user.name,
						}
						local alert = Alert.new(titleKey, messageKey, messageArguments, Alert.AlertType.DIALOG)
						store:Dispatch(ShowAlert(alert))
					end
				end
				if callback then
					callback(status == WebApi.Status.OK)
				end
				store:Dispatch(SetUserLeavingConversation(convoId, false))
			end)
		end
	end
end

function ConversationActions.RenameGroupConversation(convoId, newName, callback)
	return function(store)
		spawn(function()

			local status = WebApi.RenameGroupConversation(convoId, newName)

			if status == WebApi.Status.MODERATED then
				warn("Message was moderated")
				local messageKey = StringsLocale.Keys.GROUP_NAME_MODERATED
				local toastModel = ToastModel.new(Constants.ToastIDs.GROUP_NAME_MODERATED, messageKey)
				store:Dispatch(ShowToast(toastModel))
			elseif status ~= WebApi.Status.OK then
				local conversation = store:GetState().ChatAppReducer.Conversations[convoId]
				local titleKey = StringsLocale.Keys.FAILED_TO_RENAME_TITLE
				local messageKey = StringsLocale.Keys.FAILED_TO_RENAME_MESSAGE
				local messageArguments = {
					EXISTING_NAME = conversation.title,
					NEW_NAME = newName,
				}
				local alert = Alert.new(titleKey, messageKey, messageArguments, Alert.AlertType.DIALOG)
				store:Dispatch(ShowAlert(alert))
			end

			if callback then
				callback()
			end
		end)
	end
end

function ConversationActions.SendMessage(conversationId, messageText)
	return function(store)
		spawn(function()
			local conversation = store:GetState().ChatAppReducer.Conversations[conversationId]

			local function GetSpoofedLatestMessageTime()
				-- Get the most recent message date of our messages so we can create a fake date after those
				local lastMessageInConvo = conversation.messages:Last()
				local lastSendingMessageinConvo = conversation.sendingMessages:Last()

				local lastSendingDate;
				if lastMessageInConvo then
					lastSendingDate = lastMessageInConvo.sent:GetUnixTimestamp()
				end
				if lastSendingMessageinConvo then
					local tempDate = lastSendingMessageinConvo.sent:GetUnixTimestamp()
					lastSendingDate = lastSendingDate and math.max(lastSendingDate, tempDate) or tempDate
				end

				-- Add 0.001 seconds to the message date so that we show up slightly after the current one
				local fakeSendingDate = lastSendingDate and DateTime.fromUnixTimestamp(lastSendingDate + 0.001) or DateTime.now()
				return fakeSendingDate
			end

			local previousMessageId = nil

			local message = {
				id = "sending-message-" .. MockId(),
				order = getAscendingNumber(),
				content = messageText,
				conversationId = conversationId,
				senderTargetId = tostring(Players.LocalPlayer.UserId),
				senderType = "User",
				sent = GetSpoofedLatestMessageTime(),
				moderated = false,
				failed = false,
				previousMessageId = previousMessageId,
			}

			store:Dispatch(SendingMessage(conversationId, message))

			--Making the assumption that when a message is sent, there are no new messages
			--not already in the store... potential race condition
			local status, result = WebApi.SendMessage(conversationId, messageText, previousMessageId)

			if status == WebApi.Status.OK then
				if conversation.messages:Length() > 0 then
					result.previousMessageId = conversation.messages:Last().id
				end
				store:Dispatch(SentMessage(conversationId, message.id))

				store:Dispatch(ReceivedMessages(conversationId, {result}))
			elseif status == WebApi.Status.MODERATED then
				store:Dispatch(MessageModerated(conversationId, message.id))
				warn("Message was moderated.")
			else
				store:Dispatch(MessageFailedToSend(conversationId, message.id))
				warn("Message could not be sent.")
			end
		end)
	end
end

function ConversationActions.CreateConversation(conversation, callback)
	return function(store)
		spawn(function()
			local status, realConversation = WebApi.StartGroupConversation(conversation)
			if status == WebApi.Status.OK then
				if realConversation.isDefaultTitle and #conversation.title > 0 then
					--When calling the StartGroupConversation endpoint,
					--No explicit feedback regarding whether or not conversation
					--title was moderated, have to infer like this
					warn("Group name was moderated")
					local messageKey = StringsLocale.Keys.GROUP_NAME_MODERATED
					local toastModel = ToastModel.new(Constants.ToastIDs.GROUP_NAME_MODERATED, messageKey)
					store:Dispatch(ShowToast(toastModel))
				end
				store:Dispatch(ReceivedConversation(realConversation))
				if callback then
					callback(realConversation.id)
				end
			else
				warn("Conversation could not be created, status:", status)
				if callback then
					callback(nil)
				end
			end
		end)
	end
end

function ConversationActions.AddUsersToConversation(convoId, participants, callback)
	return function(store)
		spawn(function()
			local status = WebApi.AddUsersToConversation(convoId, participants)
			if status ~= WebApi.Status.OK then
				warn("Users could not be added to conversation, status:", status)
			end
			if callback then
				callback(status == WebApi.Status.OK)
			end
		end)
	end
end

function ConversationActions.GetOlderMessages(convoId, messageId) -- Message ID of the message to collect more after
	return function(store)
		store:Dispatch(FetchingOlderMessages(convoId, true))
		spawn(function()
			local status, messages = WebApi.GetMessages(convoId, GET_MESSAGES_PAGE_SIZE, messageId)
			store:Dispatch(FetchingOlderMessages(convoId, false))
			if status ~= WebApi.Status.OK then
				warn("WebApi failure in GetMessages, with status:", status)
				return
			end

			if #messages < GET_MESSAGES_PAGE_SIZE then
				store:Dispatch(FetchedOldestMessage(convoId, true))
			end

			if #messages <= 0 then
				return
			end

			store:Dispatch(ReceivedMessages(convoId, messages, nil, messageId))
		end)
	end
end

function ConversationActions.GetUnreadConversationCountAsync()
	return function(store)
		return Promise.new(function()
			local status, unreadConversationCount = WebApi.GetUnreadConversationCount()

			if status ~= WebApi.Status.OK then
				warn("WebApi failure in GetUnreadConversationCount, with status", status)
				return
			end

			store:Dispatch(SetUnreadConversationCount(unreadConversationCount))
		end)
	end
end

function ConversationActions.MarkConversationAsRead(conversationId)
	return function(store)
		local conversation = store:GetState().ChatAppReducer.Conversations[conversationId]

		if not conversation then
			warn("Conversation not found in MarkConversationAsRead")
			return
		end

		local messages = conversation.messages

		local lastUnreadMessage = nil
		local count = 0
		local lastUreadMessageId = ''
		for _, message in messages:CreateReverseIterator() do
			count = count + 1
			if not message.read then
				lastUnreadMessage = message
				lastUreadMessageId = lastUnreadMessage.id
				break
			end
		end

		spawn(function()

			if lastUnreadMessage or (conversation.hasUnreadMessages and count == 0) then

				local status = WebApi.MarkAsRead(conversationId, lastUreadMessageId)

				if status ~= WebApi.Status.OK then
					warn("WebApi failure in MarkConversationAsRead")
					return
				end
			end
		end)

		if not conversation.hasUnreadMessages then
			-- Conversation is already read, we can safely return early
			return
		end

		store:Dispatch(DecrementUnreadConversationCount())

		store:Dispatch(ReadConversation(conversationId))

	end
end

return ConversationActions
