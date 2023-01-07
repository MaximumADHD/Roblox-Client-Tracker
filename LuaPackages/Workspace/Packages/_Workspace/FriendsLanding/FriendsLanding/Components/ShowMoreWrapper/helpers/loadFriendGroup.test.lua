local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local filterStates = require(FriendsLanding.Friends.filterStates)

local dependencies = require(FriendsLanding.dependencies)
local llama = dependencies.llama

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local loadFriendGroup = require(script.Parent.loadFriendGroup)

describe("loadFriendGroup", function()
	it("SHOULD return newFriendsToAdd count", function()
		local filterFriendCounts = llama.Dictionary.map(filterStates, function()
			return 0
		end)
		local state = { width = 200, filterFriendCounts = filterFriendCounts }
		local props = { itemSize = 100, visibleRows = 3, filter = filterStates.All }

		local result = loadFriendGroup(state, props)

		filterFriendCounts.All = 6
		expect(result.filterFriendCounts[props.filter]).toBe(6)
		expect(result).toEqual({
			filterFriendCounts = filterFriendCounts,
		})
	end)

	it("SHOULD return add current filterFriendCounts to new count", function()
		local filterFriendCounts = llama.Dictionary.map(filterStates, function()
			return 4
		end)
		local state = { width = 200, filterFriendCounts = filterFriendCounts }
		local props = { itemSize = 100, visibleRows = 3, filter = filterStates.All }

		local result = loadFriendGroup(state, props)

		filterFriendCounts.All = 10
		expect(result.filterFriendCounts[props.filter]).toBe(10)
		expect(result).toEqual({
			filterFriendCounts = filterFriendCounts,
		})
	end)
end)
