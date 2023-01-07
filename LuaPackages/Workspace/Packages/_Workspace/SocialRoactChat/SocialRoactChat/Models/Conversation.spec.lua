return function()
	local SocialRoactChat = script:FindFirstAncestor("SocialRoactChat")
	local Packages = SocialRoactChat.Parent

	local t = require(Packages.Dev.t)
	local ConversationModel = require(script.Parent.Conversation)

	describe("ConversationModel", function()
		local mockWebData = {
			id = 123,
			title = "WebTitleTest",
			initiator = {
				targetId = 789,
			},
			hasUnreadMessages = true,
			conversationType = ConversationModel.Type.ONE_TO_ONE_CONVERSATION,
			conversationUniverse = {
				universeId = 1,
				rootPlaceId = 2,
			},
			lastUpdated = "2019-11-20T01:00:00+01:00",

			conversationTitle = {
				titleForViewer = "testTitleForViewer",
				isDefaultTitle = true,
			},

			participants = {
				{
					targetId = 1,
				},
				{
					targetId = 2,
				},
			},
		}

		--helper functions
		it("should create a unique id based on participant userIds", function()
			local participantsA = {
				"1",
				"2",
			}

			local participantsB = {
				"1",
				"3",
			}

			local conversationIdA = ConversationModel.IdForFakeOneOnOne(participantsA)
			local conversationIdB = ConversationModel.IdForFakeOneOnOne(participantsB)

			expect(conversationIdA).never.to.equal(conversationIdB)
		end)

		--constructor
		it("should create a table when constructed", function()
			local Conversation = ConversationModel.new()
			expect(type(Conversation)).to.equal("table")
		end)

		--fromUser
		it("should create an additional displayName field if the flag is on", function()
			local userModel = {
				name = "TestUser",
				displayName = "DNTestUser",
				id = "123",
			}

			local userConversationInterface = t.strictInterface({
				messages = t.table,
				sendingMessages = t.table,
				id = t.string,
				clientId = t.string,
				title = t.string,
				hasUnreadMessages = t.boolean,
				conversationType = t.string,
				participants = t.table,
				usersTyping = t.table,
				isUserLeaving = t.boolean,
				fetchingOlderMessages = t.boolean,
				fetchedOldestMessage = t.boolean,
				lastUpdated = nil,
				serverState = t.string,
				isDefaultTitle = t.boolean,
			})

			local Conversation = ConversationModel.fromUser(userModel)

			assert(userConversationInterface(Conversation))
			expect(userConversationInterface(Conversation)).to.equal(true)
		end)

		it("should create a conversation model with the other user's displayName as the title", function()
			local userModel = {
				displayName = "DNTestUser",
			}

			local Conversation = ConversationModel.fromUser(userModel)

			expect(Conversation).to.be.ok()
			expect(Conversation.title).to.equal(userModel.displayName)
		end)

		--empty
		it("should create a model with the expected fields for an empty conversation", function()
			local emptyInterface = t.strictInterface({
				messages = t.table,
				sendingMessages = t.table,
				id = t.string,
				title = t.string,
				initiator = t.string,
				hasUnreadMessages = t.boolean,
				conversationType = t.string,
				participants = t.table,
				usersTyping = t.table,
				isUserLeaving = t.boolean,
				fetchingOlderMessages = t.boolean,
				serverState = t.string,
				pinnedGame = t.table,
				lastUpdated = t.table,
				isDefaultTitle = t.boolean,
			})

			local Conversation = ConversationModel.empty()
			assert(emptyInterface(Conversation))
			expect(Conversation).to.be.ok()
		end)

		it(
			"empty conversation should be able to take a dictionary as an argument that overwrites default values",
			function()
				local testTitle = "TestConversationTitle"

				local Conversation = ConversationModel.empty({
					title = testTitle,
				})

				expect(Conversation).to.be.ok()
				expect(Conversation.title).to.equal(testTitle)
			end
		)

		--fromWeb
		it("should create a model with the expected fields from web data", function()
			local webInterface = t.strictInterface({
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
				serverState = t.string,
				pinnedGame = t.table,
				lastUpdated = t.table,
				titleForViewer = t.string,
				isDefaultTitle = t.boolean,
			})

			local Conversation = ConversationModel.fromWeb(mockWebData, "456")

			expect(Conversation).to.be.ok()
			expect(webInterface(Conversation)).to.equal(true)
		end)

		it("web conversation should map values from web data properly", function()
			local Conversation = ConversationModel.fromWeb(mockWebData, "456")

			expect(Conversation).to.be.ok()
			expect(Conversation.id).to.equal(tostring(mockWebData.id))
			expect(Conversation.clientId).to.equal("456")
			expect(Conversation.title).to.equal(mockWebData.title)
			expect(Conversation.initiator).to.equal(tostring(mockWebData.initiator.targetId))
			expect(Conversation.hasUnreadMessages).to.equal(mockWebData.hasUnreadMessages)
			expect(Conversation.conversationType).to.equal(mockWebData.conversationType)
			expect(Conversation.pinnedGame.universeId).to.equal(tostring(mockWebData.conversationUniverse.universeId))
			expect(Conversation.pinnedGame.rootPlaceId).to.equal(tostring(mockWebData.conversationUniverse.rootPlaceId))
			expect(Conversation.lastUpdated).to.be.ok()
			expect(Conversation.titleForViewer).to.equal(mockWebData.conversationTitle.titleForViewer)
			expect(Conversation.isDefaultTitle).to.equal(mockWebData.conversationTitle.isDefaultTitle)
			expect(#Conversation.participants).to.equal(2)
		end)
	end)
end
