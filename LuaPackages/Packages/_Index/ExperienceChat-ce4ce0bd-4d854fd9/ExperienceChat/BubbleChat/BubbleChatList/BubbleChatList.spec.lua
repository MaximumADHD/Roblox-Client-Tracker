local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Roact = require(Packages.Roact)
local Dictionary = require(Packages.llama).Dictionary

local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

return function()
	beforeAll(function(rootContext)
		local storyDefinition = require(script.Parent:FindFirstChild("BubbleChatList.story"))

		rootContext.createTree = function(context, props)
			local storyMiddleware = context.storyMiddleware
			return Roact.createElement(
				storyMiddleware(storyDefinition.story),
				Dictionary.join(storyDefinition.props, props)
			)
		end

		rootContext.mount = function(context, props)
			local instance = Instance.new("ScreenGui")
			instance.Parent = game:GetService("CoreGui")

			local tree = context:createTree(props)
			local roactInstance = Roact.mount(tree, instance)
			return {
				roactInstance = roactInstance,
				instance = instance,
				unmount = function()
					Roact.unmount(roactInstance)
					instance:Destroy()
				end,
			}
		end
	end)

	describe("GIVEN BubbleChatList props", function()
		beforeAll(function(c)
			local TextChatService = game:GetService("TextChatService")
			local textChannel = Instance.new("TextChannel")
			textChannel.Parent = TextChatService
			textChannel.Name = "RBXGeneral"

			c.messages = {
				{
					text = "First message",
					userId = "1",
					messageId = tostring(os.clock()),
					timestamp = 1,
					textChannel = textChannel,
					visible = true,
					status = Enum.TextChatMessageStatus.Success,
				},
				{
					text = "Second message",
					userId = "1",
					messageId = tostring(os.clock() + 1),
					timestamp = 2,
					textChannel = textChannel,
					visible = true,
					status = Enum.TextChatMessageStatus.Success,
				},
				{
					text = "Final message",
					userId = "1",
					messageId = tostring(os.clock() + 2),
					timestamp = 3,
					textChannel = textChannel,
					visible = true,
					status = Enum.TextChatMessageStatus.Success,
				},
			}
		end)

		it("SHOULD render ChatBubbles according to messages prop", function(c)
			local instance = c:mount({ messages = c.messages, userId = 1 }).instance
			for _, message in c.messages do
				local bubbleTextLabel = c.findFirstInstance(instance, { Text = message.text })
				expect(bubbleTextLabel).never.toBeNil()
			end
		end)

		it("SHOULD render ChatBubbles in descending order", function(c)
			local instance = c:mount({ messages = c.messages, userId = 1 }).instance
			local firstBubbleYPosition = c.findFirstInstance(instance, { Text = c.messages[1].text }).AbsolutePosition.y
			local secondBubbleYPosition =
				c.findFirstInstance(instance, { Text = c.messages[2].text }).AbsolutePosition.y
			local thirdBubbleYPosition = c.findFirstInstance(instance, { Text = c.messages[3].text }).AbsolutePosition.y

			expect(firstBubbleYPosition).toBeLessThan(secondBubbleYPosition)
			expect(secondBubbleYPosition).toBeLessThan(thirdBubbleYPosition)
		end)

		it("SHOULD only render messages that belong to the given userId", function(c)
			local instance = c:mount({ messages = c.messages, userId = 2 }).instance
			local bubbleTextLabel = c.findFirstInstance(instance, { Text = "Message sent by user 2" })
			expect(bubbleTextLabel).toBeNil()
		end)
	end)
end
