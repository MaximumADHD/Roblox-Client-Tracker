return function()
	local LuaChat = script.Parent.Parent
	local ToggleChatPaused = require(script.Parent.ToggleChatPaused)
	local ActionType = require(LuaChat.ActionType)

	describe("Action ToggleChatPaused", function()
		it("sets the ToggleChatPaused flag", function()
			local state = ToggleChatPaused(nil, {})

			expect(state).to.equal(false)

			state = ToggleChatPaused(state, {
				type = ActionType.ToggleChatPaused,
				value = false,
			})

			expect(state).to.equal(false)

			state = ToggleChatPaused(state, {
				type = ActionType.ToggleChatPaused,
				value = true,
			})

			expect(state).to.equal(true)
		end)
	end)
end