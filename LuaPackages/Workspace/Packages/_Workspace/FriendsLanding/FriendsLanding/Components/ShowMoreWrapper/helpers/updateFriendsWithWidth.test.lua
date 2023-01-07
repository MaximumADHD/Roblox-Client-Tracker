local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local filterStates = require(FriendsLanding.Friends.filterStates)

local dependencies = require(FriendsLanding.dependencies)
local llama = dependencies.llama

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local updateFriendsWithWidth = require(script.Parent.updateFriendsWithWidth)

describe("updateFriendsWithWidth", function()
	it("SHOULD return newFriendsToAdd count if larger than the current filterFriendCounts", function()
		local filterFriendCounts = llama.Dictionary.map(filterStates, function()
			return 6
		end)
		local state = { width = 200, filterFriendCounts = filterFriendCounts }
		local props = { itemSize = 100, visibleRows = 3, filter = filterStates.All }

		local result = updateFriendsWithWidth(300)(state, props)

		expect(result.filterFriendCounts.All).toBe(9)
		expect(result).toEqual({
			filterFriendCounts = llama.Dictionary.map(filterFriendCounts, function()
				return 9
			end),
			width = 300,
		})
	end)

	it("SHOULD return filterFriendCounts count if larger than the current newFriendsToAdd", function()
		local filterFriendCounts = llama.Dictionary.map(filterStates, function()
			return 6
		end)
		local state = { width = 100, filterFriendCounts = filterFriendCounts }
		local props = { itemSize = 100, visibleRows = 3, filter = filterStates.All }

		local result = updateFriendsWithWidth(100)(state, props)

		expect(result.filterFriendCounts.All).toBe(6)
		expect(result).toEqual({
			filterFriendCounts = llama.Dictionary.map(filterFriendCounts, function()
				return 6
			end),
			width = 100,
		})
	end)
end)
