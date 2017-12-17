return function()
	local LuaChat = script.Parent.Parent
	local UnreadConversationCount = require(LuaChat.Reducers.UnreadConversationCount)
	local ActionType = require(LuaChat.ActionType)

	describe("Action SetUnreadConversationCount", function()
		it("should set the value of UnreadConversationCount", function()
			local state = nil
			local action = {
				type = ActionType.SetUnreadConversationCount,
				count = 5,
			}

			state = UnreadConversationCount(state, action)

			expect(state).to.equal(5)
		end)
	end)

	describe("Action IncrementUnreadConversationCount", function()
		it("should increment the value of UnreadConversationCount", function()
			local state = nil
			local action = {
				type = ActionType.SetUnreadConversationCount,
				count = 5,
			}

			state = UnreadConversationCount(state, action)

			action = {
				type = ActionType.IncrementUnreadConversationCount,
			}

			state = UnreadConversationCount(state, action)

			expect(state).to.equal(6)
		end)
	end)

	describe("Action DecrementUnreadConversationCount", function()
		it("should decrement the value of UnreadConversationCount", function()
			local state = nil
			local action = {
				type = ActionType.SetUnreadConversationCount,
				count = 5,
			}

			state = UnreadConversationCount(state, action)

			action = {
				type = ActionType.DecrementUnreadConversationCount,
			}

			state = UnreadConversationCount(state, action)

			expect(state).to.equal(4)
		end)
	end)
end