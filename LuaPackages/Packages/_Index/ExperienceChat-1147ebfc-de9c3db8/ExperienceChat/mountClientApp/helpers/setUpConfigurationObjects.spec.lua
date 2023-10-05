local TextChatService = game:GetService("TextChatService")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local setUpConfigurationObjects = require(script.Parent.setUpConfigurationObjects)

return function()
	local chatWindowConfiguration = TextChatService:FindFirstChildOfClass("ChatWindowConfiguration")
	local chatInputBarConfiguration = TextChatService:FindFirstChildOfClass("ChatInputBarConfiguration")
	local bubbleChatConfiguration = TextChatService:FindFirstChildOfClass("BubbleChatConfiguration")

	if chatWindowConfiguration and chatInputBarConfiguration and bubbleChatConfiguration then
		beforeAll(function(rootContext)
			local installReducer = require(ExperienceChat.installReducer)
			local store = rootContext.Rodux.Store.new(installReducer, {}, {
				rootContext.Rodux.thunkMiddleware,
			})

			rootContext.mockStore = store

			local RBXGeneral = Instance.new("TextChannel")
			RBXGeneral.Name = "RBXGeneral"
			RBXGeneral.Parent = TextChatService:FindFirstChild("TextChannels")
			local config = {
				defaultTargetTextChannel = RBXGeneral,
			}

			rootContext.mockConfig = config
		end)

		it("SHOULD initially set default properties to true", function(c)
			setUpConfigurationObjects(c.mockStore, c.mockConfig)

			local state = c.mockStore:getState()
			expect(state.ChatVisibility.isChatWindowEnabled.value).toEqual(true)
			expect(state.ChatVisibility.isChatInputBarEnabled.value).toEqual(true)
		end)

		it("SHOULD dispatch initial configurations to store according to configuration values", function(c)
			chatInputBarConfiguration.Enabled = false
			chatWindowConfiguration.Enabled = false
			setUpConfigurationObjects(c.mockStore, c.mockConfig)

			local state = c.mockStore:getState()
			expect(state.ChatVisibility.isChatWindowEnabled.value).toEqual(false)
			expect(state.ChatVisibility.isChatInputBarEnabled.value).toEqual(false)
		end)

		it("SHOULD change state when configuration property changes", function(c)
			setUpConfigurationObjects(c.mockStore, c.mockConfig)
			local state = c.mockStore:getState()
			expect(state.ChatVisibility.isChatWindowEnabled.value).toEqual(chatInputBarConfiguration.Enabled)
			expect(state.ChatVisibility.isChatInputBarEnabled.value).toEqual(chatWindowConfiguration.Enabled)

			chatInputBarConfiguration.Enabled = not chatInputBarConfiguration.Enabled
			chatWindowConfiguration.Enabled = not chatWindowConfiguration.Enabled
			task.wait()
			local newState = c.mockStore:getState()
			expect(newState.ChatVisibility.isChatWindowEnabled.value).toEqual(chatInputBarConfiguration.Enabled)
			expect(newState.ChatVisibility.isChatInputBarEnabled.value).toEqual(chatWindowConfiguration.Enabled)
		end)
	end
end
