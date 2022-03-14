return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local UserModel = dependencies.UserModel
	local RoduxPresence = dependencies.RoduxPresence
	local PresenceType = RoduxPresence.Enums.PresenceType

	local sortFriendsByPresenceAndRank = require(script.Parent.sortFriendsByPresenceAndRank)

	describe("GIVEN userA as a first argument and userB as a second argument", function()
		it("SHOULD return false if userA.friendRank < userB.friendRank", function(c)
			local userA = {
				id = "userA",
				displayName = "userA",
				friendRank = 2,
				presence = UserModel.PresenceType.ONLINE,
			}
			local userB = {
				id = "userB",
				displayName = "userB",
				friendRank = 1,
				presence = UserModel.PresenceType.ONLINE,
			}
			local result = sortFriendsByPresenceAndRank(userA, userB)
			expect(result).to.equal(false)

			userA = {
				id = "userA",
				displayName = "userA",
				friendRank = 2,
				userPresenceType = PresenceType.Online,
			}
			userB = {
				id = "userB",
				displayName = "userB",
				friendRank = 1,
				userPresenceType = PresenceType.Online,
			}
			result = sortFriendsByPresenceAndRank(userA, userB)
			expect(result).to.equal(false)
		end)

		it("SHOULD return true if userA.friendRank < userB.friendRank", function(c)
			local userA = {
				id = "userA",
				displayName = "userA",
				friendRank = 1,
				presence = UserModel.PresenceType.ONLINE,
			}
			local userB = {
				id = "userB",
				displayName = "userB",
				friendRank = 2,
				presence = UserModel.PresenceType.ONLINE,
			}
			local result = sortFriendsByPresenceAndRank(userA, userB)
			expect(result).to.equal(true)

			userA = {
				id = "userA",
				displayName = "userA",
				friendRank = 1,
				userPresenceType = PresenceType.Online,
			}
			userB = {
				id = "userB",
				displayName = "userB",
				friendRank = 2,
				userPresenceType = PresenceType.Online,
			}
			result = sortFriendsByPresenceAndRank(userA, userB)
			expect(result).to.equal(true)
		end)

		it(
			"SHOULD return true if userA.friendRank == userB.friendRank and userA.displayName < userB.displayName",
			function(c)
				local userA = {
					id = "userA",
					displayName = "userA",
					friendRank = 1,
					presence = UserModel.PresenceType.ONLINE,
				}
				local userB = {
					id = "userB",
					displayName = "userB",
					friendRank = 1,
					presence = UserModel.PresenceType.ONLINE,
				}
				local result = sortFriendsByPresenceAndRank(userA, userB)
				expect(result).to.equal(true)

				userA = {
					id = "userA",
					displayName = "userA",
					friendRank = 1,
					userPresenceType = PresenceType.Online,
				}
				userB = {
					id = "userB",
					displayName = "userB",
					friendRank = 1,
					userPresenceType = PresenceType.Online,
				}
				result = sortFriendsByPresenceAndRank(userA, userB)
				expect(result).to.equal(true)
			end
		)

		it(
			"SHOULD return false if userA.friendRank == userB.friendRank and userA.displayName < userB.displayName",
			function(c)
				local userA = {
					id = "userA",
					displayName = "userB",
					friendRank = 1,
					presence = UserModel.PresenceType.ONLINE,
				}
				local userB = {
					id = "userB",
					displayName = "userA",
					friendRank = 1,
					presence = UserModel.PresenceType.ONLINE,
				}
				local result = sortFriendsByPresenceAndRank(userA, userB)
				expect(result).to.equal(false)

				userA = {
					id = "userA",
					displayName = "userB",
					friendRank = 1,
					userPresenceType = PresenceType.Online,
				}
				userB = {
					id = "userB",
					displayName = "userA",
					friendRank = 1,
					userPresenceType = PresenceType.Online,
				}
				result = sortFriendsByPresenceAndRank(userA, userB)
				expect(result).to.equal(false)
			end
		)

		it("SHOULD return false if friend1PresenceWeight > friend2PresenceWeight", function(c)
			local userA = {
				id = "userA",
				displayName = "userA",
				friendRank = 1,
				presence = UserModel.PresenceType.OFFLINE,
			}
			local userB = {
				id = "userB",
				displayName = "userB",
				friendRank = 2,
				presence = UserModel.PresenceType.ONLINE,
			}
			local result = sortFriendsByPresenceAndRank(userA, userB)
			expect(result).to.equal(false)

			userA = {
				id = "userA",
				displayName = "userA",
				friendRank = 1,
				userPresenceType = PresenceType.Offline,
			}
			userB = {
				id = "userB",
				displayName = "userB",
				friendRank = 2,
				userPresenceType = PresenceType.Online,
			}
			result = sortFriendsByPresenceAndRank(userA, userB)
			expect(result).to.equal(false)
		end)

		it("SHOULD return true if friend1PresenceWeight > friend2PresenceWeight", function(c)
			local userA = {
				id = "userA",
				displayName = "userA",
				friendRank = 3,
				presence = UserModel.PresenceType.IN_GAME,
			}
			local userB = {
				id = "userB",
				displayName = "userB",
				friendRank = 1,
				presence = UserModel.PresenceType.ONLINE,
			}
			local result = sortFriendsByPresenceAndRank(userA, userB)
			expect(result).to.equal(true)

			userA = {
				id = "userA",
				displayName = "userA",
				friendRank = 3,
				userPresenceType = PresenceType.InGame,
			}
			userB = {
				id = "userB",
				displayName = "userB",
				friendRank = 1,
				userPresenceType = PresenceType.Online,
			}
			result = sortFriendsByPresenceAndRank(userA, userB)
			expect(result).to.equal(true)
		end)

		it("SHOULD return true if displayNames are nil and friend1Username < friend2Username", function(c)
			local userA = {
				id = "userA",
				name = "abc",
				friendRank = 1,
				presence = UserModel.PresenceType.ONLINE,
			}
			local userB = {
				id = "userB",
				name = "def",
				friendRank = 1,
				presence = UserModel.PresenceType.ONLINE,
			}
			local result = sortFriendsByPresenceAndRank(userA, userB)
			expect(result).to.equal(true)

			userA = {
				id = "userA",
				username = "abc",
				friendRank = 1,
				userPresenceType = PresenceType.Online,
			}
			userB = {
				id = "userB",
				username = "def",
				friendRank = 1,
				userPresenceType = PresenceType.Online,
			}
			result = sortFriendsByPresenceAndRank(userA, userB)
			expect(result).to.equal(true)
		end)

		it("SHOULD return false if displayNames are nil and friend1Username > friend2Username", function(c)
			local userA = {
				id = "userA",
				name = "def",
				friendRank = 1,
				presence = UserModel.PresenceType.ONLINE,
			}
			local userB = {
				id = "userB",
				name = "abc",
				friendRank = 1,
				presence = UserModel.PresenceType.ONLINE,
			}
			local result = sortFriendsByPresenceAndRank(userA, userB)
			expect(result).to.equal(false)

			userA = {
				id = "userA",
				username = "def",
				friendRank = 1,
				userPresenceType = PresenceType.Online,
			}
			userB = {
				id = "userB",
				username = "abc",
				friendRank = 1,
				userPresenceType = PresenceType.Online,
			}
			result = sortFriendsByPresenceAndRank(userA, userB)
			expect(result).to.equal(false)
		end)

		it("SHOULD never equal the opposite sort", function(c)
			local usernames = { "userA", "userB", "userC", "userD", nil }
			local displayNames = { "userA", "nexx", "userA", "userD", "userE" }
			local ids = { "1", "2", nil, "4", "5" }
			local presence = {
				UserModel.PresenceType.ONLINE,
				nil,
				UserModel.PresenceType.OFFLINE,
				UserModel.PresenceType.IN_GAME,
				UserModel.PresenceType.IN_STUDIO,
			}
			local userPresenceTypes = {
				PresenceType.Online,
				PresenceType.Offline,
				nil,
				PresenceType.InGame,
				PresenceType.InStudio,
			}

			local users = {}
			for k, v in pairs(usernames) do
				table.insert(users, {
					id = ids[k],
					name = usernames[k],
					username = usernames[k],
					displayName = displayNames[k],
					presence = presence[k],
					userPresenceType = userPresenceTypes[k],
				})
			end

			for k, user1 in pairs(users) do
				for l, user2 in pairs(users) do
					if l ~= k then
						expect(sortFriendsByPresenceAndRank(user1, user2)).to.never.equal(
							sortFriendsByPresenceAndRank(user2, user1)
						)
					end
				end
			end
		end)
	end)
end
