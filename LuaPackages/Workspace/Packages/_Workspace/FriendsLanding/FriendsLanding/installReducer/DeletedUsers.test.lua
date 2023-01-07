local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local reducer = require(script.Parent.DeletedUsers)

local users = {
	{
		id = "userId1",
		name = "name1",
		displayName = "displayName1",
		isDeleted = false,
	},
	{
		id = "userId2",
		name = "name2",
		displayName = "displayName2",
		isDeleted = true,
	},
}

describe("GIVEN state as nil", function()
	local state = {}
	local action = {
		type = "GetFriendsFromUserId_Succeeded",
		responseBody = {
			data = users,
		},
	}

	it("SHOULD add users to the reducer", function()
		local newState = reducer(state, action)
		expect(newState).toEqual({
			["userId1"] = false,
			["userId2"] = true,
		})
	end)
end)
