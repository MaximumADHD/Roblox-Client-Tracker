local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local limitFriends = require(script.Parent.limitFriends)

describe("limitFriends", function()
	local tiles = {
		{ displayName = "h", username = "h" },
		{ displayName = "q", username = "q" },
		{ displayName = "c", username = "c" },
		{ displayName = "y", username = "y" },
		{ displayName = "a", username = "a" },
		{ displayName = "l", username = "l" },
	}

	it("SHOULD return friends up to limit", function()
		local expectedTiles = {
			{ displayName = "h", username = "h" },
			{ displayName = "q", username = "q" },
		}
		local filteredTiles = limitFriends(2, tiles)

		expect(filteredTiles).toHaveLength(2)
		expect(filteredTiles).toEqual(expectedTiles)
	end)

	it("SHOULD return all friends if limit is higher than total length", function()
		local filteredTiles = limitFriends(#tiles + 2, tiles)

		expect(filteredTiles).toHaveLength(#tiles)
		expect(filteredTiles).toEqual(tiles)
	end)
end)
