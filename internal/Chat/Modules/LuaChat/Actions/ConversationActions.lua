local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

local LuaApp = CoreGui.RobloxGui.Modules.LuaApp
local StringsLocale = require(LuaApp.StringsLocale)

local Modules = script.Parent.Parent

local WebApi = require(Modules.WebApi)
local ActionType = require(Modules.ActionType)
local DateTime = require(Modules.DateTime)
local MockId = require(Modules.MockId)
local Constants = require(Modules.Constants)
local Alert = require(Modules.Models.Alert)
local ToastModel = require(Modules.Models.ToastModel)
local ConversationModel = require(Modules.Models.Conversation)
local UserModel = require(Modules.Models.User)

local GetFriendCount = require(script.Parent.GetFriendCount)

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
		store:Dispatch({
			type = ActionType.ReceivedConversation,
			conversation = convo,
		})
		table.insert(convoIds, convo.id)
	end

	for _, user in pairs(users) do
		if state.Users[user.id] == nil then
			store:Dispatch({
				type = ActionType.AddUser,
				user = user,
			})
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
		store:Dispatch({
			type = ActionType.FetchedOldestConversation,
			value = true,
		})
		store:Dispatch(ConversationActions.CreateMockOneOnOneConversations())
	end

	return status, result
end

function ConversationActions.GetLocalUserConversations(pageNumber, pageSize, callback)
	return function(store)
		store:Dispatch({
			type = ActionType.SetFetchingConversations,
			value = true,
		})

		spawn(function()
			local status, result = getUserConversations(store, pageNumber, pageSize)
			processConversations(store, status, result)
			store:Dispatch({
				type = ActionType.SetFetchingConversations,
				value = false,
			})

			if callback then
				callback()
			end
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

	local conversation = store:GetState().Conversations[conversationId]
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
			store:Dispatch({
				type = ActionType.AddUser,
				user = user,
			})
		end
	end

	local needInitialMessages = {}

	for _, convo in ipairs(conversations) do
		local convoIsIdentical = true
		if state.Conversations[convo.id] then
			local existing = state.Conversations[convo.id]
			if existing.title ~= convo.title then
				convoIsIdentical = false
				store:Dispatch({
					type = ActionType.RenamedGroupConversation,
					conversationId = convo.id,
					title = convo.title
				})
			end
			if not hasSameParticipants(convo, existing) then
				convoIsIdentical = false
				store:Dispatch({
					type = ActionType.ChangedParticipants,
					conversationId = convo.id,
					participants = convo.participants,
				})
			end
			if not existing.fetchingOlderMessages then
				convoIsIdentical = convoIsIdentical and refreshMessages(existing.id, store)
			end
		else
			convoIsIdentical = false
			store:Dispatch({
				type = ActionType.ReceivedConversation,
				conversation = convo,
			})
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
			store:Dispatch({
				type = ActionType.ReceivedConversation,
				conversation = serverConversation,
			})

			store:Dispatch({
				type = ActionType.RemovedConversation,
				conversationId = conversation.id,
			})

			if onSuccess then
				onSuccess(serverConversation)
			end
		end)
	end
end

function ConversationActions.CreateMockOneOnOneConversations()
	return function(store)
		local onFetchedAllFriends = function()
			local state = store:GetState()
			local needsMockConversation = {}
			for userId, user in pairs(state.Users) do
				if user.isFriend then
					needsMockConversation[userId] = user
				end
			end

			for _, conversation in pairs(state.Conversations) do
				if conversation.conversationType == ConversationModel.Type.ONE_TO_ONE_CONVERSATION then
					for _, userId in ipairs(conversation.participants) do
						needsMockConversation[userId] = nil
					end
				end
			end

			for _, user in pairs(needsMockConversation) do
				local conversation = ConversationModel.fromUser(user)
				store:Dispatch({
					type = ActionType.ReceivedConversation,
					conversation = conversation,
				})
			end
		end
		if not store:GetState().FetchedAllFriends then
			store:Dispatch(ConversationActions.GetAllFriends(onFetchedAllFriends))
		else
			onFetchedAllFriends()
		end
	end
end

function ConversationActions.RefreshConversations()
	return function(store)
		local state = store:GetState()
		if next(state.Conversations) == nil then
			store:Dispatch(ConversationActions.GetLocalUserConversations(1, Constants.PageSize.GET_CONVERSATIONS))
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

