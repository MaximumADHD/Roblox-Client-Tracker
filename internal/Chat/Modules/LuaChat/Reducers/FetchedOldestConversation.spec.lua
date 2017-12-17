return function()
	local LuaChat = script.Parent.Parent
	local FetchedOldestConversation = require(script.Parent.FetchedOldestConversation)
	local ActionType = require(LuaChat.ActionType)

	describe("Action FetchedOldestConversation", function()
		it("sets the FetchedOldestConversation flag", function()
			local state = FetchedOldestConversation(nil, {})

			expect(state).to.equal(false)

			state = FetchedOldestConversation(state, {
				type = ActionType.FetchedOldestConversation,
				value = false,
			})

			expect(state).to.equal(false)

			state = FetchedOldestConversation(state, {
				type = ActionType.FetchedOldestConversation,
				value = true,
			})

			expect(state).to.equal(true)
		end)
	end)
end