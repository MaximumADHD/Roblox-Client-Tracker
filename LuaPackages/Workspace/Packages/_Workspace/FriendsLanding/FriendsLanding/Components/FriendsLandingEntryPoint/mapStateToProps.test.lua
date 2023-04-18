local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local getBaseTestStates = require(FriendsLanding.TestHelpers.getBaseTestStates)

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local getFFlagFriendsLandingInactiveFriendsEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingInactiveFriendsEnabled)

local mapStateToProps = require(script.Parent.mapStateToProps)

describe("mapStateToProps", function()
	local manyFriendsState = getBaseTestStates().manyFriends

	it("SHOULD return a function", function()
		expect(mapStateToProps).toEqual(expect.any("function"))
	end)

	describe("WHEN called with manyFriends", function()
		local returnValue = mapStateToProps(manyFriendsState)

		it("SHOULD return a table", function()
			expect(returnValue).toEqual(expect.any("table"))
		end)

		it("SHOULD return localUser with correct id", function()
			expect(returnValue.localUserId).toBe("test")
		end)

		it("SHOULD return screenSize with correct value", function()
			expect(returnValue.screenSize).toBe(Vector2.new(1000, 100))
		end)

		if getFFlagFriendsLandingInactiveFriendsEnabled() then
			it("SHOULD return inactiveFriendsNetworkRequestStatus with correct value", function()
				expect(returnValue.inactiveFriendsNetworkRequestStatus).toBe("Done")
			end)
		end

		it("SHOULD return friendRequestCount with correct value", function()
			expect(returnValue.friendRequestCount).toBe(12)
		end)

		it("SHOULD return unreadConversationCount with correct value", function()
			expect(returnValue.totalFriendCount).toBe(40)
		end)
	end)

	describe("WHEN called with empty state", function()
		local emptyState = if getFFlagFriendsLandingInactiveFriendsEnabled()
			then {
				LocalUserId = "a",
				FriendsLanding = {
					NetworkStatus = {
						["https://friends.roblox.com//v1/users/test/friends/inactive"] = "Done",
					},
				},
			}
			else {
				LocalUserId = "a",
			}

		local returnValue = mapStateToProps(emptyState)

		it("SHOULD return friendRequestCount as 0 by default", function()
			expect(returnValue.friendRequestCount).toBe(0)
		end)

		it("SHOULD return totalFriendCount as 0 by default", function()
			expect(returnValue.totalFriendCount).toBe(0)
		end)
	end)
end)
