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
			}
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
					isVisibleInChatWindow = true,
				},
				{
					prefixText = "Second",
					text = "Second",
					messageId = "id2",
					status = Enum.TextChatMessageStatus.Success,
					timeStamp = DateTime.fromUnixTimestamp(2),
					isVisibleInChatWindow = true,
				},
				{
					prefixText = "Third",
					text = "Third",
					messageId = "id3",
					status = Enum.TextChatMessageStatus.Success,
					timeStamp = DateTime.fromUnixTimestamp(3),
					isVisibleInChatWindow = true,
				},
			}
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
