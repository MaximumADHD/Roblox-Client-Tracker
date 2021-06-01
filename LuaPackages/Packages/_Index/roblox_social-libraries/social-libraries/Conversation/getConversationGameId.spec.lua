return function()
	local SAMPLE_IMAGE = ""

	describe("getConversationGameId", function()
		local SocialLibraries = script:FindFirstAncestor("social-libraries")
		local dependencies = require(SocialLibraries.dependencies)
		local UserModel = dependencies.UserModel
		local getConversationGameId = require(script.Parent.getConversationGameId)
		it("should return the pinned game when given a pinned game", function()
			local mockConversation = {
				title = "Placeholder Name",
				thumbnails = {
					SAMPLE_IMAGE,
					SAMPLE_IMAGE,
					SAMPLE_IMAGE,
				},
				participants = {},
				pinnedGame = {
					universeId = "653275355",
				},
			}
			local mockLocalPlayerUserId = "12345"
			local mockConversationParticipantsById = {}

			local result = getConversationGameId(mockConversation, mockLocalPlayerUserId, mockConversationParticipantsById)
			expect(result).to.equal("653275355")
		end)

		it("should return the game that the majority of people are playing", function()
			local mockConversation = {
				title = "Placeholder Name",
				thumbnails = {
					SAMPLE_IMAGE,
					SAMPLE_IMAGE,
					SAMPLE_IMAGE,
				},
				hasUnreadMessages = false,
				participants = {
					"userId1",
					"userId2",
					"userId3",
					"userId4",
					"userId5",
				}
			}
			local mockLocalPlayerUserId = "12345"
			local mockConversationParticipantsById = {
				["userId1"] = {
					["presence"] = UserModel.PresenceType.IN_GAME,
					["rootPlaceId"] = "placeId1",
				},
				["userId2"] = {
					["presence"] = UserModel.PresenceType.IN_GAME,
					["rootPlaceId"] = "placeId1",
				},
				["userId3"] = {
					["presence"] = UserModel.PresenceType.IN_GAME,
					["rootPlaceId"] = "placeId1",
				},
				["userId4"] = {
					["presence"] = UserModel.PresenceType.IN_GAME,
					["rootPlaceId"] = "placeId2",
				},
				["userId5"] = {
					["presence"] = UserModel.PresenceType.IN_GAME,
					["rootPlaceId"] = "placeId3",
				},
			}

			local result = getConversationGameId(mockConversation, mockLocalPlayerUserId, mockConversationParticipantsById)
			expect(result).to.equal("placeId1")
		end)

		it("should return nil when no one is playing a game", function()
			local mockConversation = {
				title = "Placeholder Name",
				thumbnails = {
					SAMPLE_IMAGE,
					SAMPLE_IMAGE,
					SAMPLE_IMAGE,
				},
				hasUnreadMessages = false,
				participants = {
					"userId1",
					"userId2",
					"userId3",
					"userId4",
					"userId5",
				}
			}
			local mockLocalPlayerUserId = "12345"
			local mockConversationParticipantsById = {
				["userId1"] = {	},
				["userId2"] = {	},
				["userId3"] = {	},
				["userId4"] = {	},
				["userId5"] = {	},
			}

			local result = getConversationGameId(mockConversation, mockLocalPlayerUserId, mockConversationParticipantsById)
			expect(result).to.equal(nil)
		end)

		it("should return the pinned game even when people are playing", function()
			local mockConversation = {
				title = "Placeholder Name",
				thumbnails = {
					SAMPLE_IMAGE,
					SAMPLE_IMAGE,
					SAMPLE_IMAGE,
				},
				hasUnreadMessages = false,
				participants = {
					"userId1",
					"userId2",
					"userId3",
					"userId4",
					"userId5",
				},
				pinnedGame = {
					universeId = "653275355",
				},
			}
			local mockLocalPlayerUserId = "12345"
			local mockConversationParticipantsById = {
				["userId1"] = {
					["presence"] = UserModel.PresenceType.IN_GAME,
					["rootPlaceId"] = "placeId1",
				},
				["userId2"] = {
					["presence"] = UserModel.PresenceType.IN_GAME,
					["rootPlaceId"] = "placeId1",
				},
				["userId3"] = {
					["presence"] = UserModel.PresenceType.IN_GAME,
					["rootPlaceId"] = "placeId1",
				},
				["userId4"] = {
					["presence"] = UserModel.PresenceType.IN_GAME,
					["rootPlaceId"] = "placeId2",
				},
				["userId5"] = {
					["presence"] = UserModel.PresenceType.IN_GAME,
					["rootPlaceId"] = "placeId3",
				},
			}

			local result = getConversationGameId(mockConversation, mockLocalPlayerUserId, mockConversationParticipantsById)
			expect(result).to.equal("653275355")
		end)
	end)
end
