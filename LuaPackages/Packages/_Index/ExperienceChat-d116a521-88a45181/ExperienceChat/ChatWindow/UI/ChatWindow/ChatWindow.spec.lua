local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

return function()
	beforeAll(function(rootContext)
		rootContext.storyDefinition = require(script.Parent:FindFirstChild("ChatWindow.story"))
		rootContext.mount = rootContext.createMount(rootContext.storyDefinition.story, function(c)
			return {
				messages = c.messages,
				mutedUserIds = c.mutedUserIds,
				canLocalUserChat = c.canLocalUserChat,
			}
		end)
	end)

	describe("GIVEN canLocalUserChat", function()
		beforeAll(function(c)
			c.messages = {
				{
					userId = nil,
					prefixText = "System",
					text = "System message 1",
					messageId = "id1",
					status = Enum.TextChatMessageStatus.Success,
					visible = true,
				},
				{
					userId = nil,
					prefixText = "System",
					text = "System message 2",
					messageId = "id2",
					status = Enum.TextChatMessageStatus.Success,
					visible = true,
				},
				{
					userId = 1,
					prefixText = "Player1",
					text = "Player message 1",
					messageId = "id3",
					status = Enum.TextChatMessageStatus.Success,
					visible = true,
				},
			}
		end)

		it("SHOULD render all messages if canLocalUserChat is true", function(c)
			c.canLocalUserChat = true

			local instance = c:mount().instance
			local firstMessage = c.findFirstInstance(instance, { text = "System: System message 1" })
			local secondMessage = c.findFirstInstance(instance, { text = "System: System message 2" })
			local thirdMessage = c.findFirstInstance(instance, { text = "Player1: Player message 1" })
			expect(firstMessage).never.toBeNil()
			expect(secondMessage).never.toBeNil()
			expect(thirdMessage).never.toBeNil()
		end)

		it("SHOULD render only system messages if canLocalUserChat is false", function(c)
			c.canLocalUserChat = false

			local instance = c:mount().instance
			local firstMessage = c.findFirstInstance(instance, { text = "System: System message 1" })
			local secondMessage = c.findFirstInstance(instance, { text = "System: System message 2" })
			local thirdMessage = c.findFirstInstance(instance, { text = "Player1: Player message 1" })
			expect(firstMessage).never.toBeNil()
			expect(secondMessage).never.toBeNil()
			expect(thirdMessage).toBeNil()
		end)
	end)

	describe("GIVEN a short message history where one message failed to send", function()
		beforeAll(function(c)
			c.messages = {
				{
					prefixText = "First",
					text = "First",
					messageId = "id1",
					status = Enum.TextChatMessageStatus.Success,
					visible = true,
				},
				{
					prefixText = "Second",
					text = "Second",
					messageId = "id2",
					status = Enum.TextChatMessageStatus.Success,
					visible = true,
				},
				{
					prefixText = "Third",
					text = "Third",
					messageId = "id3",
					status = Enum.TextChatMessageStatus.InvalidPrivacySettings,
					visible = true,
				},
			}
			c.canLocalUserChat = true
		end)

		it("SHOULD only mount messages if TextChatMessage.Status is success", function(c)
			local instance = c:mount().instance
			local firstMessage = c.findFirstInstance(instance, { text = "First: First" })
			local secondMessage = c.findFirstInstance(instance, { text = "Second: Second" })
			local thirdMessage = c.findFirstInstance(instance, { text = "Third: Third" })

			expect(firstMessage).never.toBeNil()
			expect(secondMessage).never.toBeNil()
			expect(thirdMessage).toBeNil()
		end)
	end)

	describe("GIVEN a short message history of Successful messages", function()
		beforeAll(function(c)
			c.messages = {
				{
					prefixText = "First",
					text = "First",
					messageId = "id1",
					status = Enum.TextChatMessageStatus.Success,
					timeStamp = DateTime.fromUnixTimestamp(1),
					visible = true,
				},
				{
					prefixText = "Second",
					text = "Second",
					messageId = "id2",
					status = Enum.TextChatMessageStatus.Success,
					timeStamp = DateTime.fromUnixTimestamp(2),
					visible = true,
				},
				{
					prefixText = "Third",
					text = "Third",
					messageId = "id3",
					status = Enum.TextChatMessageStatus.Success,
					timeStamp = DateTime.fromUnixTimestamp(3),
					visible = true,
				},
			}
			c.canLocalUserChat = true
		end)

		it("SHOULD mount the messages in descending order", function(c)
			local instance = c:mount().instance

			local firstMessage = c.findFirstInstance(instance, { text = "First: First" })
			local secondMessage = c.findFirstInstance(instance, { text = "Second: Second" })
			local thirdMessage = c.findFirstInstance(instance, { text = "Third: Third" })
			expect(firstMessage).never.toBeNil()
			expect(secondMessage).never.toBeNil()
			expect(thirdMessage).never.toBeNil()

			expect(firstMessage).toBeAbove(secondMessage)
			expect(secondMessage).toBeAbove(thirdMessage)
		end)
	end)
end
