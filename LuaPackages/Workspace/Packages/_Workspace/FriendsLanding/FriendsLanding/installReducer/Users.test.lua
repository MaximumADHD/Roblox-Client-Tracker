local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local reducer = require(script.Parent.Users)

type AnyAction = {
	type: string,
	[string]: any,
}

local user = {
	id = "userId",
	name = "name",
	displayName = "displayName",
	hasVerifiedBadge = false,
}

describe("GIVEN state as nil", function()
	local state

	beforeEach(function()
		state = nil
	end)

	describe("GIVEN legacy AddUser action", function()
		local action: AnyAction = {
			type = "AddUser",
			user = user,
		}

		it("SHOULD add the user to the reducer", function()
			local result = reducer(state, action)

			expect(result.byUserId).toEqual({
				userId = {
					id = "userId",
					username = "name",
					displayName = "displayName",
					hasVerifiedBadge = false,
				},
			})
		end)
	end)

	describe("GIVEN legacy AddUsers action", function()
		local action: AnyAction = {
			type = "AddUsers",
			users = { user },
		}

		it("SHOULD add the user to the reducer", function()
			local result = reducer(state, action)

			expect(result.byUserId).toEqual({
				userId = {
					id = "userId",
					username = "name",
					displayName = "displayName",
					hasVerifiedBadge = false,
				},
			})
		end)
	end)
end)
