local TextChatService = game:GetService("TextChatService")

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
			c.timer = Timer.new(0)
		end)

		describe("WHEN isChatWindowVisible is true", function()
			beforeAll(function(c)
				c.isChatWindowVisible = true
			end)

			it("SHOULD mount ChatWindow as visible", function(c)
				local result = c:mount()
				local chatWindow = c.findFirstInstance(result.instance, { Name = "chatWindow" })
				expect(chatWindow).toHaveProperty("Visible", true)
				result.unmount()
			end)

			local chatWindowConfiguration = TextChatService:FindFirstChildOfClass("ChatWindowConfiguration")
			if chatWindowConfiguration then
				it("SHOULD report proper ChatWindow size", function(c)
					local result = c:mount()
					local chatWindow = c.findFirstInstance(result.instance, { Name = "chatWindow" })
					expect(chatWindow.AbsoluteSize).toEqual(chatWindowConfiguration.AbsoluteSize)
				end)

				it("SHOULD report proper ChatWindow position", function(c)
					local result = c:mount()
					local chatWindow = c.findFirstInstance(result.instance, { Name = "chatWindow" })
					expect(chatWindow.AbsolutePosition).toEqual(chatWindowConfiguration.AbsolutePosition)
				end)
			end
		end)

		describe("WHEN isChatWindowVisible is false", function()
			beforeAll(function(c)
				c.isChatWindowVisible = false
			end)

			it("SHOULD NEVER render ChatWindow as visible", function(c)
				local result = c:mount()
				local chatWindow = c.findFirstInstance(result.instance, { Name = "chatWindow" })
				expect(chatWindow).toHaveProperty("Visible", false)
				result.unmount()
			end)
		end)

		describe("WHEN isChatInputBarVisible is true", function()
			beforeAll(function(c)
				c.isChatInputBarVisible = true
			end)

			it("SHOULD mount ChatInputBar as visible", function(c)
				local result = c:mount()
				local chatInputBar = c.findFirstInstance(result.instance, { Name = "chatInputBar" })
				expect(chatInputBar).toHaveProperty("Visible", true)
				result.unmount()
			end)

			local chatInputBarConfiguration = TextChatService:FindFirstChildOfClass("ChatInputBarConfiguration")
			if chatInputBarConfiguration then
				it("SHOULD report proper ChatInputBar size", function(c)
					local result = c:mount()
					local chatInputBar = c.findFirstInstance(result.instance, { Name = "chatInputBar" })
					expect(chatInputBar.AbsoluteSize).toEqual(chatInputBarConfiguration.AbsoluteSize)
				end)

				it("SHOULD report proper ChatInputBar position", function(c)
					local result = c:mount()
					local chatInputBar = c.findFirstInstance(result.instance, { Name = "chatInputBar" })
					expect(chatInputBar.AbsolutePosition).toEqual(chatInputBarConfiguration.AbsolutePosition)
				end)
			end
		end)

		describe("WHEN isChatInputBarVisible is false", function()
			beforeAll(function(c)
				c.isChatInputBarVisible = false
			end)

			it("SHOULD render ChatInputBar as visible", function(c)
				local result = c:mount()
				local chatInputBar = c.findFirstInstance(result.instance, { Name = "chatInputBar" })
				expect(chatInputBar).toHaveProperty("Visible", false)
				result.unmount()
			end)
		end)

		it("Testing Timer", function(c)
			local result = c:mount()

			c.Roact.act(function()
				c.timeBindableEvent:Fire(1)
				c.store:flush()
				task.wait()
			end)
			c.result = result
			result.unmount()
		end)
	end)
end
