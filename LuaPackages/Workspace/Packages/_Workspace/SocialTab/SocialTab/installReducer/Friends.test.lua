local SocialTab = script:FindFirstAncestor("SocialTab")

local dependencies = require(SocialTab.dependencies)
local llama = dependencies.llama

local devDependencies = require(SocialTab.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local reducer = require(script.Parent.Friends)

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
	local state = nil

	describe("GIVEN legacy AddUser action with friend", function()
		local action = {
			type = "AddUser",
			user = friend,
		}

		local result = reducer(state, action)

		it("SHOULD add the friend to the local user's friends list", function()
			expect(llama.Dictionary.equals(result.byUserId.localUserId, {
				friend.id,
			})).toBe(true)
		end)

		it("SHOULD add the local user to the friend's friends list", function()
			expect(llama.Dictionary.equals(result.byUserId.friendId, {
				"localUserId",
			})).toBe(true)
		end)
	end)

	describe("GIVEN legacy AddUsers action with both users", function()
		local action = {
			type = "AddUsers",
			users = { friend, notFriend },
		}

		local result = reducer(state, action)

		it("SHOULD only add the friend to the local user's friends list", function()
			expect(llama.Dictionary.equals(result.byUserId.localUserId, {
				friend.id,
			})).toBe(true)
		end)

		it("SHOULD add the local user to the friend's friends list", function()
			expect(llama.Dictionary.equals(result.byUserId.friendId, {
				"localUserId",
			})).toBe(true)
		end)

		it("SHOULD NOT add the local user to the notFriend's friends list", function()
			expect(result.byUserId.notFriendId).toBeNil()
		end)
	end)
end)
