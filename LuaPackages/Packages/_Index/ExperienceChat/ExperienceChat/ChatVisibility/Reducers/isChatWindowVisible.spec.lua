local CoreGui = game:GetService("CoreGui")
local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)
local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect
local ChatVisibility = ExperienceChat.ExperienceChat.ChatVisibility

return function()
	local TextChatServiceChatWindowPropertyChanged = require(
		ChatVisibility.Actions.TextChatServiceChatWindowPropertyChanged
	)
	local isChatWindowVisible = require(ChatVisibility.Reducers.isChatWindowVisible)

	describe("isChatWindowVisible", function()
		it("should be not nil by default", function()
			local defaultState = isChatWindowVisible(nil, {})

			expect(defaultState).never.toBeNil()
		end)

		it("should be unmodified by other actions", function()
			local oldState = isChatWindowVisible(nil, {})
			local newState = isChatWindowVisible(oldState, { type = "not a real action" })

			expect(oldState).toEqual(newState)
		end)

		it("should be changed using TextChatServiceChatWindowPropertyChanged", function()
			local state = isChatWindowVisible(nil, {})

			state = isChatWindowVisible(state, TextChatServiceChatWindowPropertyChanged(true))
			expect(state).toEqual(true)

			state = isChatWindowVisible(state, TextChatServiceChatWindowPropertyChanged(false))
			expect(state).toEqual(false)
		end)
	end)
end
