local LuaChat = script.Parent.Parent
local ActionType = require(LuaChat.ActionType)
local Immutable = require(LuaChat.Immutable)
local OrderedMap = require(LuaChat.OrderedMap)
local ConversationModel = require(LuaChat.Models.Conversation)

return function(state, action)
	state = state or {}

	if action.type == ActionType.ReceivedConversation then
		local conversation = action.conversation

		if conversation.conversationType == ConversationModel.Type.ONE_TO_ONE_CONVERSATION then
			local idForFake = ConversationModel.IdForFakeOneOnOne(conversation.participants)
			if state[idForFake] ~= nil then
				state = Immutable.Set(state, idForFake, nil)
			end
		end

		if not state[conversation.id] then
			state = Immutable.Set(state, conversation.id, conversation)
		end
	elseif action.type == ActionType.ReceivedMessages then
		local conversationId = action.conversationId
		local conversation = state[conversationId]

		if conversation then

			local lastMessage = nil
			for i = 1, #action.messages do
				local message = action.messages[i]
				local existing = conversation.messages:Get(message.id)
				if existing then
					if lastMessage then
						lastMessage.previousMessageId = existing.id
					end
					if message.previousMessageId == nil and existing.previousMessageId ~= nil then
						message.previousMessageId = existing.previousMessageId
					end
					message.read = message.read or existing.read
				end
				lastMessage = message
			end

			local messages = OrderedMap.Insert(conversation.messages, unpack(action.messages))


			if action.exclusiveStartMessageId and #action.messages > 0 then
				if messages:Get(action.exclusiveStartMessageId) then
					local prevMessage = action.messages[1]
					local nextMessage = messages:Get(action.exclusiveStartMessageId)
					nextMessage = Immutable.Set(nextMessage, "previousMessageId", prevMessage.id)
					messages = messages:Insert(nextMessage)
				end
			end

			local lastConversationKey = messages.keys[#messages.keys]
			lastMessage = messages.values[lastConversationKey]

			if lastMessage ~= nil then
				local lastUpdatedConvo = conversation.lastUpdated and conversation.lastUpdated:GetUnixTimestamp() or 0

				local lastUpdated = (lastMessage.sent:GetUnixTimestamp() > lastUpdatedConvo) and
					lastMessage.sent or conversation.lastUpdated

				local hasUnreadMessages = action.shouldMarkConversationUnread or conversation.hasUnreadMessages

				local newConversation = Immutable.JoinDictionaries(conversation, {
					messages = messages;
					lastUpdated = lastUpdated;
					hasUnreadMessages = hasUnreadMessages;
				})

				-- Mark all users as no longer typing
				-- We should only do this if a specific user sent a message and it's
				-- the last message in the list, but that check would be expensive
				-- to make every time we request more messages.
				-- Notably, this will fail for group conversations.
				newConversation = Immutable.Set(newConversation, "usersTyping", {})
				state = Immutable.Set(state, newConversation.id, newConversation)
			end
		end
	elseif action.type == ActionType.SendingMessage then
		local conversationId = action.conversationId
		local conversation = state[conversationId]

		if conversation then
			local sendingMessages = OrderedMap.Insert(conversation.sendingMessages, action.message)
			local newConversation = Immutable.Set(conversation, "sendingMessages", sendingMessages)
			state = Immutable.Set(state, newConversation.id, newConversation)
		end
	elseif action.type == ActionType.SentMessage then
		local conversationId = action.conversationId
		local conversation = state[conversationId]

		if conversation then
			local sendingMessages = OrderedMap.Delete(conversation.sendingMessages, action.messageId)
			local newConversation = Immutable.Set(conversation, "sendingMessages", sendingMessages)
			state = Immutable.Set(state, newConversation.id, newConversation)
		end
	elseif action.type == ActionType.RenamedGroupConversation then
		local conversationId = action.conversationId

		local conversation = state[conversationId]

		if conversation then
			local newConversation = Immutable.JoinDictionaries(conversation, {
				lastUpdated = action.lastUpdated,
				title = action.title,
				isDefaultTitle = action.isDefaultTitle,
			})
			state = Immutable.Set(state, conversationId, newConversation)
		end
	elseif action.type == ActionType.ChangedParticipants then
		local convoId = action.conversationId
		local newParticipants = action.participants

		local conversation = state[convoId]

		if conversation then
			local newConversation = Immutable.JoinDictionaries(conversation, {
				participants = newParticipants,
				lastUpdated = action.lastUpdated,
				title = action.title,
			})
			state = Immutable.Set(state, convoId, newConversation)
		end
	elseif action.type == ActionType.RemovedConversation then
		local conversationId = action.conversationId
		state = Immutable.Set(state, conversationId, nil)

	elseif action.type == ActionType.SetUserTyping then
		local conversation = state[action.conversationId]

		if conversation then
			local usersTyping = conversation.usersTyping
			local newUsersTyping = Immutable.Set(usersTyping, action.userId, action.value)
			local newConversation = Immutable.Set(conversation, "usersTyping", newUsersTyping)
			state = Immutable.Set(state, newConversation.id, newConversation)
		end
	elseif action.type == ActionType.FetchingOlderMessages then
		local conversation = state[action.conversationId]
		local newConversation = Immutable.Set(conversation, "fetchingOlderMessages", action.fetchingOlderMessages)
		state = Immutable.Set(state, newConversation.id, newConversation)

	elseif action.type == ActionType.FetchedOldestMessage then
		local conversation = state[action.conversationId]
		local newConversation = Immutable.Set(conversation, "fetchedOldestMessage", action.fetchedOldestMessage)
		state = Immutable.Set(state, newConversation.id, newConversation)

	elseif action.type == ActionType.ReadConversation then
		local conversation = state[action.conversationId]

		if not conversation then
			warn("Conversation " .. action.conversationId .. " not found in ReadConversation reducer")
			return
		end

		local newMessages = conversation.messages:Map(function(message)
			if message.read then
				return message
			else
				return Immutable.Set(message, "read", true)
			end
		end)

		local newConversation = Immutable.Set(conversation, "messages", newMessages)
		newConversation = Immutable.Set(newConversation, "hasUnreadMessages", false)

		state = Immutable.Set(state, newConversation.id, newConversation)

	elseif action.type == ActionType.MessageModerated then
		local conversation = state[action.conversationId]
		local message = conversation.sendingMessages:Get(action.messageId)

		if message then
			local newMessage = Immutable.Set(message, "moderated", true)
			local newSendingMessages = conversation.sendingMessages:Insert(newMessage)
			local newConversation = Immutable.Set(conversation, "sendingMessages", newSendingMessages)
			state = Immutable.Set(state, newConversation.id, newConversation)
		end

	elseif action.type == ActionType.MessageFailedToSend then
		local conversation = state[action.conversationId]
		local message = conversation.sendingMessages:Get(action.messageId)

		if message then
			local newMessage = Immutable.Set(message, "failed", true)
			local newSendingMessages = conversation.sendingMessages:Insert(newMessage)
			local newConversation = Immutable.Set(conversation, "sendingMessages", newSendingMessages)
			state = Immutable.Set(state, newConversation.id, newConversation)
		end

	elseif action.type == ActionType.SetConversationLoadingStatus then
		local conversation = state[action.conversationId]
		local newConversation = Immutable.Set(conversation, "initialLoadingStatus", action.value)
		state = Immutable.Set(state, newConversation.id, newConversation)
	end

	return state
end