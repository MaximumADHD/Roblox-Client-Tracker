local CoreGui = game:GetService("CoreGui")
local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)
local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect

return function()
	beforeAll(function(rootContext)
		local storyDefinition = require(script.Parent:FindFirstChild("TextMessageLabel.story"))
		rootContext.mount = rootContext.createMount(storyDefinition.story, function(c)
			return {
				controls = {
					text = c.message.text,
					prefixText = c.message.prefixText,
				},
			}
		end)
	end)

	describe("WHEN parented to a statically sized frame", function()
		beforeAll(function(c)
			c.size = UDim2.fromOffset(300, 300)
		end)

		describe("GIVEN message", function()
			beforeAll(function(c)
				c.message = {
					text = 'This is <font size="50">big</font> and this is <font size="10">small</font>!',
					prefixText = '<font size="50">PrefixText</font>',
				}
			end)

			it("SHOULD properly escape rich text of message and prefix tag", function(c)
				local findFirstInstance = c.findFirstInstance
				local instance = findFirstInstance(c:mount().instance, { ClassName = "TextLabel" })
				expect(instance).never.toBeNil()

				local messageText = c.message.prefixText .. ": " .. c.message.text

				expect(instance.Text).toEqual(messageText)
			end)
		end)
	end)
end
