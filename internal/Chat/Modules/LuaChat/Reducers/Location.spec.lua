return function()
	local LuaChat = script.Parent.Parent
	local Location = require(script.Parent.Location)

	local DialogInfo = require(LuaChat.DialogInfo)
	local Intent = DialogInfo.Intent

	local PopRoute = require(LuaChat.Actions.PopRoute)
	local RemoveRoute = require(LuaChat.Actions.RemoveRoute)
	local SetRoute = require(LuaChat.Actions.SetRoute)

	describe("initial state", function()
		it("should return an initial table when passed nil", function()
			local state = Location(nil, {})
			expect(state).to.be.a("table")
			expect(state.current).to.be.a("table")
			expect(state.history).to.be.a("table")
		end)
	end)

	describe("SetRoute", function()
		it("should set route to ConversationHub", function()
			local intent = Intent.ConversationHub

			local state = Location(nil, SetRoute(intent, {}))

			expect(state.current.intent).to.equal(intent)
		end)

		it("should set route to Conversation with correct conversationId", function()
			local intent = Intent.Conversation
			local conversationId = "testConvoId"

			local state = Location(nil, SetRoute(
				intent,
				{
					conversationId = conversationId,
				}
			))

			expect(state.current.intent).to.equal(intent)
			expect(state.current.parameters.conversationId).to.equal(conversationId)
		end)
	end)

	describe("SetRoute with popToIntent", function()
		it("should pop to the right intent first and then add the new intent on top", function()
			local state = Location(nil, SetRoute(Intent.ConversationHub, {}))

			state = Location(state, SetRoute(
				Intent.Conversation,
				{
					conversationId = "testConvoId1",
				}
			))

			state = Location(state, SetRoute(Intent.NewChatGroup))

			state = Location(state, SetRoute(
				Intent.Conversation,
				{
					conversationId = "testConvoId2",
				}
			))

			expect(#state.history).to.equal(4)

			state = Location(state, SetRoute(
				Intent.Conversation,
				{
					conversationId = "testConvoId3",
				},
				Intent.ConversationHub
			))

			expect(#state.history).to.equal(2)
			expect(state.history[1].intent).to.equal(Intent.ConversationHub)
			expect(state.current.parameters.conversationId).to.equal("testConvoId3")
			expect(state.history[#state.history].parameters.conversationId).to.equal("testConvoId3")
		end)
		it("should pop to the right intent and stop if the new intent is nil", function()
			local state = Location(nil, SetRoute(
				Intent.ConversationHub,
				{}
			))

			state = Location(state, SetRoute(
				Intent.Conversation,
				{
					conversationId = "testConvoId1",
				}
			))

			state = Location(state, SetRoute(Intent.NewChatGroup))

			state = Location(state, SetRoute(
				Intent.Conversation,
				{
					conversationId = "testConvoId2",
				}
			))

			state = Location(state, SetRoute(
				nil,
				{
					conversationId = "testConvoId3",
				},
				Intent.NewChatGroup
			))

			expect(#state.history).to.equal(3)
			expect(state.current.intent).to.equal(Intent.NewChatGroup)
			expect(state.history[#state.history].intent).to.equal(Intent.NewChatGroup)
		end)
	end)

	describe("route history", function()
		it("should push history", function()
			local state = Location(nil, SetRoute(
				Intent.ConversationHub,
				{}
			))

			expect(#state.history).to.equal(1)
		end)

		it("should push history twice and have correct number of history entries", function()
			local state = Location(nil, SetRoute(
				Intent.ConversationHub,
				{}
			))

			state = Location(state, SetRoute(
				Intent.Conversation,
				{
					conversationId = "testConvoId",
				}
			))

			expect(#state.history).to.equal(2)
		end)

		it("should have current be equal to top of history", function()
			local state = Location(nil, SetRoute(
				Intent.ConversationHub,
				{}
			))

			expect(state.history[1].intent).to.equal(state.current.intent)
		end)

		it("should pop history", function()
			local state = Location(nil, SetRoute(
				Intent.ConversationHub,
				{}
			))

			state = Location(state, SetRoute(Intent.Conversation,
				{
					conversationId = "testConvoId",
				}
			))

			state = Location(state, PopRoute())

			expect(state.current.intent).to.equal(Intent.ConversationHub)
			expect(#state.history).to.equal(1)
			expect(state.history[1].intent).to.equal(state.current.intent)
		end)

		it("should never pop routes where the history is empty", function()
			local state = Location(nil, SetRoute(
				Intent.ConversationHub,
				{}
			))

			state = Location(state, SetRoute(Intent.Conversation,
				{
					conversationId = "testConvoId",
				}
			))

			state = Location(state, PopRoute())

			expect(state.current.intent).to.equal(Intent.ConversationHub)
			expect(#state.history).to.equal(1)
			expect(state.history[1].intent).to.equal(state.current.intent)

			state = Location(state, PopRoute())

			expect(state.current.intent).to.equal(Intent.ConversationHub)
			expect(#state.history).to.equal(1)
			expect(state.history[1].intent).to.equal(state.current.intent)
		end)

		it("should remove from history properly", function()
			local state = Location(nil, SetRoute(
				Intent.ConversationHub,
				{}
			))

			state = Location(state, SetRoute(
				Intent.Conversation,
				{
					conversationId = "testConvoId1"
				}
			))

			state = Location(state, SetRoute(
				Intent.NewChatGroup
			))

			state = Location(state, SetRoute(
				Intent.Conversation,
				{
					conversationId = "testConvoId2"
				}
			))

			expect(#state.history).to.equal(4)

			state = Location(state, RemoveRoute(Intent.NewChatGroup))

			expect(#state.history).to.equal(3)

			state = Location(state, RemoveRoute(Intent.EditChatGroup))

			expect(#state.history).to.equal(3)

			state = Location(state, RemoveRoute(Intent.Conversation))

			expect(state.current.intent).to.equal(Intent.Conversation)
			expect(state.current.parameters.conversationId).to.equal("testConvoId1")
		end)
	end)
end