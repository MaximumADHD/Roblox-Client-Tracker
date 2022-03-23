local CoreGui = game:GetService("CoreGui")
local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)

local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Roact = require(ProjectRoot.Roact)
local llama = require(ProjectRoot.llama)
local Set = llama.Set
local List = llama.List

local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect

return function()
	beforeAll(function(rootContext)
		rootContext.storyDefinition = require(script.Parent:FindFirstChild("ChatWindow.story"))
		rootContext.mount = rootContext.createMount(rootContext.storyDefinition.story, function(c)
			return {
				messages = c.messages,
				messageLimit = c.messageLimit,
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
				},
				{
					userId = nil,
					prefixText = "System",
					text = "System message 2",
					messageId = "id2",
					status = Enum.TextChatMessageStatus.Success,
				},
				{
					userId = 1,
					prefixText = "Player1",
					text = "Player message 1",
					messageId = "id3",
					status = Enum.TextChatMessageStatus.Success,
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
				},
				{
					prefixText = "Second",
					text = "Second",
					messageId = "id2",
					status = Enum.TextChatMessageStatus.Success,
				},
				{
					prefixText = "Third",
					text = "Third",
					messageId = "id3",
					status = Enum.TextChatMessageStatus.InvalidPrivacySettings,
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
				},
				{
					prefixText = "Second",
					text = "Second",
					messageId = "id2",
					status = Enum.TextChatMessageStatus.Success,
					timeStamp = DateTime.fromUnixTimestamp(2),
				},
				{
					prefixText = "Third",
					text = "Third",
					messageId = "id3",
					status = Enum.TextChatMessageStatus.Success,
					timeStamp = DateTime.fromUnixTimestamp(3),
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

	describe("GIVEN a messageLimit", function()
		beforeAll(function(c)
			c.messages = {
				{
					prefixText = "First",
					text = "First",
					messageId = "id1",
					status = Enum.TextChatMessageStatus.Success,
				},
				{
					prefixText = "Second",
					text = "Second",
					messageId = "id2",
					status = Enum.TextChatMessageStatus.Success,
				},
				{
					prefixText = "Third",
					text = "Third",
					messageId = "id3",
					status = Enum.TextChatMessageStatus.Success,
				},
			}
			c.canLocalUserChat = true
			c.getNumMessages = function(instance)
				local scrollingFrame = c.findFirstInstance(instance, { ClassName = "ScrollingFrame" })
				local scrollingFrameChildren = scrollingFrame:GetChildren()
				local numMessages = 0
				for i = 1, #scrollingFrameChildren do
					if scrollingFrameChildren[i].ClassName == "TextLabel" then
						numMessages += 1
					end
				end
				return numMessages
			end
		end)

		it("SHOULD mount all messages when messageLimit not met", function(c)
			c.messageLimit = 100
			local mountResult = c:mount()
			expect(c.getNumMessages(mountResult.instance)).toEqual(3)
			mountResult.unmount()
		end)

		it("SHOULD never mount more messages than messageLimit", function(c)
			c.messageLimit = 1
			-- 3 messages in message history but only 1 should be shown in chat
			local mountResult = c:mount()
			expect(c.getNumMessages(mountResult.instance)).toEqual(1)
			mountResult.unmount()
		end)

		it("SHOULD unmount older messages when messageLimit met", function(c)
			c.messageLimit = 2
			local mountResult = c:mount()
			local scrollingFrame = c.findFirstInstance(mountResult.instance, { ClassName = "ScrollingFrame" })
			local scrollingFrameChildren = scrollingFrame:GetChildren()
			for i = 1, #scrollingFrameChildren do
				expect(scrollingFrameChildren[i]).never.toEqual("message1")
				-- message1 should be not be rendered when there are 3 messages but 2 is the limit
			end
		end)
	end)

	describe("GIVEN a set of muted userIds", function()
		beforeAll(function(c)
			c.messages = {
				{
					userId = 1,
					prefixText = "Player1",
					text = "First",
					messageId = "id1",
					status = Enum.TextChatMessageStatus.Success,
				},
				{
					userId = 2,
					prefixText = "Player2",
					text = "Second",
					messageId = "id2",
					status = Enum.TextChatMessageStatus.Success,
				},
				{
					userId = 3,
					prefixText = "Player3",
					text = "Third",
					messageId = "id3",
					status = Enum.TextChatMessageStatus.Success,
				},
				{
					userId = 3,
					prefixText = "Player3",
					text = "Fourth",
					messageId = "id4",
					status = Enum.TextChatMessageStatus.Success,
				},
				{
					userId = 4,
					prefixText = "Player4",
					text = "Fifth",
					messageId = "id5",
					status = Enum.TextChatMessageStatus.Success,
				},
			}
			c.canLocalUserChat = true
		end)

		it("SHOULD render all messages if mutedUserIds is nil or empty", function(c)
			c.mutedUserIds = nil
			local instance = c:mount().instance

			local scrollingFrameChildren = c.findFirstInstance(instance, { Name = "scrollingFrame" }):GetChildren()
			local numMessages = 0
			for _, child in ipairs(scrollingFrameChildren) do
				if child.ClassName == "TextLabel" then
					numMessages += 1
				end
			end
			expect(numMessages).toEqual(5)
		end)

		it("SHOULD render all messages if all messages are from non-muted users", function(c)
			c.mutedUserIds = Set.add({}, 6)

			local instance = c:mount().instance
			local scrollingFrameChildren = c.findFirstInstance(instance, { Name = "scrollingFrame" }):GetChildren()
			local numMessages = 0
			for _, child in ipairs(scrollingFrameChildren) do
				if child.ClassName == "TextLabel" then
					numMessages += 1
				end
			end
			expect(numMessages).toEqual(5)
		end)

		it("SHOULD not render any messages that are from muted users", function(c)
			local mutedUserIds = Set.add({ 1 }, 2)
			mutedUserIds = Set.add(mutedUserIds, 3)
			mutedUserIds = Set.add(mutedUserIds, 4)
			c.mutedUserIds = mutedUserIds

			local instance = c:mount().instance
			local scrollingFrameChildren = c.findFirstInstance(instance, { Name = "scrollingFrame" }):GetChildren()
			local numMessages = 0
			for _, child in ipairs(scrollingFrameChildren) do
				if child.ClassName == "TextLabel" then
					numMessages += 1
				end
			end
			expect(numMessages).toEqual(0)
		end)

		it("SHOULD render only some messages (not all) if there are muted users", function(c)
			local mutedUserIds = Set.add({ 1 }, 2)
			c.mutedUserIds = mutedUserIds

			local instance = c:mount().instance
			local scrollingFrameChildren = c.findFirstInstance(instance, { Name = "scrollingFrame" }):GetChildren()
			local numMessages = 0
			local messageLabels = {}
			for _, child in ipairs(scrollingFrameChildren) do
				if child.ClassName == "TextLabel" then
					numMessages += 1
					messageLabels[child.LayoutOrder] = child.Text
				end
			end
			expect(numMessages).toEqual(3)
			expect(messageLabels[3]).toEqual("Player3: Third")
			expect(messageLabels[4]).toEqual("Player3: Fourth")
			expect(messageLabels[5]).toEqual("Player4: Fifth")
		end)

		it("SHOULD still render muted user's messages prior to mute", function(c)
			local mutedUserIds = {}
			c.mutedUserIds = mutedUserIds

			local mounted = c:mount()
			local roactTree = mounted.roactInstance

			local newTree = c:makeTree(c.storyDefinition.story, function()
				return {
					messages = List.append(c.messages, {
						{
							userId = 1,
							prefixText = "Player1",
							text = "ShouldNotShow",
							messageId = "id6",
							status = Enum.TextChatMessageStatus.Success,
						},
					}),
					messageLimit = c.messageLimit,
					canLocalUserChat = c.canLocalUserChat,
					mutedUserIds = Set.add({}, 1),
				}
			end)

			Roact.update(roactTree, newTree)

			local numMessages = 0
			local messageLabels = {}
			local scrollingFrameChildren =
				c.findFirstInstance(mounted.instance, { Name = "scrollingFrame" }):GetChildren()
			for _, child in ipairs(scrollingFrameChildren) do
				if child.ClassName == "TextLabel" then
					numMessages += 1
					messageLabels[child.LayoutOrder] = child.Text
					expect(child.Text).never.toEqual("Player1: ShouldNotShow")
				end
			end

			-- Should only render 5 messages (total 6 but 1 is muted)
			expect(numMessages).toEqual(5)
			-- Since the muted user's message was sent prior to the mute, it should still render.
			expect(messageLabels[1]).toEqual("Player1: First")
		end)

		it("SHOULD not render user's messages while muted even after user is unmuted", function(c)
			local mutedUserIds = Set.add({}, 1)
			c.mutedUserIds = mutedUserIds

			local mounted = c:mount()
			local roactTree = mounted.roactInstance

			local newTree = c:makeTree(c.storyDefinition.story, function()
				return {
					messages = List.append(c.messages, {
						userId = 1,
						prefixText = "Player1",
						text = "ShouldShow",
						messageId = "id6",
						status = Enum.TextChatMessageStatus.Success,
					}),
					messageLimit = c.messageLimit,
					canLocalUserChat = c.canLocalUserChat,
					mutedUserIds = {}, -- Mocking unmute by making mutedUserIds empty
				}
			end)

			Roact.update(roactTree, newTree)

			local numMessages = 0
			local messageLabels = {}
			local scrollingFrameChildren =
				c.findFirstInstance(mounted.instance, { Name = "scrollingFrame" }):GetChildren()
			for _, child in ipairs(scrollingFrameChildren) do
				if child.ClassName == "TextLabel" then
					-- Since the muted user's message was sent during mute, it should still not render even after being unmuted.
					expect(child.Text).never.toEqual("Player1: First")

					numMessages += 1
					messageLabels[child.LayoutOrder] = child.Text
				end
			end

			expect(messageLabels[6]).toEqual("Player1: ShouldShow")
		end)
	end)
end
