local SocialTab = script:FindFirstAncestor("SocialTab")

local dependencies = require(SocialTab.dependencies)
local RoduxPresence = dependencies.RoduxPresence
local PresenceType = RoduxPresence.Enums.PresenceType

local devDependencies = require(SocialTab.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local sortByPresenceAndDisplayName = require(script.Parent.sortByPresenceAndDisplayName)

describe("GIVEN userA as a first argument and userB as a second argument", function()
	it("SHOULD return true if userA.presence > userB.presence", function()
		local userA = {
			id = "userA",
			displayName = "userA",
			userPresenceType = PresenceType.Online,
		}
		local userB = {
			id = "userB",
			displayName = "userB",
			userPresenceType = PresenceType.Offline,
		}
		local result = sortByPresenceAndDisplayName(userA, userB)
		expect(result).toBe(true)
	end)

	it("SHOULD return false if userA.presence < userA.presence", function()
		local userA = {
			id = "userA",
			displayName = "userA",
			userPresenceType = PresenceType.Offline,
		}
		local userB = {
			id = "userB",
			displayName = "userB",
			userPresenceType = PresenceType.Online,
		}
		local result = sortByPresenceAndDisplayName(userA, userB)
		expect(result).toBe(false)
	end)

	it("SHOULD return true if users presence is equal and userA.displayName < userB.displayName", function()
		local userA = {
			id = "userA",
			displayName = "AAA",
			userPresenceType = PresenceType.Online,
		}
		local userB = {
			id = "userB",
			displayName = "BBB",
			userPresenceType = PresenceType.Online,
		}
		local result = sortByPresenceAndDisplayName(userA, userB)
		expect(result).toBe(true)
	end)

	it("SHOULD return false if users presence and displayName are equal", function()
		local userA = {
			id = "userA",
			displayName = "sameDisplayName",
			userPresenceType = PresenceType.Online,
		}
		local userB = {
			id = "userB",
			displayName = "sameDisplayName",
			userPresenceType = PresenceType.Online,
		}
		local result = sortByPresenceAndDisplayName(userA, userB)
		expect(result).toBe(false)
	end)

	it("SHOULD return false if users presence is equal and userA.displayName > userB.display", function()
		local userA = {
			id = "userA",
			displayName = "BBB",
			userPresenceType = PresenceType.Online,
		}
		local userB = {
			id = "userB",
			displayName = "AAA",
			userPresenceType = PresenceType.Online,
		}
		local result = sortByPresenceAndDisplayName(userA, userB)
		expect(result).toBe(false)
	end)

	describe("presence weighting", function()
		it("SHOULD rank InGame over Online", function()
			local userA = {
				id = "userA",
				displayName = "BBB",
				userPresenceType = PresenceType.InGame,
			}
			local userB = {
				id = "userB",
				displayName = "AAA",
				userPresenceType = PresenceType.Online,
			}
			local result = sortByPresenceAndDisplayName(userA, userB)
			expect(result).toBe(true)
		end)

		it("SHOULD rank Online over InStudio", function()
			local userA = {
				id = "userA",
				displayName = "BBB",
				userPresenceType = PresenceType.Online,
			}
			local userB = {
				id = "userB",
				displayName = "AAA",
				userPresenceType = PresenceType.InStudio,
			}
			local result = sortByPresenceAndDisplayName(userA, userB)
			expect(result).toBe(true)
		end)

		it("SHOULD rank InStudio over Offline", function()
			local userA = {
				id = "userA",
				displayName = "BBB",
				userPresenceType = PresenceType.InStudio,
			}
			local userB = {
				id = "userB",
				displayName = "AAA",
				userPresenceType = PresenceType.Offline,
			}
			local result = sortByPresenceAndDisplayName(userA, userB)
			expect(result).toBe(true)
		end)

		it("SHOULD rank InStudio over nil", function()
			local userA = {
				id = "userA",
				displayName = "BBB",
				userPresenceType = PresenceType.InStudio,
			}
			local userB = {
				id = "userB",
				displayName = "AAA",
				userPresenceType = nil,
			}
			local result = sortByPresenceAndDisplayName(userA, userB)
			expect(result).toBe(true)
		end)

		it("SHOULD rank Offline and missing presence as the same and order by displayName", function()
			local userA = {
				id = "userA",
				displayName = "BBB",
				userPresenceType = PresenceType.Offline,
			}
			local userB = {
				id = "userB",
				displayName = "AAB",
				userPresenceType = nil,
			}
			local result = sortByPresenceAndDisplayName(userA, userB)
			expect(result).toBe(false)
		end)
	end)
end)
