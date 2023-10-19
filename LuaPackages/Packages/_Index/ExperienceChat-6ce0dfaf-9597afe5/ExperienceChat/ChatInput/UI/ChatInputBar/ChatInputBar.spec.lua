local TextChatService = game:GetService("TextChatService")
local UserInputService = game:GetService("UserInputService")
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local ReactRoblox = require(Packages.ReactRoblox)
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local jest = globals.jest

local Roact = require(Packages.Roact)

return function()
	beforeAll(function(rootContext)
		local storyDefinition = require(script.Parent:FindFirstChild("ChatInputBar.story"))

		rootContext.mount = function(c)
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
					onFocus = function() end,
					onUnfocus = function() end,
					size = UDim2.fromScale(1, 1),
					onSendChat = callback,
					disabledChatPlaceholderText = c.disabledChatPlaceholderText,
					controls = {
						canLocalUserChat = c.canLocalUserChat,
						messageCharacterLimit = c.messageCharacterLimit,
					},
					focusChatHotKeyActivated = function() end,
					targetTextChannel = c.targetTextChannel,
					activated = c.activated,
					results = c.results,
					autocompleteType = c.autocompleteType,
					autocompleteDropdownActivated = function() end,
					autocompleteDropdownResultsChanged = function() end,
					autocompleteDropdownSelectionChanged = function() end,
					autocompleteDropdownTypeChanged = function() end,
					autocompleteDropdownDeactivated = function() end,
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
			c.messageCharacterLimit = 200
			c.results = {}
			c.chatInputBarConfiguration = TextChatService:FindFirstChildOfClass("ChatInputBarConfiguration")
		end)

		beforeEach(function(c)
			local findFirstInstance = c.findFirstInstance
			c.mountResult = c:mount()
			c.instance = findFirstInstance(c.mountResult.instance, { ClassName = "TextBox" })
			c.textBox = c.Rhodium.Element.new(c.instance)
		end)

		afterEach(function(c)
			c.mountResult.unmount()
		end)

		it("SHOULD focus on ChatInputBar's text box when text box is clicked", function(c)
			-- ChatInputBar should not be focused on startup
			expect(c.instance:IsFocused()).toEqual(false)
			expect(c.chatInputBarConfiguration.IsFocused).toEqual(false)

			Roact.act(function()
				c.textBox:click()
				wait()
			end)

			expect(c.instance:IsFocused()).toEqual(true)
			expect(c.chatInputBarConfiguration.IsFocused).toEqual(true)

			c.mountResult.unmount()
		end)

		it("SHOULD focus on ChatInputBar's text box when slash is pressed", function(c)
			Roact.act(function()
				c.Rhodium.VirtualInput.Keyboard.pressKey(Enum.KeyCode.Slash)
				c.Rhodium.VirtualInput.Keyboard.releaseKey(Enum.KeyCode.Slash)
				wait()
			end)

			expect(c.instance).toHaveProperty("Text", "")
			expect(c.instance:IsFocused()).toEqual(true)

			c.mountResult.unmount()
		end)

		it(
			"SHOULD be able to connect change in ChatInputBarConfiguration.IsFocused to a PropertyChangedSignal",
			function(c)
				local isUserFocused: boolean?
				c.chatInputBarConfiguration:GetPropertyChangedSignal("IsFocused"):Connect(function()
					isUserFocused = c.chatInputBarConfiguration.IsFocused
				end)

				Roact.act(function()
					c.textBox:click()
					wait()
				end)

				expect(isUserFocused).toEqual(true)

				Roact.act(function()
					c.textBox:sendKey(Enum.KeyCode.Return)
					wait()
				end)

				expect(isUserFocused).toEqual(false)

				c.mountResult.unmount()
			end
		)

		it("SHOULD fire UserInputService.TextBoxFocused", function(c)
			local fired = false
			local conn = UserInputService.TextBoxFocused:Connect(function()
				fired = true
			end)

			Roact.act(function()
				c.textBox:click()
				task.wait()
			end)

			expect(fired).toEqual(true)
			c.mountResult.unmount()
			conn:Disconnect()
		end)

		it("SHOULD fire UserInputService.TextBoxFocusReleased", function(c)
			local fired = false
			local conn = UserInputService.TextBoxFocusReleased:Connect(function()
				fired = true
			end)

			Roact.act(function()
				c.textBox:click()
				task.wait()
				c.textBox:sendKey(Enum.KeyCode.KeypadEnter)
				task.wait()
			end)

			expect(fired).toEqual(true)

			c.mountResult.unmount()
			conn:Disconnect()
		end)
	end)

	describe("WHEN typing in ChatInputBar", function()
		beforeAll(function(context)
			context.canLocalUserChat = true
			context.messageCharacterLimit = 200

			context.sendMessage = function(c, message)
				c.mountResult = c:mount()

				local textBoxInstance = c.findFirstInstance(c.mountResult.instance, { ClassName = "TextBox" })
				c.textBox = c.Rhodium.Element.new(textBoxInstance)

				c.Roact.act(function()
					c.textBox:click()
					task.wait()
					textBoxInstance.Text = message
					task.wait()
					textBoxInstance.CursorPosition = #message + 1
					task.wait()
				end)

				local sendButtonInstance = c.findFirstInstance(c.mountResult.instance, { Name = "SendButton" })
				c.sendButton = c.Rhodium.Element.new(sendButtonInstance)
			end
		end)

		describe("WHEN sending message", function()
			beforeAll(function(c)
				c.results = {}
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
				c.results = {}
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
				end)

				expect(c.mountResult.callback).toHaveReturnedWith("some message")
			end)
		end)

		describe("GIVEN message string with only spaces", function()
			beforeEach(function(c)
				c.results = {}
				c:sendMessage("   ")
			end)
			afterEach(function(c)
				c.mountResult.unmount()
			end)

			it("SHOULD not have called the onSendChat callback", function(c)
				c.Roact.act(function()
					c.textBox:sendKey(Enum.KeyCode.KeypadEnter)
					wait()
				end)

				expect(c.mountResult.callback).never.toHaveBeenCalled()
			end)
		end)

		describe("GIVEN message that is just a colon", function()
			beforeEach(function(c)
				c.activated = false
				c.results = {}
				c.autocompleteType = "emojis"
				c:sendMessage(":")
			end)

			afterEach(function(c)
				c.mountResult.unmount()
			end)

			it("SHOULD not cause the emoji autocomplete dropdown to be visible", function(c)
				local autocompleteDropdown = c.textBox:getRbxInstance():FindFirstAncestor("story").AutocompleteDropdown
				expect(autocompleteDropdown.Visible).toBe(false)
			end)
		end)

		describe("GIVEN message that starts with a colon and has set activated to true", function()
			beforeEach(function(c)
				c.activated = true
				c.results = { "smile", "smile-cat", "smiley", "smiley-cat" }
				c.autocompleteType = "emojis"
				c:sendMessage(":smile")
			end)

			afterEach(function(c)
				c.mountResult.unmount()
			end)
			it("SHOULD cause the emoji dropdown to be visible once non-space characteres are added", function(c)
				local autocompleteDropdown = c.textBox:getRbxInstance():FindFirstAncestor("story").AutocompleteDropdown
				expect(autocompleteDropdown.Visible).toBe(true)
			end)

			describe("GIVEN that the dropdown is open", function()
				it("SHOULD remain focused if user presses escape", function(c)
					expect(c.textBox:getRbxInstance()).toHaveProperty("CursorPosition", 7)

					c.Roact.act(function()
						c.textBox:sendKey(Enum.KeyCode.Escape)
						wait()
					end)

					expect(c.textBox:getRbxInstance()).toHaveProperty("CursorPosition", 7)
				end)

				it("SHOULD unfocus if user clicks outside of the dropdown", function(c)
					expect(c.textBox:getRbxInstance()).toHaveProperty("CursorPosition", 7)

					local instance = c.findFirstInstance(
						c.mountResult.instance,
						{ ClassName = "Frame", Name = "AutocompleteDropdown" }
					)
					ReactRoblox.act(function()
						c.Rhodium.VirtualInput.Mouse.click(instance.AbsolutePosition + Vector2.new(200, 200))
						wait(1)
					end)

					expect(c.textBox:getRbxInstance()).toHaveProperty("CursorPosition", -1)
				end)

				it("SHOULD insert the selected emoji when the user presses enter", function(c)
					expect(c.textBox:getRbxInstance()).toHaveProperty("Text", ":smile")
					expect(c.textBox:getRbxInstance()).toHaveProperty("CursorPosition", 7)

					c.Roact.act(function()
						c.textBox:sendKey(Enum.KeyCode.KeypadEnter)
						wait()
					end)

					expect(c.textBox:getRbxInstance()).toHaveProperty("Text", "\u{1F604}")
				end)

				it("SHOULD insert the selected emoji when the user presses return", function(c)
					expect(c.textBox:getRbxInstance()).toHaveProperty("Text", ":smile")
					expect(c.textBox:getRbxInstance()).toHaveProperty("CursorPosition", 7)

					c.Roact.act(function()
						c.textBox:sendKey(Enum.KeyCode.Return)
						wait()
					end)

					expect(c.textBox:getRbxInstance()).toHaveProperty("Text", "\u{1F604}")
				end)
			end)
		end)

		describe("GIVEN message with the cursor position mid-text", function()
			beforeEach(function(c)
				c.activated = true
				c.results = { "smile", "smile-cat", "smiley", "smiley-cat" }
				c.autocompleteType = "emojis"
				c:sendMessage("hey :smile!")
				local textBoxInstance = c.findFirstInstance(c.mountResult.instance, { ClassName = "TextBox" })
				c.Roact.act(function()
					textBoxInstance.CursorPosition = 11
					task.wait()
				end)
			end)

			afterEach(function(c)
				c.mountResult.unmount()
			end)

			it("SHOULD insert the selected emoji mid-text when the user presses enter", function(c)
				expect(c.textBox:getRbxInstance()).toHaveProperty("Text", "hey :smile!")
				expect(c.textBox:getRbxInstance()).toHaveProperty("CursorPosition", 11)

				c.Roact.act(function()
					c.textBox:sendKey(Enum.KeyCode.KeypadEnter)
					wait()
				end)

				expect(c.textBox:getRbxInstance()).toHaveProperty("Text", "hey \u{1F604}!")
			end)

			it("SHOULD insert the selected emoji mid-text when the user presses return", function(c)
				expect(c.textBox:getRbxInstance()).toHaveProperty("Text", "hey :smile!")
				expect(c.textBox:getRbxInstance()).toHaveProperty("CursorPosition", 11)

				c.Roact.act(function()
					c.textBox:sendKey(Enum.KeyCode.Return)
					wait()
				end)

				expect(c.textBox:getRbxInstance()).toHaveProperty("Text", "hey \u{1F604}!")
			end)
		end)

		describe("GIVEN a message that is just a slash with commands added", function()
			beforeEach(function(c)
				c.activated = true
				c.results = { "/test" }
				c.autocompleteType = "commands"
				local instance = Instance.new("TextChatCommand")
				instance.PrimaryAlias = "/test"
				instance.Parent = TextChatService
				c:sendMessage("/")
			end)

			afterEach(function(c)
				c.mountResult.unmount()
			end)

			it("SHOULD cause the dropdown to open", function(c)
				local autocompleteDropdown = c.textBox:getRbxInstance():FindFirstAncestor("story").AutocompleteDropdown
				expect(autocompleteDropdown.Visible).toBe(true)
			end)

			it("SHOULD insert the selected commmand when the user presses enter", function(c)
				expect(c.textBox:getRbxInstance()).toHaveProperty("Text", "/")

				c.Roact.act(function()
					c.textBox:sendKey(Enum.KeyCode.KeypadEnter)
					wait()
				end)

				expect(c.textBox:getRbxInstance()).toHaveProperty("Text", "/test")
			end)
		end)
	end)

	describe("WHEN typing a message over the character limit", function()
		beforeAll(function(context)
			context.canLocalUserChat = true
			-- Setting the character limit for each message to be 1
			context.messageCharacterLimit = 1
			context.results = {}

			context.typeMessage = function(c, message)
				c.Roact.act(function()
					c.textBox:click()
					task.wait()
					c.textBoxInstance.Text = message
					task.wait()
				end)
			end
		end)

		it("SHOULD not exceed the message character limit", function(c)
			c.mountResult = c:mount()
			c.textBoxInstance = c.findFirstInstance(c.mountResult.instance, { ClassName = "TextBox" })
			c.textBox = c.Rhodium.Element.new(c.textBoxInstance)

			c:typeMessage("aa")
			expect(c.textBox:getRbxInstance()).toHaveProperty("Text", "")
			c.mountResult.unmount()
		end)

		it("SHOULD keep current text when trying to type more than character limit", function(c)
			c.mountResult = c:mount()
			c.textBoxInstance = c.findFirstInstance(c.mountResult.instance, { ClassName = "TextBox" })
			c.textBox = c.Rhodium.Element.new(c.textBoxInstance)

			c:typeMessage("a")
			expect(c.textBox:getRbxInstance()).toHaveProperty("Text", "a")

			c:typeMessage("bb")
			expect(c.textBox:getRbxInstance()).toHaveProperty("Text", "a")
			c.mountResult.unmount()
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
			c.results = {}
			c.mountResult = c:mount()

			local textBoxInstance = c.findFirstInstance(c.mountResult.instance, { ClassName = "TextBox" })
			expect(textBoxInstance).toBeNil()

			local textLabelInstance = c.findFirstInstance(c.mountResult.instance, { Name = "DisabledPlaceholderLabel" })
			expect(textLabelInstance.Text).toEqual("Your chat settings prevent you from sending messages.")
			c.mountResult.unmount()
		end)
	end)

	describe("GIVEN a targetTextChannel", function()
		it("SHOULD render an invisible channel chip given targetTextChannel RBXGeneral", function(c)
			c.targetTextChannel = Instance.new("TextChannel")
			c.targetTextChannel.Name = "RBXGeneral"
			c.results = {}
			local result = c:mount()

			local channelChip = c.findFirstInstance(result.instance, { Name = "TargetChannelChip" })
			expect(channelChip.Visible).toEqual(false)
			result.unmount()
		end)

		it("SHOULD mount given targetTextChannel RBXWhisper", function(c)
			c.targetTextChannel = Instance.new("TextChannel")
			c.targetTextChannel.Name = "RBXTeam"
			c.results = {}
			local result = c:mount()
			assert(result, "Expected to mount")
			result.unmount()
		end)

		it("SHOULD render a visible channel chip with proper localization given targetTextChannel RBXTeam", function(c)
			c.targetTextChannel = Instance.new("TextChannel")
			c.targetTextChannel.Name = "RBXTeam"
			c.results = {}
			local result = c:mount()

			local channelChip = c.findFirstInstance(result.instance, { Name = "TargetChannelChip" })
			expect(channelChip.Text).toEqual("CoreScripts.TextChat.TeamChat.PrefixText")
			expect(channelChip.Visible).toEqual(true)
			result.unmount()
		end)
	end)
end
