local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local getBaseTestStates = require(FriendsLanding.TestHelpers.getBaseTestStates)

local dependencies = require(FriendsLanding.dependencies)
local llama = dependencies.llama
local EnumPresenceType = dependencies.RoduxPresence.Enums.PresenceType

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local mapToUsers = require(script.Parent.mapToUsers)

describe("mapToUsers", function()
	local baseTestStates = getBaseTestStates()

	it("SHOULD return a function", function()
		expect(mapToUsers).toEqual(expect.any("function"))
	end)

	describe("GIVEN list of users including user with userId and userId", function()
		local result = mapToUsers(baseTestStates.smallNumbersOfFriends)("test")

		it("SHOULD return the 5 users with correct values", function()
			expect(result[1]).toEqual({
				displayName = expect.any("string"),
				gameId = expect.any("string"),
				id = "40",
				lastLocation = expect.any("string"),
				lastOnline = expect.any("string"),
				placeId = expect.any("number"),
				rootPlaceId = expect.any("number"),
				thumbnail = "rbxthumb://type=Avatar&id=40&w=352&h=352",
				universeId = expect.any("number"),
				userId = expect.any("number"),
				username = "username40",
				userPresenceType = EnumPresenceType.Offline,
			})
			expect(result[2]).toEqual({
				displayName = expect.any("string"),
				gameId = expect.any("string"),
				id = "39",
				lastLocation = expect.any("string"),
				lastOnline = expect.any("string"),
				placeId = expect.any("number"),
				rootPlaceId = expect.any("number"),
				thumbnail = "rbxthumb://type=Avatar&id=39&w=352&h=352",
				universeId = expect.any("number"),
				userId = expect.any("number"),
				username = "username39",
				userPresenceType = EnumPresenceType.Offline,
			})
			expect(result[3]).toEqual({
				displayName = expect.any("string"),
				gameId = expect.any("string"),
				id = "38",
				lastLocation = expect.any("string"),
				lastOnline = expect.any("string"),
				placeId = expect.any("number"),
				rootPlaceId = expect.any("number"),
				thumbnail = "rbxthumb://type=Avatar&id=38&w=352&h=352",
				universeId = expect.any("number"),
				userId = expect.any("number"),
				username = "username38",
				userPresenceType = EnumPresenceType.Online,
			})
			expect(result[4]).toEqual({
				displayName = expect.any("string"),
				gameId = expect.any("string"),
				id = "37",
				lastLocation = expect.any("string"),
				lastOnline = expect.any("string"),
				placeId = expect.any("number"),
				rootPlaceId = expect.any("number"),
				thumbnail = "rbxthumb://type=Avatar&id=37&w=352&h=352",
				universeId = expect.any("number"),
				userId = expect.any("number"),
				username = "username37",
				userPresenceType = EnumPresenceType.InGame,
			})
			expect(result[5]).toEqual({
				displayName = expect.any("string"),
				gameId = expect.any("string"),
				id = "36",
				lastLocation = expect.any("string"),
				lastOnline = expect.any("string"),
				placeId = expect.any("number"),
				rootPlaceId = expect.any("number"),
				thumbnail = "rbxthumb://type=Avatar&id=36&w=352&h=352",
				universeId = expect.any("number"),
				userId = expect.any("number"),
				username = "username36",
				userPresenceType = EnumPresenceType.InStudio,
			})

			expect(result).toHaveLength(5)
		end)
	end)

	describe("GIVEN a user with no friends", function()
		local result = mapToUsers(baseTestStates.noFriends)("test")

		it("SHOULD return an empty table", function()
			expect(result).toEqual({})
		end)
	end)

	describe("GIVEN a user with many friends", function()
		local result = mapToUsers(baseTestStates.manyFriends)("test")

		it("SHOULD return all friends", function()
			expect(result).toHaveLength(40)
		end)
	end)

	describe("GIVEN a state where isTest is set to true", function()
		local result =
			mapToUsers(llama.Dictionary.join(baseTestStates.smallNumbersOfFriends, { isTest = true }))("test")

		it("SHOULD return user with empty thumbnail property", function()
			expect(result[1].thumbnail).toBe("")
			expect(result[2].thumbnail).toBe("")
			expect(result[3].thumbnail).toBe("")
			expect(result[4].thumbnail).toBe("")
		end)
	end)
end)
