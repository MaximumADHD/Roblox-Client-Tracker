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
	end)

	describe("WHEN OutgoingMessageSent", function()
		beforeAll(function(c)
			c.state1 = reducer(
				nil,
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
			expect(c.state1.inOrder).toEqual({ "id1" })
		end)

		it("SHOULD add the message to the inOrderBySenderId set", function(c)
			local userId = tostring(c.textSource.UserId)
			expect(c.state1.inOrderBySenderId[userId]).toEqual({ "id1" })
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

			it("SHOULD not change the inOrder reducer", function(c)
				expect(c.state1.inOrder).toBe(c.state2.inOrder)
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
				it("SHOULD change the inOrder reducer, adding the new messageId to the end", function(c)
					expect(c.state3.inOrder).never.toBe(c.state2.inOrder)
					expect(c.state3.inOrder).toEqual({ "id1", "id2" })
				end)
			end)
		end)
	end)

	describe("WHEN IncomingMessageReceived without a TextSource", function()
		beforeAll(function(c)
			c.state1 = reducer(
				nil,
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
			expect(c.state1.inOrder).toEqual({ "id1" })
		end)
	end)

	describe("GIVEN a messageLimit", function()
		it("SHOULD contain all messages sent when messageLimit not met", function(c)
			local state0 = reducer(nil, { type = "" })
			state0.messageLimit = 100

			local state = c.sendNumMessages(3, state0)
			expect(List.count(state.inOrder)).toBe(3)
			expect(Dictionary.count(state.byMessageId)).toBe(3)
		end)

		it("SHOULD never contain more messages than messageLimit", function(c)
			local state0 = reducer(nil, { type = "" })
			state0.messageLimit = 1

			local state = c.sendNumMessages(3, state0)
			expect(List.count(state.inOrder)).toEqual(1)
			expect(Dictionary.count(state.byMessageId)).toEqual(1)

			expect(state.byMessageId["id1"]).toBeNil()
			expect(state.byMessageId["id2"]).toBeNil()
			expect(state.inOrder[1]).toEqual("id3")
			expect(state.byMessageId["id3"]).never.toBeNil()
		end)

		it("SHOULD unmount older messages when messageLimit met", function(c)
			local state0 = reducer(nil, { type = "" })
			state0.messageLimit = 2

			local state = c.sendNumMessages(3, state0)
			expect(List.count(state.inOrder)).toEqual(2)
			expect(Dictionary.count(state.byMessageId)).toEqual(2)

			expect(state.byMessageId["id1"]).toBeNil()
			expect(state.inOrder[1]).toEqual("id2")
			expect(state.byMessageId["id2"]).never.toBeNil()
			expect(state.inOrder[2]).toEqual("id3")
			expect(state.byMessageId["id3"]).never.toBeNil()

			local userId = tostring(c.textSource.UserId)
			expect(state.inOrderBySenderId[userId]).toEqual({ "id2", "id3" })
		end)

		it("SHOULD remove inOrderBySenderId set if no messages remain in history", function(c)
			local textSource1 = {
				UserId = 1,
			}
			local textSource2 = {
				UserId = 2,
			}

			local state0 = reducer(nil, { type = "" })
			state0.messageLimit = 3

			local state1 = c.sendNumMessages(3, state0, textSource1)
			local state2 = c.sendNumMessages(3, state1, textSource2)

			expect(state1.inOrderBySenderId[tostring(textSource1.UserId)]).toEqual({
				"userId-1-id-1",
				"userId-1-id-2",
				"userId-1-id-3",
			})
			expect(state2.inOrderBySenderId[tostring(textSource2.UserId)]).toEqual({
				"userId-2-id-1",
				"userId-2-id-2",
				"userId-2-id-3",
			})
			expect(state2.inOrderBySenderId[tostring(textSource1.UserId)]).toBeNil()
		end)
	end)

	describe("GIVEN a set of muted userIds", function()
		it("SHOULD add visible = true to all messages when mutedUserIds is empty", function(c)
			local state0 = reducer(nil, { type = "" })
			state0.messageLimit = 100
			local state = c.sendNumMessages(5, state0)
			for _, val in pairs(state.byMessageId) do
				expect(val.visible).toEqual(true)
			end
		end)

		it("SHOULD add visible = false to messages from muted users", function(c)
			local state0 = reducer(nil, { type = "" })

			local state = reducer(state0, UserMuted(1))
			state = c.sendNumMessages(5, state)

			for _, val in pairs(state.byMessageId) do
				expect(val.visible).toEqual(false) -- Since all messages have textSource with UserId 1
			end
		end)

		it("muted user messages prior to mute SHOULD still have visible = true", function(c)
			local state0 = reducer(nil, { type = "" })
			local state = c.sendNumMessages(5, state0)

			state = reducer(state, UserMuted(1))
			state = reducer(
				state,
				IncomingMessageReceived({
					MessageId = "id" .. 6,
					TextSource = c.textSource,
					TextChannel = c.textChannel,
					PrefixText = "Player",
					Text = "Hello world",
					Status = Enum.TextChatMessageStatus.Sending,
					TimeStamp = DateTime.fromUnixTimestamp(6),
				})
			)

			for i = 1, 5 do
				expect(state.byMessageId["id" .. i].visible).toEqual(true)
			end
			expect(state.byMessageId["id6"].visible).toEqual(false)
		end)

		it("muted messages after unmute SHOULD still have visible = false", function(c)
			local state0 = reducer(nil, { type = "" })

			local state = reducer(state0, UserMuted(1))
			state = c.sendNumMessages(5, state)
			state = reducer(state, UserUnmuted(1))
			state = reducer(
				state,
				IncomingMessageReceived({
					MessageId = "id" .. 6,
					TextSource = c.textSource,
					TextChannel = c.textChannel,
					PrefixText = "Player",
					Text = "Hello world",
					Status = Enum.TextChatMessageStatus.Sending,
					TimeStamp = DateTime.fromUnixTimestamp(6),
				})
			)

			for i = 1, 5 do
				expect(state.byMessageId["id" .. i].visible).toEqual(false)
			end
			expect(state.byMessageId["id6"].visible).toEqual(true)
		end)
	end)

	describe("WHEN PlayerRemoved is fired", function()
		it("SHOULD clean up last message sent by sender id", function(c)
			local state0 = reducer(nil, { type = "" })

			local state1 = reducer(state0, UserMuted(1))
			local state2 = c.sendNumMessages(5, state1)

			expect(state2).toHaveProperty("inOrderBySenderId.1")
			expect(state2).toHaveProperty("_mutedUserIds.1")

			local state3 = reducer(state2, PlayerRemoved(1))

			expect(state3).never.toHaveProperty("inOrderBySenderId.1")
			expect(state3).never.toHaveProperty("_mutedUserIds.1")
		end)
	end)
end
