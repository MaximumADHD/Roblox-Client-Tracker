local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local IsUserFollowing = require(script.Parent.IsUserFollowing)

local function mockGetUserIsUserFollowingAction(response)
	return {
		type = "GetFollowingExists_Succeeded",
		responseBody = response,
	}
end

describe("Default behaviors", function()
	it("SHOULD be empty by default", function()
		local oldState = IsUserFollowing(nil, {})

		expect(oldState).toEqual({})
	end)

	it("SHOULD be unchanged by other actions", function()
		local oldState = IsUserFollowing(nil, {})
		local newState = IsUserFollowing(oldState, { count = 5 })

		expect(oldState).toBe(newState)
	end)
end)

describe("GetUserIsUserFollowingSucceeded", function()
	it("SHOULD update state with new user entries", function()
		local newState = IsUserFollowing(
			{},
			mockGetUserIsUserFollowingAction({
				followings = {
					{
						isFollowed = false,
						isFollowing = true,
						userId = 123,
					},
					{
						isFollowed = true,
						isFollowing = false,
						userId = 456,
					},
				},
			})
		)
		expect(newState).toEqual({
			["123"] = {
				isFollowed = false,
				isFollowing = true,
			},
			["456"] = {
				isFollowed = true,
				isFollowing = false,
			},
		})
	end)

	it("SHOULD update existing fields state with new user entries", function()
		local newState = IsUserFollowing(
			{
				["456"] = {
					isFollowed = false,
					isFollowing = true,
				},
				["987"] = {
					isFollowed = false,
					isFollowing = true,
				},
			},
			mockGetUserIsUserFollowingAction({
				followings = {
					{
						isFollowed = false,
						isFollowing = true,
						userId = 123,
					},
					{
						isFollowed = true,
						isFollowing = false,
						userId = 456,
					},
				},
			})
		)

		expect(newState).toEqual({
			["123"] = {
				isFollowed = false,
				isFollowing = true,
			},
			["456"] = {
				isFollowed = true,
				isFollowing = false,
			},
			["987"] = {
				isFollowed = false,
				isFollowing = true,
			},
		})
	end)
end)
