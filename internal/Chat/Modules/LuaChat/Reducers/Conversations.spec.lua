return function()
	local LuaChat = script.Parent.Parent
	local ActionType = require(LuaChat.ActionType)
	local Conversation = require(LuaChat.Models.Conversation)
	local Message = require(LuaChat.Models.Message)
	local User = require(LuaChat.Models.User)
	local DateTime = require(LuaChat.DateTime)
	local Constants = require(LuaChat.Constants)

	local Conversations = require(script.Parent.Conversations)

	describe("initial state", function()
		it("should return an initial table when passed nil", function()
			local state = Conversations(nil, {})
			expect(state).to.be.a("table")
		end)
	end)

	describe("Action ReceivedConversation", function()
		it("should add a conversation to the store", function()
			local conversation = Conversation.mock()
			local state = nil
			local action = {
				type = ActionType.ReceivedConversation,
				conversation = conversation
			}

			state = Conversations(state, action)

			expect(state).to.be.a("table")
			expect(state[conversation.id]).to.be.a("table")
			expect(state[conversation.id].id).to.equal(conversation.id)
		end)
	end)

	describe("Action ReceivedMessages", function()
		it("should add messages to an existing conversation", function()
			local conversation = Conversation.mock()
			local message = Message.mock()
			local state = {
				[conversation.id] = conversation
			}
			local action = {
				type = ActionType.ReceivedMessages,
				conversationId = conversation.id,
				messages = {message}
			}

			state = Conversations(state, action)

			local messages = state[conversation.id].messages
			expect(#messages.keys).to.equal(1)
			expect(messages.values[messages.keys[1]].id).to.equal(message.id)
		end)

		it("should insert messages in-order", function()
			local conversation = Conversation.mock()
			local message1 = Message.mock({ sent = DateTime.new(1992) })
			local message2 = Message.mock({ sent = DateTime.new(1990) })

			local state =  {
				[conversation.id] = conversation
			}

			local action = {
				type = ActionType.ReceivedMessages,
				conversationId = conversation.id,
				messages = { message1, message2 }
			}
			state = Conversations(state, action)

			do
				local messages = state[conversation.id].messages
				expect(#messages.keys).to.equal(2)
				expect(messages.values[messages.keys[1]].id).to.equal(message2.id)
				expect(messages.values[messages.keys[2]].id).to.equal(message1.id)
			end

			local message3 = Message.mock({ sent = DateTime.new(1991) })

			action = {
				type = ActionType.ReceivedMessages,
				conversationId = conversation.id,
				messages = { message3 }
			}

			state = Conversations(state, action)

			do
				local messages = state[conversation.id].messages
				expect(#messages.keys).to.equal(3)
				expect(messages.values[messages.keys[1]].id).to.equal(message2.id)
				expect(messages.values[messages.keys[2]].id).to.equal(message3.id)
				expect(messages.values[messages.keys[3]].id).to.equal(message1.id)
			end
		end)

		it("should set hasUnreadMessages if action.shouldMarkConversationUnread is true", function()
			local conversation = Conversation.mock()
			local message1 = Message.mock({ read = true })
			local message2 = Message.mock({ read = false })

			local state =  {
				[conversation.id] = conversation
			}

			expect(state[conversation.id].hasUnreadMessages).to.equal(false)

			local action = {
				type = ActionType.ReceivedMessages,
				conversationId = conversation.id,
				messages = { message1, message2 },
				shouldMarkConversationUnread = true,
			}
			state = Conversations(state, action)

			expect(state[conversation.id].hasUnreadMessages).to.equal(true)
		end)

		it("should not change hasUnreadMessages if action.shouldMarkConversationUnread is false", function()
			local conversation = Conversation.mock()
			local message1 = Message.mock({ read = false })
			local message2 = Message.mock({ read = false })

			local state =  {
				[conversation.id] = conversation
			}

			expect(state[conversation.id].hasUnreadMessages).to.equal(false)

			local action = {
				type = ActionType.ReceivedMessages,
				conversationId = conversation.id,
				messages = { message1, message2 },
				shouldMarkConversationUnread = false,
			}
			state = Conversations(state, action)

			expect(state[conversation.id].hasUnreadMessages).to.equal(false)
		end)
	end)

	describe("Action SendingMessage", function()
		it("should add to the list of sending messages", function()
			local conversation = Conversation.mock()
			local message = Message.mock()
			local state = {
				[conversation.id] = conversation
			}

			local action = {
				type = ActionType.SendingMessage,
				conversationId = conversation.id,
				message = message
			}
			state = Conversations(state, action)

			expect(state[conversation.id].sendingMessages:Get(message.id)).to.be.ok()
		end)
	end)

	describe("Action SentMessage", function()
		it("should remove from the list of sending messages", function()
			local conversation = Conversation.mock()
			local message = Message.mock()
			local state = {
				[conversation.id] = conversation
			}

			local action1 = {
				type = ActionType.SendingMessage,
				conversationId = conversation.id,
				message = message
			}
			state = Conversations(state, action1)

			expect(state[conversation.id].sendingMessages:Get(message.id)).to.be.ok()

			local action2 = {
				type = ActionType.SentMessage,
				conversationId = conversation.id,
				messageId = message.id
			}
			state = Conversations(state, action2)

			expect(state[conversation.id].sendingMessages:Get(message.id)).to.never.be.ok()
		end)
	end)

	describe("Action RenamedGroupConversation", function()
		it("should rename the conversation", function()
			local conversation = Conversation.mock()
			local state = {
				[conversation.id] = conversation
			}

			local action = {
				type = ActionType.RenamedGroupConversation,
				conversationId = conversation.id,
				title = "Fleebledegoop, Ham Sammich and Lemur Face"
			}
			state = Conversations(state, action)

			expect(state[conversation.id].title).to.equal("Fleebledegoop, Ham Sammich and Lemur Face")
		end)
	end)

	describe("Action ChangedParticipants", function()
		it("should update the participant list", function()
			local conversation = Conversation.mock()
			local user1 = User.mock()
			local user2 = User.mock()
			local state = {
				[conversation.id] = conversation
			}

			local action = {
				type = ActionType.ChangedParticipants,
				conversationId = conversation.id,
				participants = { user1.id, user2.id }
			}
			state = Conversations(state, action)

			expect(#state[conversation.id].participants).to.equal(2)
			expect(state[conversation.id].participants[1]).to.equal(user1.id)
			expect(state[conversation.id].participants[2]).to.equal(user2.id)

			action = {
				type = ActionType.ChangedParticipants,
				conversationId = conversation.id,
				participants = { user2.id }
			}
			state = Conversations(state, action)

			expect(#state[conversation.id].participants).to.equal(1)
			expect(state[conversation.id].participants[1]).to.equal(user2.id)
		end)
	end)

	describe("Action RemovedConversation", function()
		it("should update the conversation list", function()
			local conversation1 = Conversation.mock()
			local conversation2 = Conversation.mock()
			local state = {
				[conversation1.id] = conversation1,
				[conversation2.id] = conversation2
			}

			local action = {
				type = ActionType.RemovedConversation,
				conversationId = conversation1.id
			}
			state = Conversations(state, action)

			expect(state[conversation1.id]).to.equal(nil)
			expect(state[conversation2.id]).to.be.a("table")
			expect(state[conversation2.id].id).to.equal(conversation2.id)
		end)
	end)

	describe("Action SetUserTyping", function()
		it("should set userTyping flag for user", function()
			local user = User.mock()
			local conversation = Conversation.mock({ participants = { user.id } })

			local state = {
				[conversation.id] = conversation
			}

			expect(state[conversation.id].usersTyping[user.id]).to.never.be.ok()

			local action1 = {
				type = ActionType.SetUserTyping,
				conversationId = conversation.id,
				userId = user.id,
				value = true
			}
			state = Conversations(state, action1)

			expect(state[conversation.id].usersTyping[user.id]).to.equal(true)

			local action2 = {
				type = ActionType.SetUserTyping,
				conversationId = conversation.id,
				userId = user.id,
				value = false
			}
			state = Conversations(state, action2)

			expect(state[conversation.id].usersTyping[user.id]).to.equal(false)
		end)
	end)

	describe("Action FetchingOlderMessages", function()
		it("sets the fetchingOlderMessages flag", function()
			local conversation = Conversation.mock()
			local state = {
				[conversation.id] = conversation
			}

			expect(state[conversation.id].fetchingOlderMessages).to.equal(false)

			local action1 = {
				type = ActionType.FetchingOlderMessages,
				conversationId = conversation.id,
				fetchingOlderMessages = true;
			}
			state = Conversations(state, action1)

			expect(state[conversation.id].fetchingOlderMessages).to.equal(true)

			local action2 = {
				type = ActionType.FetchingOlderMessages,
				conversationId = conversation.id,
				fetchingOlderMessages = false;
			}
			state = Conversations(state, action2)

			expect(state[conversation.id].fetchingOlderMessages).to.equal(false)
		end)
	end)

	describe("Action FetchedOldestMessage", function()
		it("sets the fetchedOldestMessage flag", function()
			local conversation = Conversation.mock()
			local state = {
				[conversation.id] = conversation
			}

			expect(state[conversation.id].fetchedOldestMessage).to.equal(false)

			local action1 = {
				type = ActionType.FetchedOldestMessage,
				conversationId = conversation.id,
				fetchedOldestMessage = true;
			}
			state = Conversations(state, action1)

			expect(state[conversation.id].fetchedOldestMessage).to.equal(true)

			local action2 = {
				type = ActionType.FetchedOldestMessage,
				conversationId = conversation.id,
				fetchedOldestMessage = false;
			}
			state = Conversations(state, action2)

			expect(state[conversation.id].fetchedOldestMessage).to.equal(false)
		end)
	end)

	describe("Action ReadConversation", function()
		it("should read messages and mark the conversation's unread state", function()
			local message1 = Message.mock({ sent = DateTime.new(1992), read = true })
			local message2 = Message.mock({ sent = DateTime.new(1993), read = false })
			local message3 = Message.mock({ sent = DateTime.new(1994), read = false })
			local message4 = Message.mock({ sent = DateTime.new(1995), read = false })
			local message5 = Message.mock({ sent = DateTime.new(1996), read = false })
			local conversation = Conversation.mock()

			local state = {
				[conversation.id] = conversation
			}

			local actionAddMessages = {
				type = ActionType.ReceivedMessages,
				conversationId = conversation.id,
				messages = { message1, message2, message3, message4 },
				shouldMarkConversationUnread = true,
			}
			state = Conversations(state, actionAddMessages)

			expect(state[conversation.id].hasUnreadMessages).to.equal(true)

			local actionReadAll = {
				type = ActionType.ReadConversation,
				conversationId = conversation.id
			}
			state = Conversations(state, actionReadAll)

			do
				expect(state[conversation.id].hasUnreadMessages).to.equal(false)
				local messages = state[conversation.id].messages
				expect(messages.values[message1.id].read).to.equal(true)
				expect(messages.values[message2.id].read).to.equal(true)
				expect(messages.values[message3.id].read).to.equal(true)
			end

			local action2 = {
				type = ActionType.ReceivedMessages,
				conversationId = conversation.id,
				messages = { message4, message5 },
				shouldMarkConversationUnread = true,
			}

			state = Conversations(state, action2)

			do
				expect(state[conversation.id].hasUnreadMessages).to.equal(true)
				local messages = state[conversation.id].messages
				expect(messages.values[message1.id].read).to.equal(true)
				expect(messages.values[message2.id].read).to.equal(true)
				expect(messages.values[message3.id].read).to.equal(true)
				expect(messages.values[message4.id].read).to.equal(true)
				expect(messages.values[message5.id].read).to.equal(false)
			end

			local actionReadAll2 = {
				type = ActionType.ReadConversation,
				conversationId = conversation.id
			}

			state = Conversations(state, actionReadAll2)

			do
				expect(state[conversation.id].hasUnreadMessages).to.equal(false)
				local messages = state[conversation.id].messages
				expect(messages.values[message1.id].read).to.equal(true)
				expect(messages.values[message2.id].read).to.equal(true)
				expect(messages.values[message3.id].read).to.equal(true)
				expect(messages.values[message4.id].read).to.equal(true)
			end
		end)
	end)

	describe("Action MessageModerated", function()
		it("should mark the sending message as moderated", function()
			local conversation = Conversation.mock()
			local message = Message.mock()
			local state = {
				[conversation.id] = conversation
			}

			local action = {
				type = ActionType.SendingMessage,
				conversationId = conversation.id,
				message = message
			}
			state = Conversations(state, action)

			expect(state[conversation.id].sendingMessages:Get(message.id).moderated).to.never.be.ok()

			action = {
				type = ActionType.MessageModerated,
				conversationId = conversation.id,
				messageId = message.id
			}
			state = Conversations(state, action)

			expect(state[conversation.id].sendingMessages:Get(message.id).moderated).to.equal(true)
		end)
	end)

	describe("Action MessageFailedToSend", function()
		it("should mark the sending message as failed", function()
			local conversation = Conversation.mock()
			local message = Message.mock()
			local state = {
				[conversation.id] = conversation
			}

			local action = {
				type = ActionType.SendingMessage,
				conversationId = conversation.id,
				message = message
			}
			state = Conversations(state, action)

			expect(state[conversation.id].sendingMessages:Get(message.id).failed).to.equal(nil)

			action = {
				type = ActionType.MessageFailedToSend,
				conversationId = conversation.id,
				messageId = message.id
			}
			state = Conversations(state, action)

			expect(state[conversation.id].sendingMessages:Get(message.id).failed).to.equal(true)
		end)
	end)

	describe("Action SetConversationLoadingStatus", function()
		it("should set the conversation loading status", function()
			local conversation = Conversation.mock()
			local state = {
				[conversation.id] = conversation
			}

			expect(state[conversation.id].initialLoadingStatus).to.never.be.ok()

			local action = {
				type = ActionType.SetConversationLoadingStatus,
				conversationId = conversation.id,
				value = Constants.ConversationLoadingState.LOADING
			}
			state = Conversations(state, action)

			expect(state[conversation.id].initialLoadingStatus).to.equal(Constants.ConversationLoadingState.LOADING)

			action = {
				type = ActionType.SetConversationLoadingStatus,
				conversationId = conversation.id,
				value = Constants.ConversationLoadingState.DONE
			}
			state = Conversations(state, action)

			expect(state[conversation.id].initialLoadingStatus).to.equal(Constants.ConversationLoadingState.DONE)
		end)
	end)
end