function ConversationActions.GetAllFriends(onSuccess)
	return function(store)
		spawn(function()
			local state = store:GetState()
			local getFriendshipCountStatus, totalCount = WebApi.GetFriendshipCount()
			if getFriendshipCountStatus ~= WebApi.Status.OK then
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
						store:Dispatch({
							type = ActionType.AddUser,
							user = user,
						})
						table.insert(needsPresence, userId)
					else
						store:Dispatch({
							type = ActionType.SetUserIsFriend,
							isFriend = user.isFriend,
							userId = userId,
						})
					end
				end
				if lastCount == count then
					return
				end
			end
			store:Dispatch(ConversationActions.GetUserPresences(needsPresence))
			if onSuccess then
				onSuccess()
			end
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
			store:Dispatch({
				type = ActionType.AddUser,
				user = user,
			})
			store:Dispatch(ConversationActions.GetUserPresences({userId}))

			local state = store:GetState()

			local needsMockConversation = true
			for _, conversation in pairs(state.Conversations) do
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
				store:Dispatch({
					type = ActionType.ReceivedConversation,
					conversation = conversation,
				})
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

function ConversationActions.GetUserPresences(userIds)
	return function(store)
		spawn(function()
			local status, result = WebApi.GetUserPresences(userIds)

			if status ~= WebApi.Status.OK then
				warn("WebApi failure in GetUserPresences")
				return
			end

			for userId, result in pairs(result) do
				store:Dispatch({
					type = ActionType.GotUserPresence,
					userId = userId,
					presence = result.presence,
					lastLocation = result.lastLocation,
				})
			end
		end)
	end
end

function ConversationActions.GetLatestMessages(convoIds)
	return function(store)
		spawn(function()
			local status, messages = WebApi.GetLatestMessages(convoIds)

			if status ~= WebApi.Status.OK then
				warn("WebApi failure in GetLatestMessages")
				return
			end

			local state = store:GetState()
			for _, message in ipairs(messages) do
				local conversation = state.Conversations[message.conversationId]
				if conversation.messages:Get(message.id) == nil then
					if conversation.messages:Last() ~= nil then
						message.previousMessageId = conversation.messages:Last().id
					end
				store:Dispatch({
					type = ActionType.ReceivedMessages,
					conversationId = message.conversationId,
					messages = {message},
				})
			end
			end
		end)
	end
end

function ConversationActions.GetNewMessages(convoId, fromSelf)
	local function ConversationContainsOldest(conversation, messages)
		return #messages > 0 and conversation.messages:Get(messages[#messages].id) ~= nil
	end

	return function(store)
		spawn(function()
			local conversation = store:GetState().Conversations[convoId]
			if not conversation then
				-- If we have not previously cached the conversation, we should first get it.
				local status = store:Dispatch(ConversationActions.GetConversations({convoId}))
				if status ~= WebApi.Status.OK then
					warn("WebApi failure in GetNewMessages")
					return
				end
				conversation = store:GetState().Conversations[convoId]
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

			store:Dispatch({
				type = ActionType.ReceivedMessages,
				conversationId = convoId,
				messages = messages,
				shouldMarkConversationUnread = shouldMarkConversationUnread,
			})

			if shouldMarkConversationUnread then
				store:Dispatch({ type = ActionType.IncrementUnreadConversationCount })
			end
		end)
	end
end

function ConversationActions.GetInitialMessages(convoId, exclusiveMessageStartId)
	return function(store)
		store:Dispatch({
			type = ActionType.SetConversationLoadingStatus,
			conversationId = convoId,
			value = Constants.ConversationLoadingState.LOADING
		})

		spawn(function()
			local status, messages = WebApi.GetMessages(convoId, GET_MESSAGES_PAGE_SIZE, exclusiveMessageStartId)

			if status ~= WebApi.Status.OK then
				return
			end

			store:Dispatch({
				type = ActionType.ReceivedMessages,
				conversationId = convoId,
				messages = messages,
			})

			store:Dispatch({
				type = ActionType.SetConversationLoadingStatus,
				conversationId = convoId,
				value = Constants.ConversationLoadingState.DONE
			})

		end)
	end
end

function ConversationActions.RemoveUserFromConversation(userId, convoId, callback)
	return function(store)
		spawn(function()
			local status = WebApi.RemoveUserFromConversation(userId, convoId)

			if status ~= WebApi.Status.OK then
				warn("WebApi.RemoveUserFromConversation failure", status)
				local conversation = store:GetState().Conversations[convoId]
				if userId == tostring(Players.LocalPlayer.UserId) then
					local titleKey = StringsLocale.Keys.FAILED_TO_LEAVE_GROUP
					local messageKey = StringsLocale.Keys.FAILED_TO_LEAVE_GROUP_MESSAGE
					local messageArguments = {
						CONVERSATION_TITLE = conversation.title,
					}
					local alert = Alert.new(titleKey, messageKey, messageArguments, Alert.AlertType.DIALOG)
					store:Dispatch({
						type = ActionType.ShowAlert,
						alert = alert,
					})
				else
					local user = store:GetState().Users[userId]
					local titleKey = StringsLocale.Keys.FAILED_TO_REMOVE_USER
					local messageKey = StringsLocale.Keys.FAILED_TO_REMOVE_USER_MESSAGE
					local messageArguments = {
						CONVERSATION_TITLE = conversation.title,
						USERNAME = user.name,
					}
					local alert = Alert.new(titleKey, messageKey, messageArguments, Alert.AlertType.DIALOG)
					store:Dispatch({
						type = ActionType.ShowAlert,
						alert = alert,
					})
				end
			end
			if callback then
				callback(status == WebApi.Status.OK)
			end
		end)
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
				store:Dispatch({
					type = ActionType.ShowToast,
					toast = toastModel,
				})
			elseif status ~= WebApi.Status.OK then
				local conversation = store:GetState().Conversations[convoId]
				local titleKey = StringsLocale.Keys.FAILED_TO_RENAME_TITLE
				local messageKey = StringsLocale.Keys.FAILED_TO_RENAME_MESSAGE
				local messageArguments = {
					EXISTING_NAME = conversation.title,
					NEW_NAME = newName,
				}
				local alert = Alert.new(titleKey, messageKey, messageArguments, Alert.AlertType.DIALOG)
				store:Dispatch({
					type = ActionType.ShowAlert,
					alert = alert,
				})
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
			local conversation = store:GetState().Conversations[conversationId]

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

			store:Dispatch({
				type = ActionType.SendingMessage,
				conversationId = conversationId,
				message = message
			})

			--Making the assumption that when a message is sent, there are no new messages
			--not already in the store... potential race condition
			local status, result = WebApi.SendMessage(conversationId, messageText, previousMessageId)

			if status == WebApi.Status.OK then
				if conversation.messages:Length() > 0 then
					result.previousMessageId = conversation.messages:Last().id
				end
				store:Dispatch({
					type = ActionType.SentMessage,
					conversationId = conversationId,
					messageId = message.id
				})

				store:Dispatch({
					type = ActionType.ReceivedMessages,
					conversationId = conversationId,
					messages = {result}
				})
			elseif status == WebApi.Status.MODERATED then
				store:Dispatch({
					type = ActionType.MessageModerated,
					conversationId = conversationId,
					messageId = message.id
				})
				warn("Message was moderated.")
			else
				store:Dispatch({
					type = ActionType.MessageFailedToSend,
					conversationId = conversationId,
					messageId = message.id
				})
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
					store:Dispatch({
						type = ActionType.ShowToast,
						toast = toastModel,
					})
				end
				store:Dispatch({
					type = ActionType.ReceivedConversation,
					conversation = realConversation,
				})
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
		store:Dispatch({
			type = ActionType.FetchingOlderMessages,
			conversationId = convoId,
			fetchingOlderMessages = true
		})
		spawn(function()
			local status, messages = WebApi.GetMessages(convoId, GET_MESSAGES_PAGE_SIZE, messageId)
			store:Dispatch({
				type = ActionType.FetchingOlderMessages,
				conversationId = convoId,
				fetchingOlderMessages = false
			})
			if status ~= WebApi.Status.OK then
				warn("WebApi failure in GetMessages, with status:", status)
				return
			end

			if #messages < GET_MESSAGES_PAGE_SIZE then
				store:Dispatch({
					type = ActionType.FetchedOldestMessage,
					conversationId = convoId,
					fetchedOldestMessage = true
				})
			end

			if #messages <= 0 then
				return
			end

			store:Dispatch({
				type = ActionType.ReceivedMessages,
				conversationId = convoId,
				messages = messages,
				exclusiveStartMessageId = messageId,
			})
		end)
	end
end

function ConversationActions.GetUnreadConversationCount()
	return function(store)
		local status, unreadConversationCount = WebApi.GetUnreadConversationCount()

		if status ~= WebApi.Status.OK then
			warn("WebApi failure in GetUnreadConversationCount, with status", status)
			return
		end

		store:Dispatch({
			type = ActionType.SetUnreadConversationCount,
			count = unreadConversationCount,
		})
	end
end

function ConversationActions.MarkConversationAsRead(conversationId)
	return function(store)
		local conversation = store:GetState().Conversations[conversationId]

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

		store:Dispatch({ type = ActionType.DecrementUnreadConversationCount })

		store:Dispatch({
			type = ActionType.ReadConversation,
			conversationId = conversationId,
		})
	end
end

return ConversationActions