local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local reducer = require(script.Parent.reducer)

local Actions = ExperienceChat.Actions
local OutgoingMessageSent = require(Actions.OutgoingMessageSent)
local IncomingMessageReceived = require(Actions.IncomingMessageReceived)

return function()
	beforeAll(function(c)
		c.textSource = {
			UserId = 1,
		}

		c.textChannel = Instance.new("TextChannel")
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
end
