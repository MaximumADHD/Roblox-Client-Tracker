local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local jest = globals.jest

return function()
	beforeAll(function(rootContext)
		local storyDefinition = require(script.Parent:FindFirstChild("ChatInputBar.story"))
		rootContext.mount = function(c)
			local Roact = c.Roact
			local storyMiddleware = c.storyMiddleware
			local instance = Instance.new("ScreenGui")
			instance.Parent = game:GetService("CoreGui")

			local callback = jest.fn(function(message)
				return message
			end)
			local tree = Roact.createElement("Frame", {
				Size = UDim2.new(0, 100, 0, 100),
			}, {
				story = Roact.createElement(storyMiddleware(storyDefinition.story), {
					size = UDim2.fromScale(1, 1),
					onSendChat = callback,
					disabledChatPlaceholderText = c.disabledChatPlaceholderText,
					controls = {
						canLocalUserChat = c.canLocalUserChat,
					},
				}),
			})
			local roactInstance = Roact.mount(tree, instance)
			return {
				instance = instance,
				unmount = function()
					Roact.unmount(roactInstance)
					instance:Destroy()
				end,
				callback = callback,
			}
		end
	end)

	describe("WHEN attempting to change ChatInputBar's focus", function()
		beforeAll(function(c)
			-- canLocalUserChat must be true because it is not possible to click on the textbox when canLocalUserChat is false.
			c.canLocalUserChat = true
		end)

		beforeEach(function(c)
			local findFirstInstance = c.findFirstInstance
			c.mountResult = c:mount()
			c.instance = findFirstInstance(c.mountResult.instance, { ClassName = "TextBox" })
			c.textBox = c.Rhodium.Element.new(c.instance)
		end)

		it("SHOULD focus on ChatInputBar's text box when text box is clicked", function(c)
			c.textBox:click()

			expect(c.instance:IsFocused()).toEqual(true)

			c.mountResult.unmount()
		end)

		it("SHOULD focus on ChatInputBar's text box when slash is pressed", function(c)
			c.Rhodium.VirtualInput.Keyboard.pressKey(Enum.KeyCode.Slash)
			c.Rhodium.VirtualInput.Keyboard.releaseKey(Enum.KeyCode.Slash)
			wait()

			expect(c.instance:IsFocused()).toEqual(true)

			c.mountResult.unmount()
		end)
	end)

	describe("WHEN typing in ChatInputBar", function()
		beforeAll(function(context)
			context.canLocalUserChat = true

			context.sendMessage = function(c, message)
				c.mountResult = c:mount()

				local textBoxInstance = c.findFirstInstance(c.mountResult.instance, { ClassName = "TextBox" })
				c.textBox = c.Rhodium.Element.new(textBoxInstance)

				c.Roact.act(function()
					c.textBox:click()
					textBoxInstance.Text = message
				end)

				local sendButtonInstance = c.findFirstInstance(c.mountResult.instance, { ClassName = "TextButton" })
				c.sendButton = c.Rhodium.Element.new(sendButtonInstance)
			end
		end)

		describe("WHEN sending message", function()
			beforeAll(function(c)
				c:sendMessage("blah blah blah")
				c.Roact.act(function()
					c.textBox:sendKey(Enum.KeyCode.Return)
					wait()
				end)
			end)

			afterAll(function(c)
				c.mountResult.unmount()
			end)

			it("SHOULD clear the message in the chat input box after the message is sent", function(c)
				expect(c.textBox:getRbxInstance()).toHaveProperty("Text", "")
			end)

			it("SHOULD NOT be focused on the text box anymore", function(c)
				expect(c.textBox:getRbxInstance()).toHaveProperty("CursorPosition", -1)
			end)
		end)

		describe("GIVEN basic message string", function()
			beforeEach(function(c)
				c:sendMessage("some message")
			end)

			afterEach(function(c)
				c.mountResult.unmount()
			end)

			it("SHOULD send the chat message when enter key is pressed", function(c)
				c.Roact.act(function()
					c.textBox:sendKey(Enum.KeyCode.KeypadEnter)
					wait()
				end)

				expect(c.mountResult.callback).toHaveReturnedWith("some message")
			end)

			it("SHOULD send the chat message when return key is pressed", function(c)
				c.Roact.act(function()
					c.textBox:sendKey(Enum.KeyCode.Return)
					wait()
				end)

				expect(c.mountResult.callback).toHaveReturnedWith("some message")
			end)

			it("SHOULD send the chat message when send button is pressed", function(c)
				c.Roact.act(function()
					c.sendButton:click()
					wait()
				end)

				expect(c.mountResult.callback).toHaveReturnedWith("some message")
			end)
		end)

		describe("GIVEN message string with rich text tags", function()
			beforeEach(function(c)
				c:sendMessage("<b>hello world</b>")
			end)

			afterEach(function(c)
				c.mountResult.unmount()
			end)

			it("SHOULD escape chat message when enter key is pressed", function(c)
				c.Roact.act(function()
					c.textBox:sendKey(Enum.KeyCode.KeypadEnter)
					wait()
				end)

				expect(c.mountResult.callback).toHaveReturnedWith("&lt;b&gt;hello world&lt;/b&gt;")
			end)
		end)

		describe("GIVEN message string with ampersand", function()
			beforeEach(function(c)
				c:sendMessage("Tom & Jerry")
			end)

			afterEach(function(c)
				c.mountResult.unmount()
			end)

			it("SHOULD escape chat message when enter key is pressed", function(c)
				c.textBox:sendKey(Enum.KeyCode.KeypadEnter)
				wait()

				expect(c.mountResult.callback).toHaveReturnedWith("Tom &amp; Jerry")
			end)
		end)

		describe("GIVEN message string with heart ascii", function()
			beforeEach(function(c)
				c:sendMessage("<3")
			end)

			afterEach(function(c)
				c.mountResult.unmount()
			end)

			it("SHOULD escape chat message when enter key is pressed", function(c)
				c.Roact.act(function()
					c.textBox:sendKey(Enum.KeyCode.KeypadEnter)
					wait()
				end)

				expect(c.mountResult.callback).toHaveReturnedWith("&lt;3")
			end)
		end)
	end)

	-- @TODO EXPCHAT-67 this test case should be added back when team channels can be created in
	--[[ 	describe("GIVEN targetChannelDisplayName", function()
		beforeAll(function(c)
			-- canLocalUserChat must be true because there can be no channel name if canLocalUserChat is false.
			c.canLocalUserChat = true
			c.targetChannelDisplayName = "{Team}"
			c.mountResult = c:mount()

			c.channelDisplayInstance = c.findFirstInstance(c.mountResult.instance, { Text = "{Team}" })
			c.textBoxInstance = c.findFirstInstance(c.mountResult.instance, { ClassName = "TextBox" })
			assert(c.channelDisplayInstance, "did not mount targetChannelDisplayName element!")
		end)

		it("SHOULD NEVER overlap the channel display and text box", function(c)
			expect(c.channelDisplayInstance).never.toIntersect(c.textBoxInstance)
		end)

		it("SHOULD expand the channel area to fit the entire text", function(c)
			expect(c.channelDisplayInstance).toHaveProperty("TextFits", true)
		end)

		it("SHOULD wrap the chat input bar to fit the entire placeholder text", function(c)
			expect(c.textBoxInstance).toHaveProperty("TextFits", true)
		end)
	end) ]]

	describe("GIVEN user set ChatPrivacy settings to No One", function()
		it("SHOULD show the appropriate placeholder text", function(c)
			c.disabledChatPlaceholderText = "Your chat settings prevent you from sending messages."
			c.canLocalUserChat = false
			c.mountResult = c:mount()

			local textBoxInstance = c.findFirstInstance(c.mountResult.instance, { ClassName = "TextBox" })
			expect(textBoxInstance).toBeNil()

			local textLabelInstance = c.findFirstInstance(c.mountResult.instance, { Name = "DisabledPlaceholderLabel" })
			expect(textLabelInstance.Text).toEqual("Your chat settings prevent you from sending messages.")
		end)
	end)
end
