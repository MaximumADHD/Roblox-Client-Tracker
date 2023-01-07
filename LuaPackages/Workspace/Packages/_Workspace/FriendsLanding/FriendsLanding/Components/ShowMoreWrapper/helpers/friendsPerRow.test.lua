local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local friendsPerRow = require(script.Parent.friendsPerRow)

describe("friendsPerRow", function()
	it("SHOULD return how many new friends fit based on rows and friends per row", function()
		local props = {
			width = 400,
			itemSize = 100,
		}

		expect(friendsPerRow(props)).toBe(4)
	end)

	it("SHOULD round down for width / item size", function()
		local props = {
			width = 400,
			itemSize = 85,
		}

		expect(friendsPerRow(props)).toBe(4)
	end)

	it("SHOULD never go below minimum friends per row", function()
		local props = {
			width = 300,
			itemSize = 175,
			minimumItemsPerRow = 3,
		}

		expect(friendsPerRow(props)).toBe(3)
	end)

	it("SHOULD never go below 2 friends per row by default", function()
		local props = {
			width = 300,
			itemSize = 175,
		}

		expect(friendsPerRow(props)).toBe(2)
	end)
end)
