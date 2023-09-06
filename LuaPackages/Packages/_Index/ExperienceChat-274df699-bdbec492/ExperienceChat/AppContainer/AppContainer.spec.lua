local Players = game:GetService("Players")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent

local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local ChatTopBarButtonActivated = require(ExperienceChat.Actions.ChatTopBarButtonActivated)

local Actions = ExperienceChat.Actions
local IncomingMessageReceived = require(Actions.IncomingMessageReceived)
local ChatPrivacySettingsReceived = require(Actions.ChatPrivacySettingsReceived)
local AvatarContextMenuWhisperSelected = require(Actions.AvatarContextMenuWhisperSelected)

local Dictionary = require(Packages.llama).Dictionary

return function()
	beforeAll(function(rootContext)
		local storyDefinition = require(script.Parent:FindFirstChild("AppContainer.story"))
		local installReducer = require(script.Parent.Parent.installReducer)
		rootContext.mount = function(initialState, context, createProps)
			createProps = createProps or function() end
			local Roact = context.Roact
			local storyMiddleware = context.storyMiddleware
			local instance = Instance.new("ScreenGui")
			instance.Parent = game:GetService("CoreGui")

			local store = context.Rodux.Store.new(installReducer, initialState, {
				context.Rodux.thunkMiddleware,
			})

			local tree = Roact.createElement(
				storyMiddleware(storyDefinition.story),
				Dictionary.join(createProps(context), { store = store })
			)
			local roactInstance = Roact.mount(tree, instance)
			return {
				instance = instance,
				unmount = function()
					Roact.unmount(roactInstance)
					instance:Destroy()
				end,
				store = store,
			}
		end
		rootContext.createDispatchBindableEvent = require(ExperienceChat.createDispatchBindableEvent)
		rootContext.SetCoreGuiEnabledChanged = require(ExperienceChat.Actions.SetCoreGuiEnabledChanged)
	end)

	it("SHOULD mount AppContainer properly", function(c)
		local mountResult = c.mount({}, c)
		expect(mountResult.instance).never.toBeNil()
		mountResult.unmount()
	end)

	describe("WHEN mounted", function()
		it("SHOULD render Chat Window and Chat Input Bar on default", function(c)
			local mountResult = c.mount({}, c)
			expect(c.findFirstInstance(mountResult.instance, { Name = "chatWindow" })).never.toBeNil()
			expect(c.findFirstInstance(mountResult.instance, { Name = "chatInputBar" })).never.toBeNil()
			mountResult.unmount()
		end)

		it("SHOULD render Chat Input Bar depending on initial state", function(c)
			local initialState = {
				ChatVisibility = {
					isChatInputBarEnabled = {
						value = true,
					},
					isChatWindowEnabled = {
						value = true,
					},
				},
			}

			initialState.ChatVisibility.isChatInputBarEnabled.value = true
			local mountResult = c.mount(initialState, c)
			expect(c.findFirstInstance(mountResult.instance, { Name = "chatInputBar" })).toHaveProperty("Visible", true)

			initialState.ChatVisibility.isChatInputBarEnabled.value = false
			mountResult = c.mount(initialState, c)
			expect(c.findFirstInstance(mountResult.instance, { Name = "chatInputBar" })).toHaveProperty(
				"Visible",
				false
			)
		end)

		it("SHOULD render Chat Window depending on initial state", function(c)
			local initialState = {
				ChatVisibility = {
					isChatInputBarEnabled = {
						value = true,
					},
					isChatWindowEnabled = {
						value = true,
					},
				},
			}

			initialState.ChatVisibility.isChatWindowEnabled.value = true
			local mountResult = c.mount(initialState, c)
			expect(c.findFirstInstance(mountResult.instance, { Name = "chatWindow" })).toHaveProperty("Visible", true)

			initialState.ChatVisibility.isChatWindowEnabled.value = false
			mountResult = c.mount(initialState, c)

			expect(c.findFirstInstance(mountResult.instance, { Name = "chatWindow" })).toHaveProperty("Visible", false)
		end)

		it("SHOULD render chat messages depending on initial state", function(c)
			local initialState = {
				Messages = {
					windowMessagesInOrder = { "id1" },
					byMessageId = {
						id1 = {
							prefixText = "prefixText",
							text = "text",
							isVisibleInChatWindow = true,
						},
					},
				},
			}
			local mountResult = c.mount(initialState, c)
			expect(c.findFirstInstance(mountResult.instance, { Text = "prefixText: text" })).never.toBeNil()
		end)
	end)

	it(
		"SHOULD toggle ChatVisibility and rendering of chatWindow and chatInputBar when ChatTopBarButtonActivated action is dispatched",
		function(c)
			local mountResult = c.mount({}, c)
			local store = mountResult.store

			expect(c.findFirstInstance(mountResult.instance, { Name = "chatWindow" })).toHaveProperty("Visible", true)
			expect(c.findFirstInstance(mountResult.instance, { Name = "chatInputBar" })).toHaveProperty("Visible", true)

			c.Roact.act(function()
				store:dispatch(ChatTopBarButtonActivated(false))
				wait()
			end)

			expect(c.findFirstInstance(mountResult.instance, { Name = "chatWindow" })).toHaveProperty("Visible", false)
			expect(c.findFirstInstance(mountResult.instance, { Name = "chatInputBar" })).toHaveProperty(
				"Visible",
				false
			)

			c.Roact.act(function()
				store:dispatch(ChatTopBarButtonActivated(true))
				wait()
			end)

			expect(c.findFirstInstance(mountResult.instance, { Name = "chatWindow" })).toHaveProperty("Visible", true)
			expect(c.findFirstInstance(mountResult.instance, { Name = "chatInputBar" })).toHaveProperty("Visible", true)
		end
	)

	describe("WHEN chat privacy setting is fetched AND IncomingMessageReceived is dispatched", function()
		beforeAll(function(c)
			c.mountAndDispatch = function(canLocalUserChat)
				local mountResult = c.mount({}, c)
				local store = mountResult.store
				store:dispatch(ChatPrivacySettingsReceived(canLocalUserChat))

				local textChatMessage = {
					TextChannel = {
						Name = "RBXGeneral",
					},
					TextSource = {
						UserId = Players.LocalPlayer.UserId,
					},
					MessageId = "mockMessageId",
					Text = "text",
					PrefixText = "player",
					Status = Enum.TextChatMessageStatus.Success,
				}

				c.Roact.act(function()
					store:dispatch(IncomingMessageReceived(textChatMessage))
					store:flush()
				end)

				return mountResult
			end
		end)

		it("SHOULD render chat messages when user has chat privacy setting enabled", function(c)
			local canLocalUserChat = true
			local mountResult = c.mountAndDispatch(canLocalUserChat)
			local chatWindow = c.findFirstInstance(mountResult.instance, { Name = "chatWindow" })

			expect(c.findFirstInstance(chatWindow, { Text = "player: text" })).never.toBeNil()
		end)

		it("SHOULD NOT render chat messages when user has chat privacy setting disabled", function(c)
			local canLocalUserChat = false
			local mountResult = c.mountAndDispatch(canLocalUserChat)
			expect(c.findFirstInstance(mountResult.instance, { Text = "player: text" })).toBeNil()
		end)
	end)

	it("SHOULD scroll down to the most recent message automatically when user does not scroll", function(c)
		local mountResult = c.mount({}, c)
		local store = mountResult.store
		store:dispatch(ChatPrivacySettingsReceived(true))

		local scrollingFrame =
			c.findFirstInstance(mountResult.instance, { ClassName = "ScrollingFrame", Name = "RCTScrollView" })
		expect(scrollingFrame).never.toBeNil()

		c.Roact.act(function()
			for i = 1, 20 do
				local textChatMessage = {
					TextChannel = {
						Name = "RBXGeneral",
					},
					TextSource = {
						UserId = Players.LocalPlayer.UserId,
					},
					PrefixText = "player",
					MessageId = "mockMessageId" .. tostring(i),
					Text = "text",
					Status = Enum.TextChatMessageStatus.Success,
				}
				store:dispatch(IncomingMessageReceived(textChatMessage))
			end

			wait()
		end)

		expect(scrollingFrame).never.toHaveProperty("CanvasPosition.Y", 0)

		-- make sure position is maintained even when chat window is closed and opened
		local function turnOnAndOffChat()
			c.Roact.act(function()
				local bindableEvent = c.createDispatchBindableEvent(store)
				c.Roact.act(function()
					bindableEvent:Fire(c.SetCoreGuiEnabledChanged(false))
					task.wait()
					task.wait()
					bindableEvent:Fire(c.SetCoreGuiEnabledChanged(true))
					task.wait()
					task.wait()
				end)
			end)
		end
		turnOnAndOffChat()
		expect(scrollingFrame).never.toHaveProperty("CanvasPosition.Y", 0)

		-- make sure position is maintained if set by user
		c.Roact.act(function()
			scrollingFrame.CanvasPosition = Vector2.new(0, 20)
		end)

		turnOnAndOffChat()
		expect(scrollingFrame).toHaveProperty("CanvasPosition.Y", 20)
	end)

	describe("WHEN a BindableEvent is dispatched", function()
		beforeAll(function(c)
			c.checkChatVisibilityState = function(store, isEnabled)
				expect(store:getState().ChatVisibility.isChatWindowEnabled.value).toEqual(isEnabled)
				expect(store:getState().ChatVisibility.isChatInputBarEnabled.value).toEqual(isEnabled)
			end
		end)

		it("SHOULD change the state according to the action dispatched", function(c)
			local mountResult = c.mount({}, c)
			local store = mountResult.store
			-- Expect Chat to be visible on default
			c.checkChatVisibilityState(store, true)
			local chatWindow = c.findFirstInstance(mountResult.instance, { Name = "chatWindow" })
			local chatInputBar = c.findFirstInstance(mountResult.instance, { Name = "chatInputBar" })
			expect(chatWindow).toHaveProperty("Visible", true)
			expect(chatInputBar).toHaveProperty("Visible", true)

			local bindableEvent = c.createDispatchBindableEvent(store)
			c.Roact.act(function()
				bindableEvent:Fire(c.SetCoreGuiEnabledChanged(false))
				task.wait()
				task.wait()
			end)
			c.checkChatVisibilityState(store, false)
			chatWindow = c.findFirstInstance(mountResult.instance, { Name = "chatWindow" })
			chatInputBar = c.findFirstInstance(mountResult.instance, { Name = "chatInputBar" })
			expect(chatWindow).toHaveProperty("Visible", false)
			expect(chatInputBar).toHaveProperty("Visible", false)

			c.Roact.act(function()
				bindableEvent:Fire(c.SetCoreGuiEnabledChanged(true))
				task.wait()
				task.wait()
			end)
			chatWindow = c.findFirstInstance(mountResult.instance, { Name = "chatWindow" })
			chatInputBar = c.findFirstInstance(mountResult.instance, { Name = "chatInputBar" })
			expect(chatWindow).toHaveProperty("Visible", true)
			expect(chatInputBar).toHaveProperty("Visible", true)
		end)
	end)

	describe("GIVEN avatarContextMenuWhisperSelected event", function()
		it("SHOULD properly focus on the textBox when called", function(c)
			local mountResult = c.mount({}, c)
			local store = mountResult.store

			c.Roact.act(function()
				store:dispatch(ChatPrivacySettingsReceived(true))
				task.wait()
				task.wait()
			end)
			local textBoxInstance = c.findFirstInstance(mountResult.instance, { ClassName = "TextBox" })
			expect(textBoxInstance:IsFocused()).toEqual(false)

			c.Roact.act(function()
				store:dispatch(AvatarContextMenuWhisperSelected())
				task.wait()
				task.wait()
			end)

			expect(textBoxInstance:IsFocused()).toEqual(true)
		end)
	end)
end
