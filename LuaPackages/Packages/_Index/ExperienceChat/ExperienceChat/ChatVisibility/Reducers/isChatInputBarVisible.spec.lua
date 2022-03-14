local CoreGui = game:GetService("CoreGui")
local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)
local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect
local ChatVisibility = ExperienceChat.ExperienceChat.ChatVisibility

return function()
	local ChatTopBarButtonActivated = require(ChatVisibility.Actions.ChatTopBarButtonActivated)
	local isChatInputBarVisible = require(ChatVisibility.Reducers.isChatInputBarVisible)

	describe("isChatInputBarVisible", function()
		it("should be not nil by default", function()
			local defaultState = isChatInputBarVisible(nil, {})

			expect(defaultState).never.toBeNil()
		end)

		it("should be unmodified by other actions", function()
			local oldState = isChatInputBarVisible(nil, {})
			local newState = isChatInputBarVisible(oldState, { type = "not a real action" })

			expect(oldState).toEqual(newState)
		end)

		it("should be changed using ChatTopBarButtonActivated", function()
			local state = isChatInputBarVisible(nil, {})

			state = isChatInputBarVisible(state, ChatTopBarButtonActivated(true))
			expect(state).toEqual(true)

			state = isChatInputBarVisible(state, ChatTopBarButtonActivated(false))
			expect(state).toEqual(false)
		end)
	end)
end
