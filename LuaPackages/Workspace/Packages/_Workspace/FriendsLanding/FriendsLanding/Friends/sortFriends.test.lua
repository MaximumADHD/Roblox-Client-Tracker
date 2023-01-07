local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local sortFriends = require(script.Parent.sortFriends)

local friends = {
	{ displayName = "h", username = "h" },
	{ displayName = "q", username = "q" },
	{ displayName = "c", username = "c" },
	{ displayName = "y", username = "y" },
	{ displayName = "a", username = "a" },
	{ displayName = "l", username = "l" },
}

local sortedFriends = {
	{ displayName = "a", username = "a" },
	{ displayName = "c", username = "c" },
	{ displayName = "h", username = "h" },
	{ displayName = "l", username = "l" },
	{ displayName = "q", username = "q" },
	{ displayName = "y", username = "y" },
}

local friendsSameDisplayName = {
	{ displayName = "bc", username = "ac" },
	{ displayName = "a", username = "ba" },
	{ displayName = "l", username = "xy" },
	{ displayName = "j", username = "ac" },
	{ displayName = "f", username = "ac" },
	{ displayName = "l", username = "tk" },
	{ displayName = "Ba", username = "ac" },
	{ displayName = "az", username = "ac" },
	{ displayName = "t", username = "ac" },
	{ displayName = "a", username = "ac" },
}

local sortedFriendsSameDisplayName = {
	{ displayName = "a", username = "ac" },
	{ displayName = "a", username = "ba" },
	{ displayName = "az", username = "ac" },
	{ displayName = "Ba", username = "ac" },
	{ displayName = "bc", username = "ac" },
	{ displayName = "f", username = "ac" },
	{ displayName = "j", username = "ac" },
	{ displayName = "l", username = "tk" },
	{ displayName = "l", username = "xy" },
	{ displayName = "t", username = "ac" },
}

describe("sortFriends", function()
	it("SHOULD return friends in alphabetical order by display name", function(c)
		local filteredFriends = sortFriends(friends)

		expect(filteredFriends).toEqual(sortedFriends)
	end)

	it("SHOULD sort users by username if display name ends up needing a tie breaker", function(c)
		local filteredFriends = sortFriends(friendsSameDisplayName)

		expect(filteredFriends).toEqual(sortedFriendsSameDisplayName)
	end)

	it("SHOULD cover cases where one userName is capitalised and the other not", function(c)
		local twoFriendsSameDisplayName = {
			{ displayName = "a", username = "Z" },
			{ displayName = "a", username = "a" },
		}
		local expectedResult = {
			{ displayName = "a", username = "a" },
			{ displayName = "a", username = "Z" },
		}

		local filteredFriends = sortFriends(twoFriendsSameDisplayName)

		expect(filteredFriends).toEqual(expectedResult)
	end)
end)
