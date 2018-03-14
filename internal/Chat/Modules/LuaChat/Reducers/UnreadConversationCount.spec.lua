return function()
	local LuaChat = script.Parent.Parent
	local UnreadConversationCount = require(LuaChat.Reducers.UnreadConversationCount)
	local SetUnreadConversationCount = require(LuaChat.Actions.SetUnreadConversationCount)
	local IncrementUnreadConversationCount = require(LuaChat.Actions.IncrementUnreadConversationCount)
	local DecrementUnreadConversationCount = require(LuaChat.Actions.DecrementUnreadConversationCount)

	describe("Action SetUnreadConversationCount", function()
		it("should set the value of UnreadConversationCount", function()
			local state = nil
			local action = SetUnreadConversationCount(5)

			state = UnreadConversationCount(state, action)

			expect(state).to.equal(5)
		end)
	end)

	describe("Action IncrementUnreadConversationCount", function()
		it("should increment the value of UnreadConversationCount", function()
			local state = nil
			local action = SetUnreadConversationCount(5)

			state = UnreadConversationCount(state, action)

			action = IncrementUnreadConversationCount()

			state = UnreadConversationCount(state, action)

			expect(state).to.equal(6)
		end)
	end)

	describe("Action DecrementUnreadConversationCount", function()
		it("should decrement the value of UnreadConversationCount", function()
			local state = nil
			local action = SetUnreadConversationCount(5)

			state = UnreadConversationCount(state, action)

			action = DecrementUnreadConversationCount()

			state = UnreadConversationCount(state, action)

			expect(state).to.equal(4)
		end)
	end)
end