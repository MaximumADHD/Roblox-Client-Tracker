return function()
	local SocialRoactChat = script:FindFirstAncestor("SocialRoactChat")
	local Packages = SocialRoactChat.Parent

	local t = require(Packages.Dev.t)
	local MockConversationModel = require(script.Parent.MockConversation)

	describe("MockConversationModel", function()
		--mock
		it("should create a model with the expected fields when mocked", function()
			local mockInterface = t.strictInterface({
				messages = t.table,
				sendingMessages = t.table,
				id = t.string,
				clientId = t.string,
				title = t.string,
				initiator = t.string,
				hasUnreadMessages = t.boolean,
				conversationType = t.string,
				participants = t.table,
				usersTyping = t.table,
				isUserLeaving = t.boolean,
				fetchingOlderMessages = t.boolean,
				fetchedOldestMessage = t.boolean,
				serverState = t.string,
				pinnedGame = t.table,
				lastUpdated = t.table,
				titleForViewer = t.string,
				isDefaultTitle = t.boolean,
			})

			local Conversation = MockConversationModel.mock()

			expect(Conversation).to.be.ok()
			expect(mockInterface(Conversation)).to.equal(true)
		end)

		it("mock should be able to take a dictionary as an argument that overwrites default values", function()
			local testTitle = "TestConversationTitle"

			local Conversation = MockConversationModel.mock({
				title = testTitle,
			})

			expect(Conversation).to.be.ok()
			expect(Conversation.title).to.equal(testTitle)
		end)
	end)
end
