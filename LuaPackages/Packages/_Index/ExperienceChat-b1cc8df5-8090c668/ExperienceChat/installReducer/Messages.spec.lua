local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Llama = require(Packages.llama)
local List = Llama.List
local Dictionary = Llama.Dictionary
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local reducer = require(script.Parent.Messages)
local Actions = ExperienceChat.Actions
local OutgoingMessageSent = require(Actions.OutgoingMessageSent)
local IncomingMessageReceived = require(Actions.IncomingMessageReceived)
local UserMuted = require(Actions.UserMuted)
local UserUnmuted = require(Actions.UserUnmuted)
local PlayerRemoved = require(Actions.PlayerRemoved)
local ChatPrivacySettingsReceived = require(Actions.ChatPrivacySettingsReceived)
local ChatPrivacySettingsFetchFailed = require(Actions.ChatPrivacySettingsFetchFailed)
local ConfigurationObjectsLoaded = require(Actions.ConfigurationObjectsLoaded)
local BubbleChatSettingsChanged = require(Actions.BubbleChatSettingsChanged)
local IncomingBubbleChatMessageReceived = require(Actions.IncomingBubbleChatMessageReceived)
local ChatWindowMessagesCleared = require(Actions.ChatWindowMessagesCleared)
return function()
	beforeAll(function(c)
		c.textSource = {
			UserId = 1,
		}

		c.textChannel = Instance.new("TextChannel")

		c.sendNumMessages = function(numMessages, state, textSource)
			for i = 1, numMessages do
				state = reducer(
					state,
					IncomingMessageReceived({
						MessageId = if textSource
							then string.format("userId-%d-id-%d", textSource.UserId, i)
							else "id" .. i,
						TextSource = textSource or c.textSource,
						TextChannel = c.textChannel,
						PrefixText = "Player",
						Text = "Hello world",
						Status = Enum.TextChatMessageStatus.Sending,
						TimeStamp = DateTime.fromUnixTimestamp(i),
					})
				)
			end
			return state
		end

		c.initialState = reducer(nil, ChatPrivacySettingsReceived({ canUserChat = true }))
	end)

	describe("WHEN OutgoingMessageSent", function()
		beforeAll(function(c)
			c.state1 = reducer(
				c.initialState,
				OutgoingMessageSent({
					MessageId = "id1",
					TextSource = c.textSource,
					TextChannel = c.textChannel,
					PrefixText = "Player",
					Text = "Hello world",
					Status = Enum.TextChatMessageStatus.Sending,
					TimeStamp = DateTime.fromUnixTimestamp(1),
				})
			)
		end)

		it("SHOULD add the entry by its messageId", function(c)
			assert(c.state1.byMessageId.id1, "Did not add message 'id1' to map")
			expect(c.state1.byMessageId.id1).toHaveProperty("status", Enum.TextChatMessageStatus.Sending)
		end)

		it("SHOULD tostring the UserId", function(c)
			assert(c.state1.byMessageId.id1, "Did not add message 'id1' to map")
			expect(c.state1.byMessageId.id1.userId).toEqual("1")
		end)

		it("SHOULD add the only messageId in order", function(c)
			expect(c.state1.windowMessagesInOrder).toEqual({ "id1" })
		end)

		it("SHOULD add the message to the bubbleMessagesInOrderBySenderId set", function(c)
			local userId = tostring(c.textSource.UserId)
			expect(c.state1.bubbleMessagesInOrderBySenderId[userId]).toEqual({ "id1" })
		end)

		describe("WHEN IncomingMessageReceived with the same messageId", function()
			beforeAll(function(c)
				c.state2 = reducer(
					c.state1,
					IncomingMessageReceived({
						MessageId = "id1",
						TextSource = c.textSource,
						TextChannel = c.textChannel,
						PrefixText = "Player",
						Text = "Hello world",
						Status = Enum.TextChatMessageStatus.Success,
						TimeStamp = DateTime.fromUnixTimestamp(1),
					})
				)
			end)
			it("SHOULD replace the previous entry", function(c)
				assert(c.state2.byMessageId.id1, "Did not add message 'id1' to map")
				expect(c.state2.byMessageId.id1).toHaveProperty("status", Enum.TextChatMessageStatus.Success)
			end)

			it("SHOULD not change the windowMessagesInOrder reducer", function(c)
				expect(c.state1.windowMessagesInOrder).toBe(c.state2.windowMessagesInOrder)
			end)

			describe("WHEN IncomingMessageReceived with a different messageId", function()
				beforeAll(function(c)
					c.state3 = reducer(
						c.state2,
						IncomingMessageReceived({
							MessageId = "id2",
							TextSource = c.textSource,
							TextChannel = c.textChannel,
							PrefixText = "Player",
							Text = "Hello world",
							Status = Enum.TextChatMessageStatus.Success,
							TimeStamp = DateTime.fromUnixTimestamp(1),
						})
					)
				end)
				it("SHOULD change the windowMessagesInOrder reducer, adding the new messageId to the end", function(c)
					expect(c.state3.windowMessagesInOrder).never.toBe(c.state2.windowMessagesInOrder)
					expect(c.state3.windowMessagesInOrder).toEqual({ "id1", "id2" })
				end)
			end)
		end)

		describe("WHEN IncomingMessageReceived has a same MessageId but TextChatStatus is an error", function()
			it("SHOULD delete associated message from Messages state if status is MessageTooLong", function(c)
				expect(c.state1.byMessageId.id1).never.toBeNil()
				expect(List.count(c.state1.windowMessagesInOrder)).toBe(1)

				local state2 = reducer(
					c.state1,
					IncomingMessageReceived({
						MessageId = "id1",
						TextSource = c.textSource,
						TextChannel = c.textChannel,
						PrefixText = "Player",
						Text = "",
						Status = Enum.TextChatMessageStatus.MessageTooLong,
						TimeStamp = DateTime.fromUnixTimestamp(1),
					})
				)

				expect(state2.byMessageId.id1).toBeNil()
				expect(List.count(state2.windowMessagesInOrder)).toBe(0)
			end)

			it("SHOULD delete associated message from Messages state if status is Floodchecked", function(c)
				expect(c.state1.byMessageId.id1).never.toBeNil()
				expect(List.count(c.state1.windowMessagesInOrder)).toBe(1)

				local state2 = reducer(
					c.state1,
					IncomingMessageReceived({
						MessageId = "id1",
						TextSource = c.textSource,
						TextChannel = c.textChannel,
						PrefixText = "Player",
						Text = "",
						Status = Enum.TextChatMessageStatus.Floodchecked,
						TimeStamp = DateTime.fromUnixTimestamp(1),
					})
				)

				expect(state2.byMessageId.id1).toBeNil()
				expect(List.count(state2.windowMessagesInOrder)).toBe(0)
			end)
		end)
	end)

	describe("WHEN IncomingMessageReceived with empty ContentText", function()
		beforeAll(function(c)
			c.state1 = reducer(
				c.initialState,
				IncomingMessageReceived({
					MessageId = "id1",
					TextSource = c.textSource,
					TextChannel = c.textChannel,
					PrefixText = "Player",
					Text = "<font color='#FFFFFF'> </font>",
					Status = Enum.TextChatMessageStatus.Sending,
					TimeStamp = DateTime.fromUnixTimestamp(1),
				})
			)
		end)

		it("SHOULD NOT add the entry", function(c)
			expect(c.state1.byMessageId.id1).toEqual(nil)
		end)
	end)

	describe("WHEN IncomingMessageReceived without a TextSource", function()
		beforeAll(function(c)
			c.state1 = reducer(
				c.initialState,
				IncomingMessageReceived({
					MessageId = "id1",
					TextSource = nil,
					TextChannel = c.textChannel,
					PrefixText = "Player",
					Text = "Hello world",
					Status = Enum.TextChatMessageStatus.Sending,
					TimeStamp = DateTime.fromUnixTimestamp(1),
				})
			)
		end)

		it("SHOULD add the entry by its messageId", function(c)
			assert(c.state1.byMessageId.id1, "Did not add message 'id1' to map")
			expect(c.state1.byMessageId.id1.userId).toEqual(nil)
		end)

		it("SHOULD add the only messageId in order", function(c)
			expect(c.state1.windowMessagesInOrder).toEqual({ "id1" })
		end)
	end)

	describe("GIVEN a messageLimit", function()
		it("SHOULD contain all messages sent when messageLimit not met", function(c)
			local state0 = reducer(c.initialState, { type = "" })
			state0.messageLimit = 100

			local state = c.sendNumMessages(3, state0)
			expect(List.count(state.windowMessagesInOrder)).toBe(3)
			expect(Dictionary.count(state.byMessageId)).toBe(3)
		end)

		it("SHOULD never contain more messages than messageLimit", function(c)
			local state0 = reducer(c.initialState, { type = "" })
			state0.messageLimit = 1

			local state = c.sendNumMessages(3, state0)
			expect(List.count(state.windowMessagesInOrder)).toEqual(1)
			expect(Dictionary.count(state.byMessageId)).toEqual(1)

			expect(state.byMessageId["id1"]).toBeNil()
			expect(state.byMessageId["id2"]).toBeNil()
			expect(state.windowMessagesInOrder[1]).toEqual("id3")
			expect(state.byMessageId["id3"]).never.toBeNil()
		end)

		it("SHOULD unmount older messages when messageLimit met", function(c)
			local state0 = reducer(c.initialState, { type = "" })
			state0.messageLimit = 2

			local state = c.sendNumMessages(3, state0)
			expect(List.count(state.windowMessagesInOrder)).toEqual(2)
			expect(Dictionary.count(state.byMessageId)).toEqual(2)

			expect(state.byMessageId["id1"]).toBeNil()
			expect(state.windowMessagesInOrder[1]).toEqual("id2")
			expect(state.byMessageId["id2"]).never.toBeNil()
			expect(state.windowMessagesInOrder[2]).toEqual("id3")
			expect(state.byMessageId["id3"]).never.toBeNil()

			local userId = tostring(c.textSource.UserId)
			expect(state.bubbleMessagesInOrderBySenderId[userId]).toEqual({ "id2", "id3" })
		end)

		it("SHOULD remove bubbleMessagesInOrderBySenderId set if no messages remain in history", function(c)
			local textSource1 = {
				UserId = 1,
			}
			local textSource2 = {
				UserId = 2,
			}

			local state0 = reducer(c.initialState, { type = "" })
			state0.messageLimit = 3

			local state1 = c.sendNumMessages(3, state0, textSource1)
			local state2 = c.sendNumMessages(3, state1, textSource2)

			expect(state1.bubbleMessagesInOrderBySenderId[tostring(textSource1.UserId)]).toEqual({
				"userId-1-id-1",
				"userId-1-id-2",
				"userId-1-id-3",
			})
			expect(state2.bubbleMessagesInOrderBySenderId[tostring(textSource2.UserId)]).toEqual({
				"userId-2-id-1",
				"userId-2-id-2",
				"userId-2-id-3",
			})
			expect(state2.bubbleMessagesInOrderBySenderId[tostring(textSource1.UserId)]).toBeNil()
		end)
	end)

	describe("WHEN ChatWindowMessagesCleared is fired", function()
		beforeAll(function(c)
			c.state0 = reducer(c.initialState, { type = "" })
			c.state0.messageLimit = 5

			c.state1 = c.sendNumMessages(5, c.state0)
			c.state2 = reducer(c.state1, ChatWindowMessagesCleared())
		end)
		it("SHOULD clear messages inWindowMessageInOrder but keep byMessageId", function(c)
			expect(List.count(c.state2.windowMessagesInOrder)).toBe(0)
			expect(Dictionary.count(c.state2.byMessageId)).toBe(5)
		end)
		it("SHOULD set isVisibleInChatWindow to false for all existing messages", function(c)
			Dictionary.map(c.state2.byMessageId, function(message)
				expect(message.isVisibleInChatWindow).toEqual(false)
			end)
		end)
		describe("WHEN a new message is sent after clearing chat", function()
			it("SHOULD be visible in chat window", function(c)
				local textSource1 = { UserId = 1 }
				local state = c.sendNumMessages(1, c.state2, textSource1)
				expect(List.count(state.windowMessagesInOrder)).toBe(1)
				expect(state.byMessageId["userId-1-id-1"].isVisibleInChatWindow).toEqual(true)
			end)
		end)
	end)

	describe("WHEN PlayerRemoved is fired", function()
		it("SHOULD clean up last message sent by sender id", function(c)
			local state0 = reducer(nil, { type = "" })

			local state1 = reducer(state0, UserMuted(1))
			local state2 = c.sendNumMessages(5, state1)

			expect(state2).toHaveProperty("bubbleMessagesInOrderBySenderId.1")
			expect(state2).toHaveProperty("_mutedUserIds.1")

			local state3 = reducer(state2, PlayerRemoved(1))

			expect(state3).never.toHaveProperty("bubbleMessagesInOrderBySenderId.1")
			expect(state3).never.toHaveProperty("_mutedUserIds.1")
		end)
	end)

	describe("WHEN ChatPrivacySettings actions are fired", function()
		it("SHOULD update state correctly when ChatPrivacySettingsReceived is dispatched", function()
			local state0 = reducer(nil, { type = "" })

			local state1 = reducer(state0, ChatPrivacySettingsReceived(true))
			expect(state1.canLocalUserChat).toEqual(true)
			local state2 = reducer(state1, ChatPrivacySettingsReceived(false))
			expect(state2.canLocalUserChat).toEqual(false)
		end)

		it("SHOULD update state correctly when ChatPrivacySettingsFetchFailed is dispatched", function()
			local state0 = reducer(nil, { type = "" })

			local state1 = reducer(state0, ChatPrivacySettingsFetchFailed())
			expect(state1.canLocalUserChat).toEqual(false)
		end)
	end)

	describe("WHEN ConfigurationObjectsLoaded action are fired", function()
		it("SHOULD update isBubbleChatEnabled correctly", function()
			local state0 = reducer(nil, { type = "" })
			local state1 = reducer(state0, ConfigurationObjectsLoaded({ bubbleChatSettings = { Enabled = true } }))
			expect(state1.isBubbleChatEnabled).toEqual(true)
		end)
	end)

	describe("WHEN BubbleChatSettingsChanged action is fired", function()
		it("SHOULD update state when the property changed is 'Enabled'", function()
			local state0 = reducer(nil, { type = "" })

			local state1 = reducer(state0, BubbleChatSettingsChanged("Enabled", true))
			expect(state1.isBubbleChatEnabled).toEqual(true)
			local state2 = reducer(state1, BubbleChatSettingsChanged("Enabled", false))
			expect(state2.isBubbleChatEnabled).toEqual(false)
		end)

		it("SHOULD do nothing when property changed is not 'Enabled'", function()
			local state0 = reducer(nil, BubbleChatSettingsChanged("Enabled", true))

			local state1 = reducer(state0, BubbleChatSettingsChanged("BubbleDuration", 1))
			expect(state1.isBubbleChatEnabled).toEqual(true)
		end)

		it("SHOULD update isVisibleInBubbleChat property", function(c)
			local state0 = reducer(nil, BubbleChatSettingsChanged("Enabled", true))
			local state1 = c.sendNumMessages(1, state0)

			local state2 = reducer(state1, BubbleChatSettingsChanged("Enabled", false))
			expect(state2.byMessageId.id1.isVisibleInBubbleChat).toEqual(false)
		end)
	end)

	describe("GIVEN a message sent by IncomingBubbleChatMessageReceived action", function()
		beforeAll(function(c)
			-- Set up partOrModel
			local character = Instance.new("Model")
			local part = Instance.new("Part")
			part.Anchored = true
			part.Parent = character
			character.PrimaryPart = part

			c.part = part
			c.state0 = reducer(
				c.initialState,
				IncomingBubbleChatMessageReceived({
					partOrModel = c.part,
					bubbleChatMessageId = "id1",
					message = "Hello from a part",
					timestamp = DateTime.fromUnixTimestamp(1),
				})
			)
		end)

		it("SHOULD add to byMessageId dictionary", function(c)
			expect(c.state0.byMessageId.id1.text).toEqual("Hello from a part")
		end)

		it("SHOULD always have isVisibleInBubbleChat as true even if BubbleChat is disabled", function(c)
			expect(c.state0.byMessageId.id1.isVisibleInBubbleChat).toEqual(true)

			local state1 = reducer(c.state0, BubbleChatSettingsChanged("Enabled", false))

			expect(state1.isBubbleChatEnabled).toEqual(false)
			expect(state1.byMessageId.id1.isVisibleInBubbleChat).toEqual(true)
		end)

		it("SHOULD not count toward messageLimit", function(c)
			local state0 = reducer(c.initialState, { type = "" })
			state0.messageLimit = 1

			local state1 = reducer(
				state0,
				IncomingMessageReceived({
					MessageId = "id1",
					TextSource = c.textSource,
					TextChannel = c.textChannel,
					PrefixText = "Player",
					Text = "Hello world",
					Status = Enum.TextChatMessageStatus.Sending,
					TimeStamp = DateTime.fromUnixTimestamp(1),
				})
			)

			expect(state1.windowMessagesInOrder[1]).toEqual("id1")

			local state2 = reducer(
				state1,
				IncomingBubbleChatMessageReceived({
					partOrModel = c.part,
					bubbleChatMessageId = "id",
					message = "this is a bubblechatmessage",
					timestamp = DateTime.fromUnixTimestamp(1),
				})
			)

			expect(state2.windowMessagesInOrder[1]).toEqual("id1")
		end)
	end)

	describe("GIVEN incoming message is a system message", function()
		it("SHOULD  set isVisibleInChatWindow message propety to true", function(c)
			local state0 = reducer(
				nil,
				IncomingMessageReceived({
					MessageId = "id" .. 1,
					TextSource = nil, -- If userId is nil, we know the message is a system message
					TextChannel = c.textChannel,
					PrefixText = "Player",
					Text = "Hello world",
					Status = Enum.TextChatMessageStatus.Sending,
					TimeStamp = DateTime.fromUnixTimestamp(1),
				})
			)
			expect(state0.byMessageId.id1.isVisibleInChatWindow).toEqual(true)
		end)
	end)

	describe("GIVEN ChatPrivacy Settings", function()
		it("SHOULD set isVisibleInChatWindow message propety to false if canLocalUserChat is false", function(c)
			local state0 = reducer(nil, ChatPrivacySettingsReceived(false))

			local state1 = c.sendNumMessages(3, state0)
			expect(state1.byMessageId.id1.isVisibleInChatWindow).toEqual(false)
		end)

		describe("GIVEN canLocalUserChat is true", function()
			beforeAll(function(c)
				c.state0 = reducer(nil, ChatPrivacySettingsReceived(true))
			end)

			it(
				"SHOULD set isVisibleInChatWindow message propety to false if status is not Success or Sending",
				function(c)
					local state1 = reducer(
						c.state0,
						IncomingMessageReceived({
							MessageId = "id" .. 1,
							TextSource = c.textSource,
							TextChannel = c.textChannel,
							PrefixText = "Player",
							Text = "Hello world",
							Status = Enum.TextChatMessageStatus.TextFilterFailed,
							TimeStamp = DateTime.fromUnixTimestamp(1),
						})
					)
					expect(state1.byMessageId.id1.isVisibleInChatWindow).toEqual(false)
				end
			)

			describe("GIVEN incoming message status is Success or Sending", function()
				describe("GIVEN message comes from a muted user", function()
					beforeAll(function(c)
						c.dispatchReceivedMessage = function(messageId: number)
							return IncomingMessageReceived({
								MessageId = "id" .. messageId,
								TextSource = c.textSource,
								TextChannel = c.textChannel,
								PrefixText = "Player",
								Text = "Hello world",
								Status = Enum.TextChatMessageStatus.Success,
								TimeStamp = DateTime.fromUnixTimestamp(1),
							})
						end
					end)

					it("SHOULD set isVisibleInChatWindow property to false", function(c)
						local state1 = reducer(c.state0, UserMuted(1))
						local state2 = reducer(state1, c.dispatchReceivedMessage(1))
						expect(state2.byMessageId.id1.isVisibleInChatWindow).toEqual(false)
					end)

					it("SHOULD not render messages from unmuted users during duration of mute", function(c)
						local state1 = reducer(c.state0, UserMuted(1))
						local state2 = reducer(state1, c.dispatchReceivedMessage(1))
						local state3 = reducer(state2, UserUnmuted(1))
						local state4 = reducer(state3, c.dispatchReceivedMessage(2))

						expect(state4.byMessageId.id1.isVisibleInChatWindow).toEqual(false)
						expect(state4.byMessageId.id2.isVisibleInChatWindow).toEqual(true)
					end)
				end)

				describe("GIVEN message comes from an unmuted user", function()
					it("SHOULD set isVisibleInChatWindow property to true", function(c)
						local state1 = reducer(
							c.state0,
							IncomingMessageReceived({
								MessageId = "id" .. 1,
								TextSource = c.textSource,
								TextChannel = c.textChannel,
								PrefixText = "Player",
								Text = "Hello world",
								Status = Enum.TextChatMessageStatus.Success,
								TimeStamp = DateTime.fromUnixTimestamp(1),
							})
						)
						expect(state1.byMessageId.id1.isVisibleInChatWindow).toEqual(true)
					end)

					it("SHOULD isBubbleChatEnabled to true if bubble chat is enabled", function(c)
						local state1 = reducer(c.state0, BubbleChatSettingsChanged("Enabled", true))
						local state2 = reducer(
							state1,
							IncomingMessageReceived({
								MessageId = "id" .. 1,
								TextSource = c.textSource,
								TextChannel = c.textChannel,
								PrefixText = "Player",
								Text = "Hello world",
								Status = Enum.TextChatMessageStatus.Success,
								TimeStamp = DateTime.fromUnixTimestamp(1),
							})
						)
						expect(state2.byMessageId.id1.isVisibleInBubbleChat).toEqual(true)
					end)
				end)
			end)
		end)
	end)
end
