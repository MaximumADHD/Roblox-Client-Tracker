return function()
	local LuaChat = script.Parent.Parent
	local Conversation = require(LuaChat.Models.Conversation)
	local Message = require(LuaChat.Models.Message)
	local User = require(LuaChat.Models.User)
	local DateTime = require(LuaChat.DateTime)
	local Constants = require(LuaChat.Constants)

	local ChangedParticipants = require(LuaChat.Actions.ChangedParticipants)
	local FetchedOldestMessage = require(LuaChat.Actions.FetchedOldestMessage)
	local FetchingOlderMessages = require(LuaChat.Actions.FetchingOlderMessages)
	local MessageFailedToSend = require(LuaChat.Actions.MessageFailedToSend)
	local MessageModerated = require(LuaChat.Actions.MessageModerated)
	local ReadConversation = require(LuaChat.Actions.ReadConversation)
	local ReceivedConversation = require(LuaChat.Actions.ReceivedConversation)
	local ReceivedMessages = require(LuaChat.Actions.ReceivedMessages)
	local RemovedConversation = require(LuaChat.Actions.RemovedConversation)
	local RenamedGroupConversation = require(LuaChat.Actions.RenamedGroupConversation)
	local SendingMessage = require(LuaChat.Actions.SendingMessage)
	local SentMessage = require(LuaChat.Actions.SentMessage)
	local SetConversationLoadingStatus = require(LuaChat.Actions.SetConversationLoadingStatus)
	local SetUserTyping = require(LuaChat.Actions.SetUserTyping)

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
			local action = ReceivedConversation(conversation)

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
			local action = ReceivedMessages(conversation.id, {message})

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

			local action = ReceivedMessages(conversation.id, { message1, message2 })
			state = Conversations(state, action)

			do
				local messages = state[conversation.id].messages
				expect(#messages.keys).to.equal(2)
				expect(messages.values[messages.keys[1]].id).to.equal(message2.id)
				expect(messages.values[messages.keys[2]].id).to.equal(message1.id)
			end

			local message3 = Message.mock({ sent = DateTime.new(1991) })

			action = ReceivedMessages(conversation.id, { message3 })
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

			local action = ReceivedMessages(conversation.id, { message1, message2 }, true)
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

			local action = ReceivedMessages(conversation.id, { message1, message2 }, false)
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

			local action = SendingMessage(conversation.id, message)
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

			local action1 = SendingMessage(conversation.id, message)
			state = Conversations(state, action1)

			expect(state[conversation.id].sendingMessages:Get(message.id)).to.be.ok()

			local action2 = SentMessage(conversation.id, message.id)
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
			local action = RenamedGroupConversation(conversation.id, "Fleebledegoop, Ham Sammich and Lemur Face")
			state = Conversations(state, action)

			expect(state[conversation.id].title).to.equal("Fleebledegoop, Ham Sammich and Lemur Face")
		end)

		it("should update isDefaultTitle value", function()
			local conversation = Conversation.mock({
				isDefaultTitle = true,
			})
			local state = {
				[conversation.id] = conversation
			}
			state = Conversations(state, RenamedGroupConversation(conversation.id, "test", false))

			expect(state[conversation.id].isDefaultTitle).to.equal(false)
		end)

		it("should update lastUpdated value", function()
			local oldTick = 0
			local newTick = 1
			local conversation = Conversation.mock({
				isDefaultTitle = true,
				lastUpdated = oldTick,
			})
			local state = {
				[conversation.id] = conversation
			}
			state = Conversations(state, RenamedGroupConversation(conversation.id, "test", nil, newTick))

			expect(state[conversation.id].lastUpdated).to.equal(newTick)
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

			local action = ChangedParticipants(conversation.id, { user1.id, user2.id })
			state = Conversations(state, action)

			expect(#state[conversation.id].participants).to.equal(2)
			expect(state[conversation.id].participants[1]).to.equal(user1.id)
			expect(state[conversation.id].participants[2]).to.equal(user2.id)

			action = ChangedParticipants(conversation.id, { user2.id })
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

			local action = RemovedConversation(conversation1.id)
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

			local action1 = SetUserTyping(conversation.id, user.id, true)
			state = Conversations(state, action1)

			expect(state[conversation.id].usersTyping[user.id]).to.equal(true)

			local action2 = SetUserTyping(conversation.id, user.id, false)
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

			local action1 = FetchingOlderMessages(conversation.id, true)
			state = Conversations(state, action1)

			expect(state[conversation.id].fetchingOlderMessages).to.equal(true)

			local action2 = FetchingOlderMessages(conversation.id, false)
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

			local action1 = FetchedOldestMessage(conversation.id, true)
			state = Conversations(state, action1)

			expect(state[conversation.id].fetchedOldestMessage).to.equal(true)

			local action2 = FetchedOldestMessage(conversation.id, false)
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

			local actionAddMessages = ReceivedMessages(conversation.id, { message1, message2, message3, message4 }, true)
			state = Conversations(state, actionAddMessages)

			expect(state[conversation.id].hasUnreadMessages).to.equal(true)

			local actionReadAll = ReadConversation(conversation.id)
			state = Conversations(state, actionReadAll)

			do
				expect(state[conversation.id].hasUnreadMessages).to.equal(false)
				local messages = state[conversation.id].messages
				expect(messages.values[message1.id].read).to.equal(true)
				expect(messages.values[message2.id].read).to.equal(true)
				expect(messages.values[message3.id].read).to.equal(true)
			end

			local action2 = ReceivedMessages(conversation.id, { message4, message5 }, true)

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

			local actionReadAll2 = ReadConversation(conversation.id)
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

			local action = SendingMessage(conversation.id, message)
			state = Conversations(state, action)

			expect(state[conversation.id].sendingMessages:Get(message.id).moderated).to.never.be.ok()

			action = MessageModerated(conversation.id, message.id)
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

			local action = SendingMessage(conversation.id, message)
			state = Conversations(state, action)

			expect(state[conversation.id].sendingMessages:Get(message.id).failed).to.equal(nil)

			action = MessageFailedToSend(conversation.id, message.id)
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

			local action = SetConversationLoadingStatus(conversation.id, Constants.ConversationLoadingState.LOADING)
			state = Conversations(state, action)

			expect(state[conversation.id].initialLoadingStatus).to.equal(Constants.ConversationLoadingState.LOADING)

			action = SetConversationLoadingStatus(conversation.id, Constants.ConversationLoadingState.DONE)
			state = Conversations(state, action)

			expect(state[conversation.id].initialLoadingStatus).to.equal(Constants.ConversationLoadingState.DONE)
		end)
	end)
end