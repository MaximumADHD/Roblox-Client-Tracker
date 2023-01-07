local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local friendsPerLoadGroup = require(script.Parent.friendsPerLoadGroup)

describe("friendsPerLoadGroup", function()
	it("SHOULD return how many new friends fit based on rows and friends per row", function()
		local state = {
			width = 200,
		}

		local props = {
			itemSize = 100,
			visibleRows = 3,
		}

		expect(friendsPerLoadGroup(state, props)).toBe(6)
	end)

	it("SHOULD round down for width / item size", function()
		local state = {
			width = 200,
		}

		local props = {
			itemSize = 75,
			visibleRows = 5,
		}

		expect(friendsPerLoadGroup(state, props)).toBe(10)
	end)

	it("SHOULD never go below 2 friends per row by default", function()
		local state = {
			width = 336,
		}

		local props = {
			itemSize = 175,
			visibleRows = 6,
		}

		expect(friendsPerLoadGroup(state, props)).toBe(12)
	end)

	it("SHOULD never go below 2 friends per row", function()
		local state = {
			width = 336,
		}

		local props = {
			itemSize = 175,
			visibleRows = 6,
			minimumItemsPerRow = 3,
		}

		expect(friendsPerLoadGroup(state, props)).toBe(18)
	end)
end)
