local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local UserFollowers = require(script.Parent.UserFollowers)

local function mockGetUserFollowersAction(response)
	return {
		type = "GetUserFollowers_Succeeded",
		responseBody = response,
	}
end

describe("Default behaviors", function()
	it("should be empty by default", function()
		local oldState = UserFollowers(nil, {})
		expect(oldState).toEqual({})
	end)

	it("should be unchanged by other actions", function()
		local oldState = UserFollowers(nil, {})
		local newState = UserFollowers(oldState, { responseBody = false })
		expect(oldState).toBe(newState)
	end)
end)

describe("GetUserFollowers.Succeeded", function()
	it("should update state with new user entry", function()
		local oldState = {}
		local newState = UserFollowers(
			oldState,
			mockGetUserFollowersAction({
				data = { { id = "1234" } },
			})
		)

		expect(newState).toEqual({
			["1234"] = true,
		})
	end)

	it("should update state with an existing user entry and removing entry", function()
		local oldState = {
			["123"] = true,
			["456"] = true,
		}

		local newState =
			UserFollowers(oldState, mockGetUserFollowersAction({ data = { { id = "123" }, { id = "789" } } }))

		expect(newState).toEqual({
			["123"] = true,
			["789"] = true,
		})
	end)
end)
