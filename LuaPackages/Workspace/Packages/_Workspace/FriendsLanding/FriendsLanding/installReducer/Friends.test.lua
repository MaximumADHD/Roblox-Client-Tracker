local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local FriendsReducer = require(script.Parent.Friends)

type AnyAction = {
	type: string,
	[string]: any,
}

local reducer = FriendsReducer("localUserId")

local friend = {
	isFriend = true,
	id = "friendId",
	name = "name",
	displayName = "displayName",
	hasVerifiedBadge = false,
}

local notFriend = {
	isFriend = false,
	id = "notFriendId",
	name = "name",
	displayName = "displayName",
	hasVerifiedBadge = false,
}

describe("GIVEN state as nil", function()
	local state

	beforeEach(function()
		state = nil
	end)

	describe("GIVEN legacy AddUser action with friend", function()
		local action: AnyAction = {
			type = "AddUser",
			user = friend,
		}

		local result = reducer(state, action)

		it("SHOULD add the friendship to both users stores", function()
			expect(result.byUserId).toEqual({
				localUserId = {
					friend.id,
				},
				[friend.id] = { "localUserId" },
			})
		end)
	end)

	describe("GIVEN legacy AddUsers action with both users", function()
		local action: AnyAction = {
			type = "AddUsers",
			users = { friend, notFriend },
		}

		local result = reducer(state, action)

		it("SHOULD add the friendship to both users stores", function()
			expect(result.byUserId).toEqual({
				localUserId = {
					friend.id,
				},
				[friend.id] = { "localUserId" },
			})
		end)
	end)

	describe("GIVEN legacy SetFriendRequestsCount action", function()
		local action: AnyAction = {
			type = "SetFriendRequestsCount",
			count = 10,
		}

		local result = reducer(state, action)

		it("SHOULD update receivedCount to value send", function()
			expect(result.requests.receivedCount).toEqual(10)
		end)
	end)
end)
