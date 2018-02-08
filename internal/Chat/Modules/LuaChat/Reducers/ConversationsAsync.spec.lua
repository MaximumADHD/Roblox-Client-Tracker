return function()
	local LuaChat = script.Parent.Parent
	local ConversationsAsync = require(script.Parent.ConversationsAsync)
	local ActionType = require(LuaChat.ActionType)

	describe("initial state", function()
		it("should return an initial table when passed nil", function()
			local state = ConversationsAsync(nil, {})
			expect(state).to.be.a("table")
		end)
	end)

	describe("RequestPageConversations", function()
		it("should set the async state to true", function()
			local state = ConversationsAsync(nil, {})
			state = ConversationsAsync(state, {
				type = ActionType.RequestPageConversations,
			})

			expect(state.pageConversationsIsFetching).to.equal(true)
		end)
	end)

	describe("ReceivedPageConversations", function()
		it("should set the async state to false", function()
			local state = ConversationsAsync(nil, {})
			state = ConversationsAsync(state, {
				type = ActionType.ReceivedPageConversations,
			})

			expect(state.pageConversationsIsFetching).to.equal(false)
		end)
	end)

	describe("RequestLatestMessages", function()
		it("should set the async state to true", function()
			local state = ConversationsAsync(nil, {})
			state = ConversationsAsync(state, {
				type = ActionType.RequestLatestMessages,
			})

			expect(state.latestMessagesIsFetching).to.equal(true)
		end)
	end)

	describe("ReceivedLatestMessages", function()
		it("should set the async state to false", function()
			local state = ConversationsAsync(nil, {})
			state = ConversationsAsync(state, {
				type = ActionType.ReceivedLatestMessages,
			})

			expect(state.latestMessagesIsFetching).to.equal(false)
		end)
	end)

	describe("ReceivedOldestConversation", function()
		it("should set the oldestConversationIsFetched flag to true", function()
			local state = ConversationsAsync(nil, {})
			state = ConversationsAsync(state, {
				type = ActionType.ReceivedOldestConversation,
			})

			expect(state.oldestConversationIsFetched).to.equal(true)
		end)
	end)

end