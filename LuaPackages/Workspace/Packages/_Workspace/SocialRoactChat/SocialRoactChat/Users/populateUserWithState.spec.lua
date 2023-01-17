--!nonstrict
return function()
	local populateUserWithState = require(script.Parent.populateUserWithState)
	local SocialRoactChat = script:FindFirstAncestor("SocialRoactChat")
	local dependencies = require(SocialRoactChat.dependencies)
	local Mock = dependencies.Mock

	local RoduxPresence = dependencies.RoduxPresence
	local EnumPresenceType = RoduxPresence.Enums.PresenceType

	local user = {
		id = "userId1",
		name = "player1",
		presence = "ONLINE",
	}

	describe("GIVEN a user and state with alias", function()
		local state = {
			RoactChatReducer = {
				Presence = {
					byUserId = {
						userId1 = {
							userPresenceType = EnumPresenceType.Offline,
							lastLocation = nil,
						},
					},
				},
				Aliases = {
					byUserId = {
						userId1 = "test",
					},
				},
			},
		}

		local result = populateUserWithState(state, user)
		it("SHOULD return a valid object", function()
			expect(result).to.be.ok()
		end)

		it("SHOULD add displayName", function()
			expect(result.displayName).to.be.ok()
			expect(type(result.displayName)).to.equal("string")
		end)

		it("SHOULD add thumbnail", function()
			expect(result.thumbnail).to.be.ok()
			expect(type(result.thumbnail)).to.equal("string")
		end)

		it("SHOULD add an alias", function()
			expect(result.alias).to.be.ok()
			expect(type(result.alias)).to.equal("string")
		end)

		it("SHOULD add presenceText", function()
			expect(result.presenceText).to.be.ok()
			expect(type(result.presenceText)).to.equal("string")
		end)

		it("SHOULD add presenceImage", function()
			expect(result.presenceImage).to.be.ok()
			expect(type(result.presenceImage)).to.equal("string")
		end)
	end)

	describe("GIVEN a user and state without alias", function()
		local state = {
			RoactChatReducer = {
				Presence = Mock.MagicMock.new(),
				Aliases = {
					byUserId = {},
				},
			},
		}

		local result = populateUserWithState(state, user)
		it("SHOULD return a valid object", function()
			expect(result).to.be.ok()
		end)

		it("SHOULD not add an alias", function()
			expect(result.alias).to.never.be.ok()
		end)
	end)
end
