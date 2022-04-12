local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local Timer = require(ExperienceChat.Timer)

local createStore = require(ExperienceChat.createStore)

return function()
	beforeAll(function(rootContext)
		local store = createStore()
		rootContext.store = store

		local storyDefinition = require(script.Parent:FindFirstChild("AppLayout.story"))
		rootContext.mount = rootContext.createMount(storyDefinition.story, function(c)
			return {
				store = store,
				controls = {
					isChatWindowVisible = c.isChatWindowVisible,
					isChatInputBarVisible = c.isChatInputBarVisible,
					timer = c.timer,
					textTimer = c.textTimer,
					messages = c.messages,
					canLocalUserChat = c.canLocalUserChat,
					sentMessageHz = 1,
				},
				timeSignal = c.timeBindableEvent.Event,
			}
		end)
	end)

	describe("GIVEN timeSignal", function()
		beforeAll(function(c)
			c.timeBindableEvent = Instance.new("BindableEvent")
		end)

		describe("WHEN isChatWindowVisible is true", function()
			beforeAll(function(c)
				c.isChatWindowVisible = true
			end)

			it("SHOULD mount ChatWindow", function(c)
				local result = c:mount()
				local chatWindow = c.findFirstInstance(result.instance, { Name = "chatWindow" })
				expect(chatWindow).never.toBeNil()
			end)
		end)

		describe("WHEN isChatWindowVisible is false", function()
			beforeAll(function(c)
				c.isChatWindowVisible = false
			end)

			it("SHOULD NEVER mount ChatWindow", function(c)
				local result = c:mount()
				local chatWindow = c.findFirstInstance(result.instance, { Name = "chatWindow" })
				expect(chatWindow).toBeNil()
			end)
		end)

		describe("WHEN isChatInputBarVisible is true", function()
			beforeAll(function(c)
				c.isChatInputBarVisible = true
			end)

			it("SHOULD mount ChatInputBar", function(c)
				local result = c:mount()
				local chatInputBar = c.findFirstInstance(result.instance, { Name = "chatInputBar" })
				expect(chatInputBar).never.toBeNil()
			end)
		end)

		describe("WHEN isChatInputBarVisible is false", function()
			beforeAll(function(c)
				c.isChatInputBarVisible = false
			end)

			it("SHOULD NEVER mount ChatInputBar", function(c)
				local result = c:mount()
				local chatInputBar = c.findFirstInstance(result.instance, { Name = "chatInputBar" })
				expect(chatInputBar).toBeNil()
			end)
		end)

		-- @TODO EXPCHAT-67 this test case should be added back when team channels can be created in
		--[[ 		describe(
			"WHEN chat is enabled in privacy settings, GIVEN targetChannelDisplayName and backspace is pressed",
			function()
				beforeAll(function(c)
					c.isChatInputBarVisible = true
					c.targetChannelDisplayName = "{Team}"
					-- Since this test will test a keystroke (backspace), this would only happen when user's chat setting is turn on.
					c.canLocalUserChat = true
				end)

				beforeEach(function(c)
					c.mountResult = c:mount()
					c.chatInputBar = c.findFirstInstance(c.mountResult.instance, { Name = "chatInputBar" })
					c.targetChannelLabel = c.findFirstInstance(c.mountResult.instance, { Name = "TargetChannel" })
					c.textBox = c.findFirstInstance(c.mountResult.instance, { ClassName = "TextBox" })

					expect(c.targetChannelLabel).never.toBeNil()
					expect(c.targetChannelLabel.Text).toEqual("{Team}")

					c.textBoxElement = c.Rhodium.Element.new(c.textBox)
					c.textBoxElement:click()
				end)

				afterEach(function(c)
					c.mountResult.unmount()
				end)

				it("SHOULD delete target channel when message is empty", function(c)
					expect(c.targetChannelLabel).toHaveProperty("Visible", true)
					c.textBoxElement:sendKey(Enum.KeyCode.Backspace)
					wait()
					expect(c.targetChannelLabel).toHaveProperty("Visible", false)
				end)

				it("SHOULD properly handle target channel when message is a single character", function(c)
					-- Type some tex† into the textbox
					c.textBoxElement:sendText("a")
					wait()

					expect(c.textBox).toHaveProperty("Text", "a")
					expect(c.targetChannelLabel).toHaveProperty("Visible", true)

					-- Press backspace once
					c.textBoxElement:sendKey(Enum.KeyCode.Backspace)
					wait()

					expect(c.textBox).toHaveProperty("Text", "")
					expect(c.targetChannelLabel).toHaveProperty("Visible", true)

					-- Press backspace again on an empty message
					c.textBoxElement:sendKey(Enum.KeyCode.Backspace)
					wait()

					expect(c.textBox).toHaveProperty("Text", "")
					expect(c.targetChannelLabel).toHaveProperty("Visible", false)
				end)

				it("SHOULD properly handle target channel when message is a long string", function(c)
					-- Type some tex† into the textbox
					c.textBoxElement:sendText("Hello I'm a message")
					wait()

					expect(c.textBox).toHaveProperty("Text", "Hello I'm a message")
					expect(c.targetChannelLabel).toHaveProperty("Visible", true)

					-- Delete the entire message
					for _ = 1, #c.textBox.Text do
						c.textBoxElement:sendKey(Enum.KeyCode.Backspace)
						wait()
						expect(c.targetChannelLabel).toHaveProperty("Visible", true)
					end

					-- Press backspace on the empty message
					c.textBoxElement:sendKey(Enum.KeyCode.Backspace)
					wait()

					expect(c.textBox).toHaveProperty("Text", "")
					expect(c.targetChannelLabel).toHaveProperty("Visible", false)
				end)
			end
		) ]]
	end)

	describe("GIVEN timer and default chat window,inputbar, and textbox tranparencies", function()
		beforeAll(function(c)
			c.timeBindableEvent = Instance.new("BindableEvent")
			c.timer = Timer.new(0)

			c.DEFAULT_CHAT_WINDOW_TRANSPARENCY = 0.3
			c.DEFAULT_CHAT_INPUT_BAR_TRANSPARENCY = 0.3
			c.DEFAULT_CHAT_INPUT_TEXTBOX_TRANSPARENCY = 0.5
			c.DEFAULT_TRANSPARENCIES = {
				c.DEFAULT_CHAT_WINDOW_TRANSPARENCY,
				c.DEFAULT_CHAT_INPUT_BAR_TRANSPARENCY,
				c.DEFAULT_CHAT_INPUT_TEXTBOX_TRANSPARENCY,
			}
			c.FULLY_TRANSPARENT = { 1, 1, 1 }

			c.checkComponentEquality = function(testComponents, expectedValues)
				expect(testComponents[1].BackgroundTransparency).toBeCloseTo(expectedValues[1])
				expect(testComponents[2].BackgroundTransparency).toBeCloseTo(expectedValues[2])
				expect(testComponents[3].TextTransparency).toBeCloseTo(expectedValues[3])
			end
		end)

		describe("GIVEN whether user enabled chat in privacy settings", function()
			afterEach(function(c)
				local result = c:mount()
				-- Should be visible with inital transparency at startup
				local chatInputName = c.canLocalUserChat and "TextBox" or "DisabledPlaceholderLabel"
				local chatWindow = c.findFirstInstance(result.instance, { Name = "chatWindow" })
				local chatInputBar = c.findFirstInstance(result.instance, { Name = "chatInputBar" })
				local chatInputText = c.findFirstInstance(chatInputBar, { Name = chatInputName })
				local testComponents = { chatWindow, chatInputBar, chatInputText }
				c.checkComponentEquality(testComponents, c.DEFAULT_TRANSPARENCIES)

				wait(1)
				-- After the timer ends, the chat should become fully transparent over 1 second
				c.checkComponentEquality(testComponents, c.FULLY_TRANSPARENT)

				-- Moving the mouse into the chat window should reset the transparencies
				c.Rhodium.VirtualInput.Mouse.mouseMove(chatWindow.AbsolutePosition + Vector2.new(10, 10))
				wait(1)
				c.checkComponentEquality(testComponents, c.DEFAULT_TRANSPARENCIES)

				-- Moving the mouse away from the chat should make the chat transparent
				c.Rhodium.VirtualInput.Mouse.mouseMove(chatWindow.AbsolutePosition + Vector2.new(500, 500))
				wait(1)
				-- After the timer ends, the chat should become fully transparent over 1 second
				c.checkComponentEquality(testComponents, c.FULLY_TRANSPARENT)

				-- Moving the mouse into the chat input bar should reset the transparencies
				c.Rhodium.VirtualInput.Mouse.mouseMove(chatInputBar.AbsolutePosition + Vector2.new(5, 5))
				wait(1)
				c.checkComponentEquality(testComponents, c.DEFAULT_TRANSPARENCIES)

				result.unmount()
			end)

			it("SHOULD correctly fade in and out when moving over instance when chat is enabled", function(c)
				c.canLocalUserChat = true
			end)

			it("SHOULD correctly fade in and out when moving over instance when chat is not enabled", function(c)
				c.canLocalUserChat = false
			end)
		end)

		it("SHOULD not fade out when user clicks textbox", function(c)
			-- canLocalUserChat must be true because it is not possible to click on the textbox when canLocalUserChat is false.
			c.canLocalUserChat = true
			local result = c:mount()
			local chatInputTextBox = c.findFirstInstance(result.instance, { Name = "TextBox" })
			local chatWindow = c.findFirstInstance(result.instance, { Name = "chatWindow" })

			local textBoxElement = c.Rhodium.Element.new(chatInputTextBox)
			textBoxElement:click()

			wait(1)
			expect(chatWindow.BackgroundTransparency).toBeCloseTo(c.DEFAULT_CHAT_WINDOW_TRANSPARENCY)
			result.unmount()
		end)
	end)

	describe("GIVEN timer and default text, text-stroke transparencies", function()
		beforeAll(function(c)
			c.timeBindableEvent = Instance.new("BindableEvent")
			c.timer = Timer.new(math.huge)
			c.textTimer = Timer.new(0)
			c.canLocalUserChat = true

			c.DEFAULT_CHAT_TEXT_TRANSPARENCY = 0
			c.DEFAULT_TEXT_STROKE_TRANSPARENCY = 0.5
			c.DEFAULT_TEXT_TRANSPARENCIES = {
				c.DEFAULT_CHAT_TEXT_TRANSPARENCY,
				c.DEFAULT_TEXT_STROKE_TRANSPARENCY,
			}

			c.FULLY_TRANSPARENT = { 1, 1 }

			c.checkComponentEquality = function(component, expectedValues)
				expect(component.TextTransparency).toBeCloseTo(expectedValues[1])
				expect(component.TextStrokeTransparency).toBeCloseTo(expectedValues[2])
			end
		end)

		it("SHOULD correctly fade messages in and out when hovering over chat window and input bar", function(c)
			local result = c:mount()
			local chatWindow = c.findFirstInstance(result.instance, { Name = "chatWindow" })
			local chatInputBar = c.findFirstInstance(result.instance, { Name = "chatInputBar" })

			-- pass the time and update the store so a message will appear
			c.Roact.act(function()
				c.timeBindableEvent:Fire(1)
				c.store:flush()
			end)

			-- Should be visible with initial transparency at startup
			local scrollingFrame = c.findFirstInstance(result.instance, { ClassName = "ScrollingFrame" })
			local message = c.findFirstInstance(scrollingFrame, { ClassName = "TextLabel" })
			assert(message, "Could not find any messages in scrolling frame!")
			c.checkComponentEquality(message, c.DEFAULT_TEXT_TRANSPARENCIES)

			wait(1)
			-- Messages should fade out after inactivity
			c.checkComponentEquality(message, c.FULLY_TRANSPARENT)

			-- Hovering over chat window should fade in the messages
			c.Rhodium.VirtualInput.Mouse.mouseMove(chatWindow.AbsolutePosition + Vector2.new(10, 10))
			wait(1)
			c.checkComponentEquality(message, c.DEFAULT_TEXT_TRANSPARENCIES)

			-- Moving away will reset transparencies again
			c.Rhodium.VirtualInput.Mouse.mouseMove(chatWindow.AbsolutePosition + Vector2.new(500, 500))
			wait(1)
			-- Hovering over chat input bar should fade in the messages
			c.Rhodium.VirtualInput.Mouse.mouseMove(chatInputBar.AbsolutePosition + Vector2.new(10, 10))
			wait(1)
			c.checkComponentEquality(message, c.DEFAULT_TEXT_TRANSPARENCIES)

			result.unmount()
		end)

		it("SHOULD not fade out when user clicks textbox", function(c)
			local result = c:mount()
			local chatInputTextBox = c.findFirstInstance(result.instance, { Name = "TextBox" })
			local scrollingFrame = c.findFirstInstance(result.instance, { ClassName = "ScrollingFrame" })
			local message = c.findFirstInstance(scrollingFrame, { ClassName = "TextLabel" })

			local textBoxElement = c.Rhodium.Element.new(chatInputTextBox)
			textBoxElement:click()

			wait(1)
			c.checkComponentEquality(message, c.DEFAULT_TEXT_TRANSPARENCIES)

			result.unmount()
		end)
	end)
end
