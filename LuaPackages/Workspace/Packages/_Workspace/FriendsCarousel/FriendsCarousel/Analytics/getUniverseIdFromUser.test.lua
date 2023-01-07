local FriendsCarousel = script.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local getUniverseIdFromUser = require(script.Parent.getUniverseIdFromUser)
local LocalTypes = require(FriendsCarousel.Common.LocalTypes)

describe("getUniverseIdFromUser", function()
	it("SHOULD return nil if isFriendWithUser is false", function()
		local testUser: LocalTypes.User = {
			id = "89",
			displayName = "test",
			isFriendWithUser = false,
			universeId = "universeIdTest",
		} :: any
		jestExpect(getUniverseIdFromUser(testUser)).toBeNil()
	end)

	it("SHOULD return nil if universeId is nil", function()
		local testUser: LocalTypes.User = {
			id = "89",
			displayName = "test",
			isFriendWithUser = true,
		} :: any
		jestExpect(getUniverseIdFromUser(testUser)).toBeNil()
	end)

	it("SHOULD return correct universeId otherwise", function()
		local testUser: LocalTypes.User = {
			id = "89",
			displayName = "test",
			isFriendWithUser = true,
			universeId = "universeIdTest",
		} :: any
		jestExpect(getUniverseIdFromUser(testUser)).toBe("universeIdTest")
	end)
end)
