local Players = game:GetService("Players")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent

local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local ChatVisibility = ExperienceChat.ChatVisibility
local ChatTopBarButtonActivated = require(ChatVisibility.Actions.ChatTopBarButtonActivated)

local Actions = ExperienceChat.Actions
local IncomingMessageReceived = require(Actions.IncomingMessageReceived)

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

		it("SHOULD render Chat Window and Chat Input Bar depending on initial state", function(c)
			-- When state = { ChatVisibility = { isChatWindowVisible = false, isChatInputBarVisible = false} },
			-- then chatWindow and chatInputBar should not be rendered

			local initialState = {
				ChatVisibility = {
					isChatWindowVisible = false,
					isChatInputBarVisible = false,
				},
			}
			local mountResult = c.mount(initialState, c)
			expect(c.findFirstInstance(mountResult.instance, { Name = "chatWindow" })).toBeNil()
			expect(c.findFirstInstance(mountResult.instance, { Name = "chatInputBar" })).toBeNil()

			-- When state = { ChatVisibility = { isChatWindowVisible = true, isChatInputBarVisible = false} },
			-- then chatWindow should and chatInputBar should not be rendered
			initialState = {
				ChatVisibility = {
					isChatWindowVisible = true,
					isChatInputBarVisible = false,
				},
			}
			mountResult = c.mount(initialState, c)
			expect(c.findFirstInstance(mountResult.instance, { Name = "chatWindow" })).never.toBeNil()
			expect(c.findFirstInstance(mountResult.instance, { Name = "chatInputBar" })).toBeNil()

			-- When state = { ChatVisibility = { isChatWindowVisible = false, isChatInputBarVisible = true} },
			-- then chatWindow should not and chatInputBar should be rendered
			initialState = {
				ChatVisibility = {
					isChatWindowVisible = false,
					isChatInputBarVisible = true,
				},
			}
			mountResult = c.mount(initialState, c)
			expect(c.findFirstInstance(mountResult.instance, { Name = "chatWindow" })).toBeNil()
			expect(c.findFirstInstance(mountResult.instance, { Name = "chatInputBar" })).never.toBeNil()
			mountResult.unmount()
		end)

		it("SHOULD render chat messages depending on initial state", function(c)
			local initialState = {
				Messages = {
					inOrder = { "id1" },
					byMessageId = {
						id1 = {
							prefixText = "prefixText",
							text = "text",
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

			expect(c.findFirstInstance(mountResult.instance, { Name = "chatWindow" })).never.toBeNil()
			expect(c.findFirstInstance(mountResult.instance, { Name = "chatInputBar" })).never.toBeNil()

			c.Roact.act(function()
				store:dispatch(ChatTopBarButtonActivated(false))
				wait()
			end)

			expect(c.findFirstInstance(mountResult.instance, { Name = "chatWindow" })).toBeNil()
			expect(c.findFirstInstance(mountResult.instance, { Name = "chatInputBar" })).toBeNil()

			c.Roact.act(function()
				store:dispatch(ChatTopBarButtonActivated(true))
				wait()
			end)

			expect(c.findFirstInstance(mountResult.instance, { Name = "chatWindow" })).never.toBeNil()
			expect(c.findFirstInstance(mountResult.instance, { Name = "chatInputBar" })).never.toBeNil()
		end
	)

	describe("WHEN chat privacy setting is fetched AND IncomingMessageReceived is dispatched", function()
		beforeAll(function(c)
			c.mountAndDispatch = function(initialState)
				local mountResult = c.mount(initialState, c)
				local store = mountResult.store

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
			local initialState = {
				CanLocalUserChat = {
					byFetchPrivacySettingsSuccess = true,
					byFetchPrivacySettingsFailed = false,
				},
			}
			local mountResult = c.mountAndDispatch(initialState)
			local chatWindow = c.findFirstInstance(mountResult.instance, { Name = "chatWindow" })

			expect(c.findFirstInstance(chatWindow, { Text = "player: text" })).never.toBeNil()
		end)

		it("SHOULD NOT render chat messages when user has chat privacy setting disabled", function(c)
			local initialState = {
				CanLocalUserChat = {
					byFetchPrivacySettingsSuccess = false,
					byFetchPrivacySettingsFailed = false,
				},
			}
			local mountResult = c.mountAndDispatch(initialState)
			expect(c.findFirstInstance(mountResult.instance, { Text = "player: text" })).toBeNil()
		end)

		it("SHOULD NOT render chat messages when chat privacy setting is fails to be fetched", function(c)
			local initialState = {
				CanLocalUserChat = {
					byFetchPrivacySettingsSuccess = false,
					byFetchPrivacySettingsFailed = true,
				},
			}
			local mountResult = c.mountAndDispatch(initialState)
			expect(c.findFirstInstance(mountResult.instance, { Text = "player: text" })).toBeNil()
		end)
	end)

	it("SHOULD scroll down to the most recent message automatically when user does not scroll", function(c)
		local initialState = {
			CanLocalUserChat = {
				byFetchPrivacySettingsSuccess = true,
				byFetchPrivacySettingsFailed = false,
			},
		}
		local mountResult = c.mount(initialState, c)
		local store = mountResult.store
		local scrollingFrame = c.findFirstInstance(mountResult.instance, { ClassName = "ScrollingFrame" })
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
	end)
end
